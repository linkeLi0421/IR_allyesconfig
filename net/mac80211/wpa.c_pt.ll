; ModuleID = '/llk/IR_all_yes/net/mac80211/wpa.c_pt.bc'
source_filename = "../net/mac80211/wpa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sk_buff = type { %union.anon, %union.anon.107, %union.anon.108, [48 x i8], %union.anon.109, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.111, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.107 = type { ptr }
%union.anon.108 = type { i64 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, ptr }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.113, i32, i32, i32, i16, i16, %union.anon.115, i32, %union.anon.116, %union.anon.117, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.113 = type { i32 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ieee80211_tx_data = type { ptr, %struct.sk_buff_head, ptr, ptr, ptr, ptr, %struct.ieee80211_tx_rate, i32 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.ieee80211_key = type { ptr, ptr, ptr, %struct.list_head, i32, %union.anon.140, %struct.anon.149, i32, %struct.ieee80211_key_conf }
%struct.list_head = type { ptr, ptr }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { %struct.spinlock, %struct.tkip_ctx, [16 x %struct.tkip_ctx_rx], i32 }
%struct.tkip_ctx = type { [5 x i16], i32, i32 }
%struct.tkip_ctx_rx = type { %struct.tkip_ctx, i32, i16 }
%struct.anon.149 = type { ptr, ptr, i32 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.124, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.124 = type { i32, i16 }
%struct.ieee80211_rx_data = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %union.anon.199 }
%union.anon.199 = type { %struct.anon.200 }
%struct.anon.200 = type { i32, i16 }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.151, %struct.anon.185, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.104, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.104 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.105 }
%union.anon.105 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.151 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.anon.185 = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.126, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.126 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.127] }
%struct.anon.127 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.local_debugfsdentries, i8, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
%struct.fq = type { ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.airtime_sched_info = type { %struct.spinlock, %struct.rb_root_cached, ptr, %struct.list_head, i64, i64, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rhltable = type { %struct.rhashtable }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.136, i32 }
%union.anon.136 = type { ptr }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.local_debugfsdentries = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.137, [17 x i16], %struct.anon.138, %struct.anon.139, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, ptr, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.ieee80211_sta_rx_stats = type { i32, i32, i32, i32, i32, i32, i8, [4 x i8], i32, %struct.u64_stats_sync, i64, [17 x i64] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.anon.137 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.138 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.139 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
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
%struct.ieee80211_mmie = type { i8, i8, i16, [6 x i8], [8 x i8] }
%struct.ieee80211_mmie_16 = type { i8, i8, i16, [6 x i8], [16 x i8] }
%struct.ieee80211_cipher_scheme = type { i32, i16, i8, i8, i8, i8, i8, i8, i8 }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/mac80211/wpa.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"mmic: not enough head/tail (%d/%d,%d/%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 40960, i64 49152, i64 53248]
@__sancov_gen_cov_switch_values.3 = internal global [9 x i64] [i64 7, i64 8, i64 4, i64 7, i64 11, i64 15, i64 20, i64 21, i64 127]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 16, i64 40960, i64 49152, i64 53248]
@__sancov_gen_cov_switch_values.5 = internal global [9 x i64] [i64 7, i64 8, i64 4, i64 7, i64 11, i64 15, i64 20, i64 21, i64 127]
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [22 x i8] c"../net/mac80211/wpa.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 70, i32 6 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_tx_h_michael_mic_add(ptr nocapture noundef readonly %tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %data2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %key3 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %tx, i32 0, i32 5
  %4 = ptrtoint ptr %key3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %key3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cipher = getelementptr inbounds %struct.ieee80211_key, ptr %5, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cipher, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %7)
  %cmp.not = icmp eq i32 %7, 1027074
  br i1 %cmp.not, label %lor.lhs.false5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %9)
  %cmp6 = icmp ult i32 %9, 24
  br i1 %cmp6, label %lor.lhs.false5.cleanup_crit_edge, label %lor.lhs.false7

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %3, align 2
  %12 = and i16 %11, 19456
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %12)
  %cmp.i = icmp eq i16 %12, 2048
  br i1 %cmp.i, label %if.end, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  %call10 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %11) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call10)
  %cmp12 = icmp ult i32 %9, %call10
  br i1 %cmp12, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %3, i32 %call10
  %sub = sub i32 %9, %call10
  %13 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cb.i, align 8
  %and = and i32 %14, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end14.if.end21_crit_edge, label %if.then20, !prof !14

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %hw_key = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %15 = ptrtoint ptr %hw_key to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %hw_key, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end14.if.end21_crit_edge
  %hw_key22 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %16 = ptrtoint ptr %hw_key22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_key22, align 4
  %tobool23.not = icmp eq ptr %17, null
  br i1 %tobool23.not, label %if.end21.if.end36_crit_edge, label %land.lhs.true

if.end21.if.end36_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end21
  %and25 = and i32 %14, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %lor.lhs.false27, label %land.lhs.true.land.lhs.true29_crit_edge

land.lhs.true.land.lhs.true29_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true29

lor.lhs.false27:                                  ; preds = %land.lhs.true
  %local = getelementptr inbounds %struct.ieee80211_tx_data, ptr %tx, i32 0, i32 2
  %18 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %local, align 4
  %arrayidx.i.i = getelementptr %struct.ieee80211_hw, ptr %19, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx.i.i, align 4
  %22 = and i32 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not = icmp eq i32 %22, 0
  br i1 %tobool.i.not, label %lor.lhs.false27.if.end36_crit_edge, label %lor.lhs.false27.land.lhs.true29_crit_edge

lor.lhs.false27.land.lhs.true29_crit_edge:        ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true29

lor.lhs.false27.if.end36_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true29:                                  ; preds = %lor.lhs.false27.land.lhs.true29_crit_edge, %land.lhs.true.land.lhs.true29_crit_edge
  %23 = ptrtoint ptr %key3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %key3, align 4
  %flags32 = getelementptr inbounds %struct.ieee80211_key, ptr %24, i32 0, i32 8, i32 6
  %25 = ptrtoint ptr %flags32 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %flags32, align 8
  %27 = and i16 %26, 260
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool34.not = icmp eq i16 %27, 0
  br i1 %tobool34.not, label %land.lhs.true29.cleanup_crit_edge, label %land.lhs.true29.if.end36_crit_edge

land.lhs.true29.if.end36_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true29.cleanup_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %land.lhs.true29.if.end36_crit_edge, %lor.lhs.false27.if.end36_crit_edge, %if.end21.if.end36_crit_edge
  %spec.select = phi i32 [ 8, %land.lhs.true29.if.end36_crit_edge ], [ 8, %lor.lhs.false27.if.end36_crit_edge ], [ 12, %if.end21.if.end36_crit_edge ]
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not.i = icmp eq i32 %29, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %do.end

skb_tailroom.exit:                                ; preds = %if.end36
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %30 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %spec.select)
  %cmp42 = icmp slt i32 %sub.ptr.sub.i, %spec.select
  br i1 %cmp42, label %skb_tailroom.exit.cond.false.i155_crit_edge, label %lor.rhs

skb_tailroom.exit.cond.false.i155_crit_edge:      ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = ptrtoint ptr %3 to i32
  br label %cond.false.i155

lor.rhs:                                          ; preds = %skb_tailroom.exit
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %34 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i140 = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i141 = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i142 = sub i32 %sub.ptr.lhs.cast.i140, %sub.ptr.rhs.cast.i141
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i142)
  %cmp45 = icmp ult i32 %sub.ptr.sub.i142, 8
  br i1 %cmp45, label %lor.rhs.cond.false.i155_crit_edge, label %if.end76, !prof !15

lor.rhs.cond.false.i155_crit_edge:                ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i155

do.end:                                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %head.i144 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %36 = ptrtoint ptr %head.i144 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i144, align 8
  %sub.ptr.lhs.cast.i145 = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i146 = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i147 = sub i32 %sub.ptr.lhs.cast.i145, %sub.ptr.rhs.cast.i146
  br label %skb_tailroom.exit157

cond.false.i155:                                  ; preds = %lor.rhs.cond.false.i155_crit_edge, %skb_tailroom.exit.cond.false.i155_crit_edge
  %sub.ptr.lhs.cast.i145161.pre-phi = phi i32 [ %.pre, %skb_tailroom.exit.cond.false.i155_crit_edge ], [ %sub.ptr.lhs.cast.i140, %lor.rhs.cond.false.i155_crit_edge ]
  %head.i144160 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %38 = ptrtoint ptr %head.i144160 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i144160, align 8
  %sub.ptr.rhs.cast.i146162 = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i147163 = sub i32 %sub.ptr.lhs.cast.i145161.pre-phi, %sub.ptr.rhs.cast.i146162
  %40 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %end.i, align 4
  %42 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i152 = ptrtoint ptr %41 to i32
  %sub.ptr.rhs.cast.i153 = ptrtoint ptr %43 to i32
  %sub.ptr.sub.i154 = sub i32 %sub.ptr.lhs.cast.i152, %sub.ptr.rhs.cast.i153
  br label %skb_tailroom.exit157

skb_tailroom.exit157:                             ; preds = %cond.false.i155, %do.end
  %sub.ptr.sub.i147164 = phi i32 [ %sub.ptr.sub.i147163, %cond.false.i155 ], [ %sub.ptr.sub.i147, %do.end ]
  %cond.i156 = phi i32 [ %sub.ptr.sub.i154, %cond.false.i155 ], [ 0, %do.end ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 74, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %sub.ptr.sub.i147164, i32 noundef 8, i32 noundef %cond.i156, i32 noundef %spec.select) #8
  br label %cleanup

if.end76:                                         ; preds = %lor.rhs
  %call77 = tail call ptr @skb_put(ptr noundef %1, i32 noundef 8) #8
  %44 = ptrtoint ptr %key3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %key3, align 4
  %flags80 = getelementptr inbounds %struct.ieee80211_key, ptr %45, i32 0, i32 8, i32 6
  %46 = ptrtoint ptr %flags80 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %flags80, align 8
  %48 = and i16 %47, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool83.not = icmp eq i16 %48, 0
  br i1 %tobool83.not, label %if.end85, label %if.then84

if.then84:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %call77 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 0, ptr %call77, align 1
  br label %cleanup

if.end85:                                         ; preds = %if.end76
  %key88 = getelementptr inbounds %struct.ieee80211_key, ptr %45, i32 0, i32 8, i32 8
  %arrayidx = getelementptr [0 x i8], ptr %key88, i32 0, i32 16
  tail call void @michael_mic(ptr noundef %arrayidx, ptr noundef %3, ptr noundef %add.ptr, i32 noundef %sub, ptr noundef %call77) #8
  %50 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cb.i, align 8
  %and90 = and i32 %51, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end85.cleanup_crit_edge, label %if.then98, !prof !14

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then98:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %call77 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %call77, align 1
  %inc = add i8 %53, 1
  store i8 %inc, ptr %call77, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %if.end85.cleanup_crit_edge, %if.then84, %skb_tailroom.exit157, %land.lhs.true29.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %skb_tailroom.exit157 ], [ 0, %if.then84 ], [ 0, %lor.lhs.false7.cleanup_crit_edge ], [ 0, %lor.lhs.false5.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true29.cleanup_crit_edge ], [ 0, %if.then98 ], [ 0, %if.end85.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @michael_mic(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_rx_h_michael_mic_verify(ptr nocapture noundef readonly %rx) local_unnamed_addr #0 align 64 {
entry:
  %mic = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mic) #8
  %skb1 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 1
  %0 = ptrtoint ptr %mic to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %mic, align 8
  %1 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %skb1, align 4
  %data2 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data2, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 2
  %7 = and i16 %6, 19456
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %7)
  %cmp.i = icmp eq i16 %7, 2048
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flag = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 24
  %8 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flag, align 8
  %and = and i32 %9, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end19, label %if.then4

if.then4:                                         ; preds = %if.end
  %and6 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then4.mic_fail_no_key_crit_edge

if.then4.mic_fail_no_key_crit_edge:               ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %mic_fail_no_key

if.end9:                                          ; preds = %if.then4
  %and11 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %land.lhs.true, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end9
  %key13 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 5
  %10 = ptrtoint ptr %key13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %key13, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true15

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true15:                                  ; preds = %land.lhs.true
  %cipher = getelementptr inbounds %struct.ieee80211_key, ptr %11, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cipher, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %13)
  %cmp = icmp eq i32 %13, 1027074
  br i1 %cmp, label %land.lhs.true15.update_iv_crit_edge, label %land.lhs.true15.cleanup_crit_edge

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true15.update_iv_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_iv

if.end19:                                         ; preds = %if.end
  %key20 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 5
  %14 = ptrtoint ptr %key20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %key20, align 4
  %tobool21.not = icmp eq ptr %15, null
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %lor.lhs.false

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end19
  %cipher24 = getelementptr inbounds %struct.ieee80211_key, ptr %15, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %cipher24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cipher24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %17)
  %cmp25.not = icmp ne i32 %17, 1027074
  %and28 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %or.cond = select i1 %cmp25.not, i1 true, i1 %tobool29.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end31

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %lor.lhs.false
  %sdata = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 3
  %18 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdata, align 4
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %19, i32 0, i32 59
  %20 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp32 = icmp eq i32 %21, 3
  br i1 %cmp32, label %land.lhs.true33, label %if.end31.if.end38_crit_edge

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

land.lhs.true33:                                  ; preds = %if.end31
  %keyidx = getelementptr inbounds %struct.ieee80211_key, ptr %15, i32 0, i32 8, i32 5
  %22 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %keyidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool36.not = icmp eq i8 %23, 0
  br i1 %tobool36.not, label %land.lhs.true33.if.end38_crit_edge, label %land.lhs.true33.cleanup_crit_edge

land.lhs.true33.cleanup_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true33.if.end38_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.end38:                                         ; preds = %land.lhs.true33.if.end38_crit_edge, %if.end31.if.end38_crit_edge
  %and40 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end38.mic_fail_crit_edge

if.end38.mic_fail_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %mic_fail

if.end43:                                         ; preds = %if.end38
  %call45 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %6) #11
  %len = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 6
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %add = add i32 %call45, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %add)
  %cmp46 = icmp ult i32 %25, %add
  br i1 %cmp46, label %if.end43.cleanup_crit_edge, label %if.end49

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end49:                                         ; preds = %if.end43
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 7
  %26 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not.i = icmp eq i32 %27, 0
  br i1 %tobool.i.not.i, label %if.end49.if.end54_crit_edge, label %cond.true.i

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

cond.true.i:                                      ; preds = %if.end49
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %2, i32 noundef %27) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.cleanup_crit_edge, label %cond.true.i.if.end54_crit_edge

cond.true.i.if.end54_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

cond.true.i.cleanup_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end54:                                         ; preds = %cond.true.i.if.end54_crit_edge, %if.end49.if.end54_crit_edge
  %28 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data2, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 %call45
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  %sub = sub i32 %31, %call45
  %sub58 = add i32 %sub, -8
  %32 = ptrtoint ptr %key20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %key20, align 4
  %key61 = getelementptr inbounds %struct.ieee80211_key, ptr %33, i32 0, i32 8, i32 8
  %arrayidx = getelementptr [0 x i8], ptr %key61, i32 0, i32 24
  call void @michael_mic(ptr noundef %arrayidx, ptr noundef %29, ptr noundef %add.ptr, i32 noundef %sub58, ptr noundef nonnull %mic) #8
  %add.ptr63 = getelementptr i8, ptr %add.ptr, i32 %sub58
  %call.i = call i32 @__crypto_memneq(ptr noundef nonnull %mic, ptr noundef %add.ptr63, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i.not, label %if.end67, label %if.end54.mic_fail_crit_edge

if.end54.mic_fail_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %mic_fail

if.end67:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %sub69 = add i32 %35, -8
  call void @skb_trim(ptr noundef %2, i32 noundef %sub69) #8
  br label %update_iv

update_iv:                                        ; preds = %if.end67, %land.lhs.true15.update_iv_crit_edge
  %36 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 9
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %key70 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 5
  %39 = ptrtoint ptr %key70 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %key70, align 4
  %security_idx = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 8
  %41 = ptrtoint ptr %security_idx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %security_idx, align 4
  %iv3273 = getelementptr %struct.ieee80211_key, ptr %40, i32 0, i32 5, i32 0, i32 2, i32 %42, i32 1
  %43 = ptrtoint ptr %iv3273 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %38, ptr %iv3273, align 4
  %iv16 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 9, i32 0, i32 1
  %44 = ptrtoint ptr %iv16 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %iv16, align 4
  %46 = load ptr, ptr %key70, align 4
  %47 = load i32, ptr %security_idx, align 4
  %iv1679 = getelementptr %struct.ieee80211_key, ptr %46, i32 0, i32 5, i32 0, i32 2, i32 %47, i32 2
  %48 = ptrtoint ptr %iv1679 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %45, ptr %iv1679, align 4
  br label %cleanup

mic_fail:                                         ; preds = %if.end54.mic_fail_crit_edge, %if.end38.mic_fail_crit_edge
  %hdr.0 = phi ptr [ %4, %if.end38.mic_fail_crit_edge ], [ %29, %if.end54.mic_fail_crit_edge ]
  %49 = ptrtoint ptr %key20 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %key20, align 4
  %mic_failures = getelementptr inbounds %struct.ieee80211_key, ptr %50, i32 0, i32 5, i32 0, i32 3
  %51 = ptrtoint ptr %mic_failures to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mic_failures, align 8
  %inc = add i32 %52, 1
  store i32 %inc, ptr %mic_failures, align 8
  br label %mic_fail_no_key

mic_fail_no_key:                                  ; preds = %mic_fail, %if.then4.mic_fail_no_key_crit_edge
  %hdr.1 = phi ptr [ %4, %if.then4.mic_fail_no_key_crit_edge ], [ %hdr.0, %mic_fail ]
  %sdata82 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 3
  %53 = ptrtoint ptr %sdata82 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sdata82, align 4
  %dev = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 8
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr.1, i32 0, i32 3
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr.1, i32 0, i32 2
  %57 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %addr1, align 4
  %59 = lshr i32 %58, 24
  %.lobit = and i32 %59, 1
  %60 = xor i32 %.lobit, 1
  %key87 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 5
  %61 = ptrtoint ptr %key87 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %key87, align 4
  %tobool88.not = icmp eq ptr %62, null
  br i1 %tobool88.not, label %mic_fail_no_key.cond.end_crit_edge, label %cond.true

mic_fail_no_key.cond.end_crit_edge:               ; preds = %mic_fail_no_key
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %mic_fail_no_key
  call void @__sanitizer_cov_trace_pc() #10
  %keyidx91 = getelementptr inbounds %struct.ieee80211_key, ptr %62, i32 0, i32 8, i32 5
  %63 = ptrtoint ptr %keyidx91 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %keyidx91, align 1
  %conv92 = sext i8 %64 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %mic_fail_no_key.cond.end_crit_edge
  %cond93 = phi i32 [ %conv92, %cond.true ], [ -1, %mic_fail_no_key.cond.end_crit_edge ]
  call void @cfg80211_michael_mic_failure(ptr noundef %56, ptr noundef %addr2, i32 noundef %60, i32 noundef %cond93, ptr noundef null, i32 noundef 2592) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %update_iv, %cond.true.i.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %land.lhs.true33.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %cond.end ], [ 0, %update_iv ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true15.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ 1, %land.lhs.true33.cleanup_crit_edge ], [ 1, %if.end43.cleanup_crit_edge ], [ 1, %cond.true.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mic) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_michael_mic_failure(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_tkip_encrypt(ptr noundef %tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ieee80211_tx_set_protected(ptr noundef %tx) #8
  %skbs = getelementptr inbounds %struct.ieee80211_tx_data, ptr %tx, i32 0, i32 1
  %key1.i = getelementptr inbounds %struct.ieee80211_tx_data, ptr %tx, i32 0, i32 5
  %local.i = getelementptr inbounds %struct.ieee80211_tx_data, ptr %tx, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %tkip_encrypt_skb.exit.for.cond_crit_edge, %entry
  %skb.0.in = phi ptr [ %skbs, %entry ], [ %skb.0, %tkip_encrypt_skb.exit.for.cond_crit_edge ]
  %0 = ptrtoint ptr %skb.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %skb.0 = load ptr, ptr %skb.0.in, align 4
  %cmp.not = icmp eq ptr %skb.0, %skbs
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %3 = ptrtoint ptr %key1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %key1.i, align 4
  %hw_key.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3, i32 28
  %5 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_key.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %land.lhs.true.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body
  %flags.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags.i, align 8
  %9 = and i16 %8, 34
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %land.lhs.true.i.tkip_encrypt_skb.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i.tkip_encrypt_skb.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tkip_encrypt_skb.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.if.end.i_crit_edge
  %..i = phi i32 [ 0, %land.lhs.true.i.if.end.i_crit_edge ], [ 4, %for.body.if.end.i_crit_edge ]
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %2, align 2
  %call10.i = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %12) #11
  %len11.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 6
  %13 = ptrtoint ptr %len11.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len11.i, align 4
  %sub.i = sub i32 %14, %call10.i
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 7
  %15 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %if.end.i.skb_tailroom.exit.i_crit_edge

if.end.i.skb_tailroom.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 17
  %17 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 16
  %19 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %if.end.i.skb_tailroom.exit.i_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %if.end.i.skb_tailroom.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %..i)
  %cmp.i = icmp slt i32 %cond.i.i, %..i
  br i1 %cmp.i, label %skb_tailroom.exit.i.tkip_encrypt_skb.exit.thread_crit_edge, label %lor.rhs.i

skb_tailroom.exit.i.tkip_encrypt_skb.exit.thread_crit_edge: ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tkip_encrypt_skb.exit.thread

lor.rhs.i:                                        ; preds = %skb_tailroom.exit.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 18
  %21 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i97.i = ptrtoint ptr %2 to i32
  %sub.ptr.rhs.cast.i98.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i99.i = sub i32 %sub.ptr.lhs.cast.i97.i, %sub.ptr.rhs.cast.i98.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i99.i)
  %cmp19.i = icmp ult i32 %sub.ptr.sub.i99.i, 8
  br i1 %cmp19.i, label %lor.rhs.i.tkip_encrypt_skb.exit.thread_crit_edge, label %if.end44.i, !prof !15

lor.rhs.i.tkip_encrypt_skb.exit.thread_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tkip_encrypt_skb.exit.thread

tkip_encrypt_skb.exit.thread:                     ; preds = %lor.rhs.i.tkip_encrypt_skb.exit.thread_crit_edge, %skb_tailroom.exit.i.tkip_encrypt_skb.exit.thread_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end44.i:                                       ; preds = %lor.rhs.i
  %call45.i = tail call ptr @skb_push(ptr noundef %skb.0, i32 noundef 8) #8
  %add.ptr.i = getelementptr i8, ptr %call45.i, i32 8
  %23 = call ptr @memmove(ptr %call45.i, ptr %add.ptr.i, i32 %call10.i)
  %add.ptr46.i = getelementptr i8, ptr %call45.i, i32 %call10.i
  %24 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_key.i, align 4
  %tobool48.not.i = icmp eq ptr %25, null
  br i1 %tobool48.not.i, label %if.end44.i.if.end56.i_crit_edge, label %land.lhs.true49.i

if.end44.i.if.end56.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.i

land.lhs.true49.i:                                ; preds = %if.end44.i
  %flags51.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %flags51.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flags51.i, align 8
  %28 = and i16 %27, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool54.not.i = icmp eq i16 %28, 0
  br i1 %tobool54.not.i, label %land.lhs.true49.i.if.end56.i_crit_edge, label %land.lhs.true49.i.tkip_encrypt_skb.exit_crit_edge

land.lhs.true49.i.tkip_encrypt_skb.exit_crit_edge: ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tkip_encrypt_skb.exit

land.lhs.true49.i.if.end56.i_crit_edge:           ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.i

if.end56.i:                                       ; preds = %land.lhs.true49.i.if.end56.i_crit_edge, %if.end44.i.if.end56.i_crit_edge
  %conf.i = getelementptr inbounds %struct.ieee80211_key, ptr %4, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %conf.i, i32 noundef 8) #8
  %call.i2.i.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef %conf.i) #8
  %call59.i = tail call ptr @ieee80211_tkip_add_iv(ptr noundef %add.ptr46.i, ptr noundef %conf.i, i64 noundef %call.i2.i.i) #8
  %29 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_key.i, align 4
  %tobool61.not.i = icmp eq ptr %30, null
  br i1 %tobool61.not.i, label %if.end63.i, label %if.end56.i.tkip_encrypt_skb.exit_crit_edge

if.end56.i.tkip_encrypt_skb.exit_crit_edge:       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tkip_encrypt_skb.exit

if.end63.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  %call64.i = tail call ptr @skb_put(ptr noundef %skb.0, i32 noundef 4) #8
  %31 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %local.i, align 4
  %wep_tx_ctx.i = getelementptr inbounds %struct.ieee80211_local, ptr %32, i32 0, i32 59
  %call65.i = tail call i32 @ieee80211_tkip_encrypt_data(ptr noundef %wep_tx_ctx.i, ptr noundef %4, ptr noundef %skb.0, ptr noundef %call59.i, i32 noundef %sub.i) #8
  br label %tkip_encrypt_skb.exit

tkip_encrypt_skb.exit:                            ; preds = %if.end63.i, %if.end56.i.tkip_encrypt_skb.exit_crit_edge, %land.lhs.true49.i.tkip_encrypt_skb.exit_crit_edge, %land.lhs.true.i.tkip_encrypt_skb.exit_crit_edge
  %retval.0.i = phi i32 [ %call65.i, %if.end63.i ], [ 0, %land.lhs.true.i.tkip_encrypt_skb.exit_crit_edge ], [ 0, %land.lhs.true49.i.tkip_encrypt_skb.exit_crit_edge ], [ 0, %if.end56.i.tkip_encrypt_skb.exit_crit_edge ]
  %cmp2 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp2, label %tkip_encrypt_skb.exit.cleanup_crit_edge, label %tkip_encrypt_skb.exit.for.cond_crit_edge

tkip_encrypt_skb.exit.for.cond_crit_edge:         ; preds = %tkip_encrypt_skb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

tkip_encrypt_skb.exit.cleanup_crit_edge:          ; preds = %tkip_encrypt_skb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %tkip_encrypt_skb.exit.cleanup_crit_edge, %tkip_encrypt_skb.exit.thread, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %tkip_encrypt_skb.exit.thread ], [ 0, %for.cond.cleanup_crit_edge ], [ 1, %tkip_encrypt_skb.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_set_protected(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_tkip_decrypt(ptr noundef %rx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 1
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %key1 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 5
  %4 = ptrtoint ptr %key1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %key1, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %3, align 2
  %call4 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %7) #11
  %8 = and i16 %7, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %8)
  %cmp.i = icmp eq i16 %8, 2048
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sta = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 4
  %9 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sta, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %sub = sub i32 %12, %call4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub)
  %cmp = icmp ult i32 %sub, 12
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i, label %if.end8.if.end13_crit_edge, label %cond.true.i

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

cond.true.i:                                      ; preds = %if.end8
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %14) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.cleanup_crit_edge, label %cond.true.i.if.end13_crit_edge

cond.true.i.if.end13_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

cond.true.i.cleanup_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %cond.true.i.if.end13_crit_edge, %if.end8.if.end13_crit_edge
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %flag = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %17 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flag, align 8
  %and = lshr i32 %18, 1
  %and.lobit = and i32 %and, 1
  %local = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 2
  %19 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %local, align 4
  %wep_rx_ctx = getelementptr inbounds %struct.ieee80211_local, ptr %20, i32 0, i32 60
  %add.ptr = getelementptr i8, ptr %16, i32 %call4
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %sub20 = sub i32 %22, %call4
  %23 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sta, align 4
  %addr = getelementptr inbounds %struct.sta_info, ptr %24, i32 0, i32 48, i32 1
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %16, i32 0, i32 2
  %security_idx = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 8
  %25 = ptrtoint ptr %security_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %security_idx, align 4
  %27 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 9
  %iv16 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 9, i32 0, i32 1
  %call24 = tail call i32 @ieee80211_tkip_decrypt_data(ptr noundef %wep_rx_ctx, ptr noundef %5, ptr noundef %add.ptr, i32 noundef %sub20, ptr noundef %addr, ptr noundef %addr1, i32 noundef %and.lobit, i32 noundef %26, ptr noundef %27, ptr noundef %iv16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %if.end27, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %if.end13
  %28 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flag, align 8
  %and29 = and i32 %29, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.then31, label %if.end27.if.end34_crit_edge

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  %sub33 = add i32 %31, -4
  tail call void @skb_trim(ptr noundef %1, i32 noundef %sub33) #8
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end27.if.end34_crit_edge
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %add.ptr36 = getelementptr i8, ptr %33, i32 8
  %34 = call ptr @memmove(ptr %add.ptr36, ptr %33, i32 %call4)
  %call38 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end13.cleanup_crit_edge, %cond.true.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end13.cleanup_crit_edge ], [ 1, %cond.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_tkip_decrypt_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_ccmp_encrypt(ptr noundef %tx, i32 noundef %mic_len) local_unnamed_addr #0 align 64 {
entry:
  %aad.i = alloca [32 x i8], align 2
  %b_0.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ieee80211_tx_set_protected(ptr noundef %tx) #8
  %skbs = getelementptr inbounds %struct.ieee80211_tx_data, ptr %tx, i32 0, i32 1
  %key1.i = getelementptr inbounds %struct.ieee80211_tx_data, ptr %tx, i32 0, i32 5
  %0 = getelementptr inbounds [32 x i8], ptr %aad.i, i32 0, i32 2
  %1 = getelementptr inbounds [32 x i8], ptr %aad.i, i32 0, i32 4
  %2 = getelementptr inbounds [32 x i8], ptr %aad.i, i32 0, i32 22
  %3 = getelementptr inbounds [32 x i8], ptr %aad.i, i32 0, i32 23
  %4 = getelementptr inbounds [32 x i8], ptr %aad.i, i32 0, i32 24
  %5 = getelementptr inbounds [32 x i8], ptr %aad.i, i32 0, i32 30
  %6 = getelementptr inbounds [32 x i8], ptr %aad.i, i32 0, i32 31
  %7 = getelementptr inbounds [16 x i8], ptr %b_0.i, i32 0, i32 1
  %8 = getelementptr inbounds [16 x i8], ptr %b_0.i, i32 0, i32 2
  %9 = getelementptr inbounds [16 x i8], ptr %b_0.i, i32 0, i32 8
  %10 = getelementptr inbounds [16 x i8], ptr %b_0.i, i32 0, i32 9
  %11 = getelementptr inbounds [16 x i8], ptr %b_0.i, i32 0, i32 10
  %12 = getelementptr inbounds [16 x i8], ptr %b_0.i, i32 0, i32 11
  %13 = getelementptr inbounds [16 x i8], ptr %b_0.i, i32 0, i32 12
  %14 = getelementptr inbounds [16 x i8], ptr %b_0.i, i32 0, i32 13
  %15 = getelementptr inbounds i8, ptr %b_0.i, i32 14
  br label %for.cond

for.cond:                                         ; preds = %ccmp_encrypt_skb.exit.for.cond_crit_edge, %entry
  %skb.0.in = phi ptr [ %skbs, %entry ], [ %skb.0, %ccmp_encrypt_skb.exit.for.cond_crit_edge ]
  %16 = ptrtoint ptr %skb.0.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %skb.0 = load ptr, ptr %skb.0.in, align 4
  %cmp.not = icmp eq ptr %skb.0, %skbs
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %19 = ptrtoint ptr %key1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %key1.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %aad.i) #8
  %21 = call ptr @memset(ptr %aad.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %b_0.i) #8
  %hw_key.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3, i32 28
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 -1, ptr %15, align 1
  %23 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_key.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %land.lhs.true.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body
  %flags.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %flags.i, align 8
  %conv.i = zext i16 %26 to i32
  %27 = and i32 %conv.i, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %land.lhs.true10.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %and14.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true10.i.ccmp_encrypt_skb.exit_crit_edge, label %land.lhs.true16.i

land.lhs.true10.i.ccmp_encrypt_skb.exit_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ccmp_encrypt_skb.exit

land.lhs.true16.i:                                ; preds = %land.lhs.true10.i
  %29 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %18, align 2
  %31 = and i16 %30, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp.i.i = icmp eq i16 %31, 0
  br i1 %cmp.i.i, label %land.lhs.true16.i.if.end.i_crit_edge, label %land.lhs.true16.i.ccmp_encrypt_skb.exit_crit_edge

land.lhs.true16.i.ccmp_encrypt_skb.exit_crit_edge: ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ccmp_encrypt_skb.exit

land.lhs.true16.i.if.end.i_crit_edge:             ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true16.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %for.body.if.end.i_crit_edge
  %mic_len..i = phi i32 [ 0, %land.lhs.true16.i.if.end.i_crit_edge ], [ 0, %land.lhs.true.i.if.end.i_crit_edge ], [ %mic_len, %for.body.if.end.i_crit_edge ]
  %32 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %18, align 2
  %call20.i = call i32 @ieee80211_hdrlen(i16 noundef zeroext %33) #11
  %len21.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 6
  %34 = ptrtoint ptr %len21.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len21.i, align 4
  %sub.i = sub i32 %35, %call20.i
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 7
  %36 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i.not.i.i = icmp eq i32 %37, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %if.end.i.skb_tailroom.exit.i_crit_edge

if.end.i.skb_tailroom.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 17
  %38 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 16
  %40 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %if.end.i.skb_tailroom.exit.i_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %if.end.i.skb_tailroom.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %mic_len..i)
  %cmp.i = icmp slt i32 %cond.i.i, %mic_len..i
  br i1 %cmp.i, label %skb_tailroom.exit.i.ccmp_encrypt_skb.exit.thread_crit_edge, label %lor.rhs.i

skb_tailroom.exit.i.ccmp_encrypt_skb.exit.thread_crit_edge: ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ccmp_encrypt_skb.exit.thread

lor.rhs.i:                                        ; preds = %skb_tailroom.exit.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 18
  %42 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i139.i = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i140.i = ptrtoint ptr %43 to i32
  %sub.ptr.sub.i141.i = sub i32 %sub.ptr.lhs.cast.i139.i, %sub.ptr.rhs.cast.i140.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i141.i)
  %cmp29.i = icmp ult i32 %sub.ptr.sub.i141.i, 8
  br i1 %cmp29.i, label %lor.rhs.i.ccmp_encrypt_skb.exit.thread_crit_edge, label %if.end54.i, !prof !15

lor.rhs.i.ccmp_encrypt_skb.exit.thread_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ccmp_encrypt_skb.exit.thread

ccmp_encrypt_skb.exit.thread:                     ; preds = %lor.rhs.i.ccmp_encrypt_skb.exit.thread_crit_edge, %skb_tailroom.exit.i.ccmp_encrypt_skb.exit.thread_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 441, i32 noundef 9, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %b_0.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %aad.i) #8
  br label %cleanup

if.end54.i:                                       ; preds = %lor.rhs.i
  %call55.i = call ptr @skb_push(ptr noundef %skb.0, i32 noundef 8) #8
  %add.ptr.i = getelementptr i8, ptr %call55.i, i32 8
  %44 = call ptr @memmove(ptr %call55.i, ptr %add.ptr.i, i32 %call20.i)
  %45 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw_key.i, align 4
  %tobool57.not.i = icmp eq ptr %46, null
  br i1 %tobool57.not.i, label %if.end54.i.if.end65.i_crit_edge, label %land.lhs.true58.i

if.end54.i.if.end65.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i

land.lhs.true58.i:                                ; preds = %if.end54.i
  %flags60.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %flags60.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %flags60.i, align 8
  %49 = and i16 %48, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool63.not.i = icmp eq i16 %49, 0
  br i1 %tobool63.not.i, label %land.lhs.true58.i.if.end65.i_crit_edge, label %land.lhs.true58.i.ccmp_encrypt_skb.exit_crit_edge

land.lhs.true58.i.ccmp_encrypt_skb.exit_crit_edge: ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ccmp_encrypt_skb.exit

land.lhs.true58.i.if.end65.i_crit_edge:           ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i

if.end65.i:                                       ; preds = %land.lhs.true58.i.if.end65.i_crit_edge, %if.end54.i.if.end65.i_crit_edge
  %add.ptr66.i = getelementptr i8, ptr %call55.i, i32 %call20.i
  %conf.i = getelementptr inbounds %struct.ieee80211_key, ptr %20, i32 0, i32 8
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %conf.i, i32 noundef 8) #8
  %call.i2.i.i = call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef %conf.i) #8
  %conv68.i = trunc i64 %call.i2.i.i to i8
  %shr.i = lshr i64 %call.i2.i.i, 8
  %conv69.i = trunc i64 %shr.i to i8
  %shr71.i = lshr i64 %call.i2.i.i, 16
  %conv72.i = trunc i64 %shr71.i to i8
  %shr74.i = lshr i64 %call.i2.i.i, 24
  %conv75.i = trunc i64 %shr74.i to i8
  %shr77.i = lshr i64 %call.i2.i.i, 32
  %conv78.i = trunc i64 %shr77.i to i8
  %shr80.i = lshr i64 %call.i2.i.i, 40
  %conv81.i = trunc i64 %shr80.i to i8
  %keyidx.i = getelementptr inbounds %struct.ieee80211_key, ptr %20, i32 0, i32 8, i32 5
  %50 = ptrtoint ptr %keyidx.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %keyidx.i, align 1
  %52 = ptrtoint ptr %add.ptr66.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv68.i, ptr %add.ptr66.i, align 1
  %arrayidx3.i.i = getelementptr i8, ptr %add.ptr66.i, i32 1
  %53 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv69.i, ptr %arrayidx3.i.i, align 1
  %arrayidx4.i.i = getelementptr i8, ptr %add.ptr66.i, i32 2
  %54 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %arrayidx4.i.i, align 1
  %55 = shl i8 %51, 6
  %conv.i.i = or i8 %55, 32
  %arrayidx5.i.i = getelementptr i8, ptr %add.ptr66.i, i32 3
  %56 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv.i.i, ptr %arrayidx5.i.i, align 1
  %arrayidx7.i.i = getelementptr i8, ptr %add.ptr66.i, i32 4
  %57 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv72.i, ptr %arrayidx7.i.i, align 1
  %arrayidx9.i.i = getelementptr i8, ptr %add.ptr66.i, i32 5
  %58 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv75.i, ptr %arrayidx9.i.i, align 1
  %arrayidx11.i.i = getelementptr i8, ptr %add.ptr66.i, i32 6
  %59 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv78.i, ptr %arrayidx11.i.i, align 1
  %arrayidx13.i.i = getelementptr i8, ptr %add.ptr66.i, i32 7
  %60 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv81.i, ptr %arrayidx13.i.i, align 1
  %61 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw_key.i, align 4
  %tobool86.not.i = icmp eq ptr %62, null
  br i1 %tobool86.not.i, label %if.end88.i, label %if.end65.i.ccmp_encrypt_skb.exit_crit_edge

if.end65.i.ccmp_encrypt_skb.exit_crit_edge:       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ccmp_encrypt_skb.exit

if.end88.i:                                       ; preds = %if.end65.i
  %add.ptr89.i = getelementptr i8, ptr %add.ptr66.i, i32 8
  %63 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %64, align 2
  %67 = and i16 %66, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp.i.i.i = icmp eq i16 %67, 0
  %spec.select.v.i.i = select i1 %cmp.i.i.i, i16 -121, i16 -28793
  %spec.select.i.i = and i16 %spec.select.v.i.i, %66
  %68 = or i16 %spec.select.i.i, 64
  %call10.i.i = call i32 @ieee80211_hdrlen(i16 noundef zeroext %66) #11
  %69 = trunc i32 %call10.i.i to i16
  %conv11.i.i = add i16 %69, -2
  %70 = and i16 %66, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %70)
  %cmp.i71.i.i = icmp eq i16 %70, 3
  %71 = and i16 %66, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %71)
  %cmp.i72.i.i = icmp eq i16 %71, -30720
  br i1 %cmp.i72.i.i, label %if.then17.i.i, label %if.end88.i.if.end19.i.i_crit_edge

if.end88.i.if.end19.i.i_crit_edge:                ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i

if.then17.i.i:                                    ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #10
  %retval.0.v.i.i.i.i = select i1 %cmp.i71.i.i, i32 30, i32 24
  %retval.0.i.i.i.i = getelementptr i8, ptr %64, i32 %retval.0.v.i.i.i.i
  %72 = ptrtoint ptr %retval.0.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %retval.0.i.i.i.i, align 1
  %74 = and i8 %73, 15
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then17.i.i, %if.end88.i.if.end19.i.i_crit_edge
  %qos_tid.0.i.i = phi i8 [ %74, %if.then17.i.i ], [ 0, %if.end88.i.if.end19.i.i_crit_edge ]
  %75 = ptrtoint ptr %b_0.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %b_0.i, align 1
  %shl.i.i = select i1 %cmp.i.i.i, i8 16, i8 0
  %or21.i.i = or i8 %qos_tid.0.i.i, %shl.i.i
  %76 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %or21.i.i, ptr %7, align 1
  %addr2.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %64, i32 0, i32 3
  %77 = call ptr @memcpy(ptr %8, ptr %addr2.i.i, i32 6)
  %78 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv81.i, ptr %9, align 1
  %79 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv78.i, ptr %10, align 1
  %80 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv75.i, ptr %11, align 1
  %81 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv72.i, ptr %12, align 1
  %82 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv69.i, ptr %13, align 1
  %83 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv68.i, ptr %14, align 1
  %84 = ptrtoint ptr %aad.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv11.i.i, ptr %aad.i, align 2
  %85 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %68, ptr %0, align 2
  %addr1.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %64, i32 0, i32 2
  %86 = call ptr @memcpy(ptr %1, ptr %addr1.i.i, i32 18)
  %seq_ctrl.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %64, i32 0, i32 5
  %87 = ptrtoint ptr %seq_ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %seq_ctrl.i.i, align 2
  %89 = and i8 %88, 15
  %90 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %2, align 2
  %91 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %3, align 1
  br i1 %cmp.i71.i.i, label %if.then35.i.i, label %if.else40.i.i

if.then35.i.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %addr4.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %64, i32 0, i32 6
  %92 = call ptr @memcpy(ptr %4, ptr %addr4.i.i, i32 6)
  %93 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %qos_tid.0.i.i, ptr %5, align 2
  %94 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %6, align 1
  br label %ccmp_special_blocks.exit.i

if.else40.i.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 8)
  store i64 0, ptr %4, align 2
  store i8 %qos_tid.0.i.i, ptr %4, align 2
  br label %ccmp_special_blocks.exit.i

ccmp_special_blocks.exit.i:                       ; preds = %if.else40.i.i, %if.then35.i.i
  %tfm.i = getelementptr inbounds %struct.ieee80211_key, ptr %20, i32 0, i32 5, i32 0, i32 2, i32 1, i32 0, i32 1
  %96 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tfm.i, align 8
  %call95.i = call ptr @skb_put(ptr noundef %skb.0, i32 noundef %mic_len) #8
  %98 = ptrtoint ptr %aad.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %aad.i, align 2
  %conv.i143.i = zext i16 %99 to i32
  %call1.i.i = call i32 @aead_encrypt(ptr noundef %97, ptr noundef nonnull %b_0.i, ptr noundef %0, i32 noundef %conv.i143.i, ptr noundef %add.ptr89.i, i32 noundef %sub.i, ptr noundef %call95.i) #8
  br label %ccmp_encrypt_skb.exit

ccmp_encrypt_skb.exit:                            ; preds = %ccmp_special_blocks.exit.i, %if.end65.i.ccmp_encrypt_skb.exit_crit_edge, %land.lhs.true58.i.ccmp_encrypt_skb.exit_crit_edge, %land.lhs.true16.i.ccmp_encrypt_skb.exit_crit_edge, %land.lhs.true10.i.ccmp_encrypt_skb.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i.i, %ccmp_special_blocks.exit.i ], [ 0, %land.lhs.true16.i.ccmp_encrypt_skb.exit_crit_edge ], [ 0, %land.lhs.true10.i.ccmp_encrypt_skb.exit_crit_edge ], [ 0, %land.lhs.true58.i.ccmp_encrypt_skb.exit_crit_edge ], [ 0, %if.end65.i.ccmp_encrypt_skb.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %b_0.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %aad.i) #8
  %cmp2 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp2, label %ccmp_encrypt_skb.exit.cleanup_crit_edge, label %ccmp_encrypt_skb.exit.for.cond_crit_edge

ccmp_encrypt_skb.exit.for.cond_crit_edge:         ; preds = %ccmp_encrypt_skb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

ccmp_encrypt_skb.exit.cleanup_crit_edge:          ; preds = %ccmp_encrypt_skb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %ccmp_encrypt_skb.exit.cleanup_crit_edge, %ccmp_encrypt_skb.exit.thread, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %ccmp_encrypt_skb.exit.thread ], [ 0, %for.cond.cleanup_crit_edge ], [ 1, %ccmp_encrypt_skb.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_ccmp_decrypt(ptr nocapture noundef %rx, i32 noundef %mic_len) local_unnamed_addr #0 align 64 {
entry:
  %pn = alloca [6 x i8], align 1
  %aad = alloca [32 x i8], align 2
  %b_0 = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 1
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %key1 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 5
  %4 = ptrtoint ptr %key1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %key1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %pn) #8
  %6 = getelementptr inbounds [6 x i8], ptr %pn, i32 0, i32 1
  %7 = getelementptr inbounds [6 x i8], ptr %pn, i32 0, i32 2
  %8 = getelementptr inbounds [6 x i8], ptr %pn, i32 0, i32 3
  %9 = getelementptr inbounds [6 x i8], ptr %pn, i32 0, i32 4
  %10 = getelementptr inbounds [6 x i8], ptr %pn, i32 0, i32 5
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %3, align 2
  %call4 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %12) #11
  %13 = and i16 %12, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %13)
  %cmp.i = icmp eq i16 %13, 2048
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %15)
  %cmp.i148 = icmp ult i32 %15, 25
  br i1 %cmp.i148, label %land.lhs.true.cleanup99_crit_edge, label %if.end.i

land.lhs.true.cleanup99_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.end.i:                                         ; preds = %land.lhs.true
  %16 = and i16 %12, -1024
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i16 %16, label %if.end.i.cleanup99_crit_edge [
    i16 -24576, label %if.end.i.if.end_crit_edge
    i16 -16384, label %if.end.i.if.end_crit_edge167
    i16 -12288, label %if.then5.i.i
  ]

if.end.i.if.end_crit_edge167:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.cleanup99_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.then5.i.i:                                     ; preds = %if.end.i
  %18 = and i16 %12, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.i46.not.i.i = icmp eq i16 %18, 0
  br i1 %cmp.i46.not.i.i, label %if.end9.i.i, label %if.then5.i.i.if.end_crit_edge

if.then5.i.i.if.end_crit_edge:                    ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end9.i.i:                                      ; preds = %if.then5.i.i
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 24
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr.i.i, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %20, label %if.end9.i.i.if.end_crit_edge [
    i8 4, label %if.end9.i.i.cleanup99_crit_edge
    i8 7, label %if.end9.i.i.cleanup99_crit_edge168
    i8 11, label %if.end9.i.i.cleanup99_crit_edge169
    i8 15, label %if.end9.i.i.cleanup99_crit_edge170
    i8 20, label %if.end9.i.i.cleanup99_crit_edge171
    i8 21, label %if.end9.i.i.cleanup99_crit_edge172
    i8 127, label %if.end9.i.i.cleanup99_crit_edge173
  ]

if.end9.i.i.cleanup99_crit_edge173:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.end9.i.i.cleanup99_crit_edge172:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.end9.i.i.cleanup99_crit_edge171:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.end9.i.i.cleanup99_crit_edge170:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.end9.i.i.cleanup99_crit_edge169:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.end9.i.i.cleanup99_crit_edge168:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.end9.i.i.cleanup99_crit_edge:                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.end9.i.i.if.end_crit_edge:                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %if.end9.i.i.if.end_crit_edge, %if.then5.i.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.end.i.if.end_crit_edge167, %entry.if.end_crit_edge
  %flag = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %22 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flag, align 8
  %and = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  %add = add i32 %call4, 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %25, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i149, label %if.then8.if.end12_crit_edge, !prof !15

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end.i149:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %add)
  %cmp3.i = icmp ult i32 %25, %add
  br i1 %cmp3.i, label %if.end.i149.cleanup99_crit_edge, label %pskb_may_pull.exit, !prof !15

if.end.i149.cleanup99_crit_edge:                  ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

pskb_may_pull.exit:                               ; preds = %if.end.i149
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %sub.i) #8
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup99_crit_edge, label %pskb_may_pull.exit.if.end12_crit_edge

pskb_may_pull.exit.if.end12_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

pskb_may_pull.exit.cleanup99_crit_edge:           ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.end12:                                         ; preds = %pskb_may_pull.exit.if.end12_crit_edge, %if.then8.if.end12_crit_edge
  %28 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flag, align 8
  %and14 = and i32 %29, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %spec.select = select i1 %tobool15.not, i32 %mic_len, i32 0
  br label %if.end23

if.else:                                          ; preds = %if.end
  %data_len.i.i151 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %30 = ptrtoint ptr %data_len.i.i151 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data_len.i.i151, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i.not.i = icmp eq i32 %31, 0
  br i1 %tobool.i.not.i, label %if.else.if.end23_crit_edge, label %cond.true.i

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

cond.true.i:                                      ; preds = %if.else
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %31) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.cleanup99_crit_edge, label %cond.true.i.if.end23_crit_edge

cond.true.i.if.end23_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

cond.true.i.cleanup99_crit_edge:                  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.end23:                                         ; preds = %cond.true.i.if.end23_crit_edge, %if.else.if.end23_crit_edge, %if.end12
  %mic_len.addr.0 = phi i32 [ %spec.select, %if.end12 ], [ %mic_len, %cond.true.i.if.end23_crit_edge ], [ %mic_len, %if.else.if.end23_crit_edge ]
  %idx.neg = sub i32 0, %mic_len.addr.0
  %32 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skb, align 4
  %data25 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 19
  %34 = ptrtoint ptr %data25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data25, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  %38 = add i32 %call4, %mic_len.addr.0
  %39 = sub i32 -8, %38
  %sub27 = add i32 %39, %37
  %sta = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 4
  %40 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sta, align 4
  %tobool28.not = icmp eq ptr %41, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub27)
  %cmp = icmp slt i32 %sub27, 0
  %or.cond = select i1 %tobool28.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.end23.cleanup99_crit_edge, label %if.end30

if.end23.cleanup99_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.end30:                                         ; preds = %if.end23
  %42 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flag, align 8
  %and32 = and i32 %43, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end30.if.end88_crit_edge

if.end30.if.end88_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then34:                                        ; preds = %if.end30
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %45, i32 %call4
  %arrayidx.i = getelementptr i8, ptr %add.ptr, i32 7
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i, align 1
  %48 = ptrtoint ptr %pn to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %pn, align 1
  %arrayidx2.i = getelementptr i8, ptr %add.ptr, i32 6
  %49 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx2.i, align 1
  %51 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %6, align 1
  %arrayidx4.i = getelementptr i8, ptr %add.ptr, i32 5
  %52 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx4.i, align 1
  %54 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %7, align 1
  %arrayidx6.i = getelementptr i8, ptr %add.ptr, i32 4
  %55 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx6.i, align 1
  %57 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %8, align 1
  %arrayidx8.i = getelementptr i8, ptr %add.ptr, i32 1
  %58 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx8.i, align 1
  %60 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %9, align 1
  %61 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %add.ptr, align 1
  %63 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %10, align 1
  %security_idx = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 8
  %64 = ptrtoint ptr %security_idx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %security_idx, align 4
  %u = getelementptr inbounds %struct.ieee80211_key, ptr %5, i32 0, i32 5
  %arrayidx = getelementptr [17 x [6 x i8]], ptr %u, i32 0, i32 %65
  %call38 = call i32 @memcmp(ptr noundef nonnull dereferenceable(6) %pn, ptr noundef dereferenceable(6) %arrayidx, i32 noundef 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then34.if.then46_crit_edge, label %lor.lhs.false40

if.then34.if.then46_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

lor.lhs.false40:                                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool41.not = icmp eq i32 %call38, 0
  %and44 = and i32 %43, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %or.cond166 = select i1 %tobool41.not, i1 %tobool45.not, i1 false
  br i1 %or.cond166, label %lor.lhs.false40.if.then46_crit_edge, label %if.end48

lor.lhs.false40.if.then46_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

if.then46:                                        ; preds = %lor.lhs.false40.if.then46_crit_edge, %if.then34.if.then46_crit_edge
  %replays = getelementptr inbounds %struct.ieee80211_key, ptr %5, i32 0, i32 5, i32 0, i32 2, i32 1, i32 0, i32 2
  %66 = ptrtoint ptr %replays to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %replays, align 4
  %inc = add i32 %67, 1
  store i32 %inc, ptr %replays, align 4
  br label %cleanup99

if.end48:                                         ; preds = %lor.lhs.false40
  %and50 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.then52, label %if.end48.if.end71_crit_edge

if.end48.if.end71_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then52:                                        ; preds = %if.end48
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %aad) #8
  %68 = getelementptr inbounds [32 x i8], ptr %aad, i32 0, i32 2
  %69 = call ptr @memset(ptr %aad, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %b_0) #8
  %70 = call ptr @memset(ptr %b_0, i32 255, i32 16)
  call fastcc void @ccmp_special_blocks(ptr noundef %1, ptr noundef nonnull %pn, ptr noundef nonnull %b_0, ptr noundef nonnull %aad)
  %tfm = getelementptr inbounds %struct.ieee80211_key, ptr %5, i32 0, i32 5, i32 0, i32 2, i32 1, i32 0, i32 1
  %71 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tfm, align 8
  %73 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data, align 4
  %add.ptr60 = getelementptr i8, ptr %74, i32 %call4
  %add.ptr61 = getelementptr i8, ptr %add.ptr60, i32 8
  %75 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len, align 4
  %add.ptr64 = getelementptr i8, ptr %74, i32 %76
  %add.ptr65 = getelementptr i8, ptr %add.ptr64, i32 %idx.neg
  %77 = ptrtoint ptr %aad to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %aad, align 2
  %conv.i = zext i16 %78 to i32
  %call1.i = call i32 @aead_decrypt(ptr noundef %72, ptr noundef nonnull %b_0, ptr noundef %68, i32 noundef %conv.i, ptr noundef %add.ptr61, i32 noundef %sub27, ptr noundef %add.ptr65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool67.not = icmp eq i32 %call1.i, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %b_0) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %aad) #8
  br i1 %tobool67.not, label %if.then52.if.end71_crit_edge, label %if.then52.cleanup99_crit_edge

if.then52.cleanup99_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.then52.if.end71_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.end71:                                         ; preds = %if.then52.if.end71_crit_edge, %if.end48.if.end71_crit_edge
  %79 = call ptr @memcpy(ptr %arrayidx, ptr %pn, i32 6)
  %80 = ptrtoint ptr %35 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %35, align 2
  %82 = and i16 %81, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %cmp.i.not.i = icmp eq i16 %82, 0
  br i1 %cmp.i.not.i, label %ieee80211_is_frag.exit, label %if.end71.if.then80_crit_edge, !prof !16

if.end71.if.then80_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80

ieee80211_is_frag.exit:                           ; preds = %if.end71
  %seq_ctrl.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %35, i32 0, i32 5
  %83 = ptrtoint ptr %seq_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %seq_ctrl.i, align 2
  %85 = and i16 %84, 3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool.i.not = icmp eq i16 %85, 0
  br i1 %tobool.i.not, label %ieee80211_is_frag.exit.if.end88_crit_edge, label %ieee80211_is_frag.exit.if.then80_crit_edge, !prof !14

ieee80211_is_frag.exit.if.then80_crit_edge:       ; preds = %ieee80211_is_frag.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80

ieee80211_is_frag.exit.if.end88_crit_edge:        ; preds = %ieee80211_is_frag.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then80:                                        ; preds = %ieee80211_is_frag.exit.if.then80_crit_edge, %if.end71.if.then80_crit_edge
  %86 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 9
  %87 = call ptr @memcpy(ptr %86, ptr %pn, i32 6)
  br label %if.end88

if.end88:                                         ; preds = %if.then80, %ieee80211_is_frag.exit.if.end88_crit_edge, %if.end30.if.end88_crit_edge
  %88 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len, align 4
  %sub90 = sub i32 %89, %mic_len.addr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %sub90)
  %cmp.i152 = icmp ugt i32 %89, %sub90
  br i1 %cmp.i152, label %cond.true.i155, label %if.end88.if.end94_crit_edge

if.end88.if.end94_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

cond.true.i155:                                   ; preds = %if.end88
  %data_len.i.i153 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %90 = ptrtoint ptr %data_len.i.i153 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %data_len.i.i153, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i.i154 = icmp eq i32 %91, 0
  br i1 %tobool.not.i.i154, label %__skb_trim.exit.i.i, label %pskb_trim.exit

__skb_trim.exit.i.i:                              ; preds = %cond.true.i155
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %sub90, ptr %len, align 4
  %93 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %94, i32 %sub90
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %95 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %add.ptr.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  br label %if.end94

pskb_trim.exit:                                   ; preds = %cond.true.i155
  %call.i.i156 = call i32 @___pskb_trim(ptr noundef %1, i32 noundef %sub90) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i156)
  %tobool92.not = icmp eq i32 %call.i.i156, 0
  br i1 %tobool92.not, label %pskb_trim.exit.if.end94_crit_edge, label %pskb_trim.exit.cleanup99_crit_edge

pskb_trim.exit.cleanup99_crit_edge:               ; preds = %pskb_trim.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

pskb_trim.exit.if.end94_crit_edge:                ; preds = %pskb_trim.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.end94:                                         ; preds = %pskb_trim.exit.if.end94_crit_edge, %__skb_trim.exit.i.i, %if.end88.if.end94_crit_edge
  %96 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %data, align 4
  %add.ptr96 = getelementptr i8, ptr %97, i32 8
  %98 = call ptr @memmove(ptr %add.ptr96, ptr %97, i32 %call4)
  %call98 = call ptr @skb_pull(ptr noundef %1, i32 noundef 8) #8
  br label %cleanup99

cleanup99:                                        ; preds = %if.end94, %pskb_trim.exit.cleanup99_crit_edge, %if.then52.cleanup99_crit_edge, %if.then46, %if.end23.cleanup99_crit_edge, %cond.true.i.cleanup99_crit_edge, %pskb_may_pull.exit.cleanup99_crit_edge, %if.end.i149.cleanup99_crit_edge, %if.end9.i.i.cleanup99_crit_edge, %if.end9.i.i.cleanup99_crit_edge168, %if.end9.i.i.cleanup99_crit_edge169, %if.end9.i.i.cleanup99_crit_edge170, %if.end9.i.i.cleanup99_crit_edge171, %if.end9.i.i.cleanup99_crit_edge172, %if.end9.i.i.cleanup99_crit_edge173, %if.end.i.cleanup99_crit_edge, %land.lhs.true.cleanup99_crit_edge
  %retval.3 = phi i32 [ 0, %if.end94 ], [ 1, %pskb_may_pull.exit.cleanup99_crit_edge ], [ 1, %if.end23.cleanup99_crit_edge ], [ 1, %if.then46 ], [ 1, %pskb_trim.exit.cleanup99_crit_edge ], [ 1, %if.then52.cleanup99_crit_edge ], [ 0, %land.lhs.true.cleanup99_crit_edge ], [ 0, %if.end9.i.i.cleanup99_crit_edge ], [ 0, %if.end9.i.i.cleanup99_crit_edge168 ], [ 0, %if.end9.i.i.cleanup99_crit_edge169 ], [ 0, %if.end9.i.i.cleanup99_crit_edge170 ], [ 0, %if.end9.i.i.cleanup99_crit_edge171 ], [ 0, %if.end9.i.i.cleanup99_crit_edge172 ], [ 0, %if.end9.i.i.cleanup99_crit_edge173 ], [ 1, %cond.true.i.cleanup99_crit_edge ], [ 0, %if.end.i.cleanup99_crit_edge ], [ 1, %if.end.i149.cleanup99_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %pn) #8
  ret i32 %retval.3
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @ccmp_special_blocks(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %pn, ptr nocapture noundef writeonly %b_0, ptr nocapture noundef writeonly %aad) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %4 = and i16 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.i = icmp eq i16 %4, 0
  %spec.select.v = select i1 %cmp.i, i16 -121, i16 -28793
  %spec.select = and i16 %spec.select.v, %3
  %5 = or i16 %spec.select, 64
  %call10 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %3) #11
  %6 = trunc i32 %call10 to i16
  %conv11 = add i16 %6, -2
  %7 = and i16 %3, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %7)
  %cmp.i71 = icmp eq i16 %7, 3
  %8 = and i16 %3, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %8)
  %cmp.i72 = icmp eq i16 %8, -30720
  br i1 %cmp.i72, label %if.then17, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %retval.0.v.i.i = select i1 %cmp.i71, i32 30, i32 24
  %retval.0.i.i = getelementptr i8, ptr %1, i32 %retval.0.v.i.i
  %9 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %retval.0.i.i, align 1
  %11 = and i8 %10, 15
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %entry.if.end19_crit_edge
  %qos_tid.0 = phi i8 [ %11, %if.then17 ], [ 0, %entry.if.end19_crit_edge ]
  %12 = ptrtoint ptr %b_0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %b_0, align 1
  %shl = select i1 %cmp.i, i8 16, i8 0
  %or21 = or i8 %qos_tid.0, %shl
  %arrayidx23 = getelementptr i8, ptr %b_0, i32 1
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %or21, ptr %arrayidx23, align 1
  %arrayidx24 = getelementptr i8, ptr %b_0, i32 2
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 3
  %14 = call ptr @memcpy(ptr %arrayidx24, ptr %addr2, i32 6)
  %arrayidx25 = getelementptr i8, ptr %b_0, i32 8
  %15 = call ptr @memcpy(ptr %arrayidx25, ptr %pn, i32 6)
  %16 = ptrtoint ptr %aad to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %conv11, ptr %aad, align 1
  %arrayidx27 = getelementptr i8, ptr %aad, i32 2
  %17 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %5, ptr %arrayidx27, align 1
  %arrayidx28 = getelementptr i8, ptr %aad, i32 4
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 2
  %18 = call ptr @memcpy(ptr %arrayidx28, ptr %addr1, i32 18)
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %seq_ctrl, align 2
  %21 = and i8 %20, 15
  %arrayidx32 = getelementptr i8, ptr %aad, i32 22
  %22 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx32, align 1
  %arrayidx33 = getelementptr i8, ptr %aad, i32 23
  %23 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx33, align 1
  %arrayidx36 = getelementptr i8, ptr %aad, i32 24
  br i1 %cmp.i71, label %if.then35, label %if.else40

if.then35:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %addr4 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 6
  %24 = call ptr @memcpy(ptr %arrayidx36, ptr %addr4, i32 6)
  %arrayidx38 = getelementptr i8, ptr %aad, i32 30
  %25 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %qos_tid.0, ptr %arrayidx38, align 1
  %arrayidx39 = getelementptr i8, ptr %aad, i32 31
  %26 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx39, align 1
  br label %if.end43

if.else40:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 0, ptr %arrayidx36, align 1
  store i8 %qos_tid.0, ptr %arrayidx36, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.else40, %if.then35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_gcmp_encrypt(ptr noundef %tx) local_unnamed_addr #0 align 64 {
entry:
  %aad.i = alloca [32 x i8], align 2
  %j_0.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ieee80211_tx_set_protected(ptr noundef %tx) #8
  %skbs = getelementptr inbounds %struct.ieee80211_tx_data, ptr %tx, i32 0, i32 1
  %key1.i = getelementptr inbounds %struct.ieee80211_tx_data, ptr %tx, i32 0, i32 5
  %0 = getelementptr inbounds [32 x i8], ptr %aad.i, i32 0, i32 2
  %1 = getelementptr inbounds [32 x i8], ptr %aad.i, i32 0, i32 4
  %2 = getelementptr inbounds [32 x i8], ptr %aad.i, i32 0, i32 22
  %3 = getelementptr inbounds [32 x i8], ptr %aad.i, i32 0, i32 23
  %4 = getelementptr inbounds [32 x i8], ptr %aad.i, i32 0, i32 24
  %5 = getelementptr inbounds [32 x i8], ptr %aad.i, i32 0, i32 30
  %6 = getelementptr inbounds [32 x i8], ptr %aad.i, i32 0, i32 31
  %7 = getelementptr inbounds [16 x i8], ptr %j_0.i, i32 0, i32 6
  %8 = getelementptr inbounds [16 x i8], ptr %j_0.i, i32 0, i32 7
  %9 = getelementptr inbounds [16 x i8], ptr %j_0.i, i32 0, i32 8
  %10 = getelementptr inbounds [16 x i8], ptr %j_0.i, i32 0, i32 9
  %11 = getelementptr inbounds [16 x i8], ptr %j_0.i, i32 0, i32 10
  %12 = getelementptr inbounds [16 x i8], ptr %j_0.i, i32 0, i32 11
  %13 = getelementptr inbounds [16 x i8], ptr %j_0.i, i32 0, i32 13
  %14 = getelementptr inbounds [16 x i8], ptr %j_0.i, i32 0, i32 14
  %15 = getelementptr inbounds [16 x i8], ptr %j_0.i, i32 0, i32 15
  %16 = getelementptr inbounds i8, ptr %j_0.i, i32 12
  br label %for.cond

for.cond:                                         ; preds = %gcmp_encrypt_skb.exit.for.cond_crit_edge, %entry
  %skb.0.in = phi ptr [ %skbs, %entry ], [ %skb.0, %gcmp_encrypt_skb.exit.for.cond_crit_edge ]
  %17 = ptrtoint ptr %skb.0.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %skb.0 = load ptr, ptr %skb.0.in, align 4
  %cmp.not = icmp eq ptr %skb.0, %skbs
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %20 = ptrtoint ptr %key1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %key1.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %aad.i) #8
  %22 = call ptr @memset(ptr %aad.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %j_0.i) #8
  %hw_key.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3, i32 28
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %16, align 1
  %24 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_key.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %land.lhs.true.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body
  %flags.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flags.i, align 8
  %conv.i = zext i16 %27 to i32
  %28 = and i32 %conv.i, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %land.lhs.true10.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %and14.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true10.i.gcmp_encrypt_skb.exit_crit_edge, label %land.lhs.true16.i

land.lhs.true10.i.gcmp_encrypt_skb.exit_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gcmp_encrypt_skb.exit

land.lhs.true16.i:                                ; preds = %land.lhs.true10.i
  %30 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %19, align 2
  %32 = and i16 %31, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp.i.i = icmp eq i16 %32, 0
  br i1 %cmp.i.i, label %land.lhs.true16.i.if.end.i_crit_edge, label %land.lhs.true16.i.gcmp_encrypt_skb.exit_crit_edge

land.lhs.true16.i.gcmp_encrypt_skb.exit_crit_edge: ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gcmp_encrypt_skb.exit

land.lhs.true16.i.if.end.i_crit_edge:             ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true16.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %for.body.if.end.i_crit_edge
  %..i = phi i32 [ 0, %land.lhs.true16.i.if.end.i_crit_edge ], [ 0, %land.lhs.true.i.if.end.i_crit_edge ], [ 16, %for.body.if.end.i_crit_edge ]
  %33 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %19, align 2
  %call20.i = call i32 @ieee80211_hdrlen(i16 noundef zeroext %34) #11
  %len21.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 6
  %35 = ptrtoint ptr %len21.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len21.i, align 4
  %sub.i = sub i32 %36, %call20.i
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 7
  %37 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.i.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %if.end.i.skb_tailroom.exit.i_crit_edge

if.end.i.skb_tailroom.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 17
  %39 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 16
  %41 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %40 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %if.end.i.skb_tailroom.exit.i_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %if.end.i.skb_tailroom.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %..i)
  %cmp.i = icmp slt i32 %cond.i.i, %..i
  br i1 %cmp.i, label %skb_tailroom.exit.i.gcmp_encrypt_skb.exit.thread_crit_edge, label %lor.rhs.i

skb_tailroom.exit.i.gcmp_encrypt_skb.exit.thread_crit_edge: ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gcmp_encrypt_skb.exit.thread

lor.rhs.i:                                        ; preds = %skb_tailroom.exit.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 18
  %43 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i141.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i142.i = ptrtoint ptr %44 to i32
  %sub.ptr.sub.i143.i = sub i32 %sub.ptr.lhs.cast.i141.i, %sub.ptr.rhs.cast.i142.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i143.i)
  %cmp29.i = icmp ult i32 %sub.ptr.sub.i143.i, 8
  br i1 %cmp29.i, label %lor.rhs.i.gcmp_encrypt_skb.exit.thread_crit_edge, label %if.end54.i, !prof !15

lor.rhs.i.gcmp_encrypt_skb.exit.thread_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gcmp_encrypt_skb.exit.thread

gcmp_encrypt_skb.exit.thread:                     ; preds = %lor.rhs.i.gcmp_encrypt_skb.exit.thread_crit_edge, %skb_tailroom.exit.i.gcmp_encrypt_skb.exit.thread_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 675, i32 noundef 9, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %j_0.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %aad.i) #8
  br label %cleanup

if.end54.i:                                       ; preds = %lor.rhs.i
  %call55.i = call ptr @skb_push(ptr noundef %skb.0, i32 noundef 8) #8
  %add.ptr.i = getelementptr i8, ptr %call55.i, i32 8
  %45 = call ptr @memmove(ptr %call55.i, ptr %add.ptr.i, i32 %call20.i)
  %46 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 20
  %48 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %49 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %47, i32 %conv.i.i.i
  %50 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i145.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i146.i = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i147.i = sub i32 %sub.ptr.lhs.cast.i145.i, %sub.ptr.rhs.cast.i146.i
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %47 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.rhs.cast.i146.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i149.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %52 = trunc i32 %sub.ptr.sub.i147.i to i16
  %53 = add i16 %conv.i.i149.i, 8
  %conv1.i.i = add i16 %53, %52
  store i16 %conv1.i.i, ptr %network_header.i.i.i, align 4
  %54 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw_key.i, align 4
  %tobool58.not.i = icmp eq ptr %55, null
  br i1 %tobool58.not.i, label %if.end54.i.if.end66.i_crit_edge, label %land.lhs.true59.i

if.end54.i.if.end66.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

land.lhs.true59.i:                                ; preds = %if.end54.i
  %flags61.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %55, i32 0, i32 6
  %56 = ptrtoint ptr %flags61.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %flags61.i, align 8
  %58 = and i16 %57, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool64.not.i = icmp eq i16 %58, 0
  br i1 %tobool64.not.i, label %land.lhs.true59.i.if.end66.i_crit_edge, label %land.lhs.true59.i.gcmp_encrypt_skb.exit_crit_edge

land.lhs.true59.i.gcmp_encrypt_skb.exit_crit_edge: ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gcmp_encrypt_skb.exit

land.lhs.true59.i.if.end66.i_crit_edge:           ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

if.end66.i:                                       ; preds = %land.lhs.true59.i.if.end66.i_crit_edge, %if.end54.i.if.end66.i_crit_edge
  %add.ptr67.i = getelementptr i8, ptr %call55.i, i32 %call20.i
  %conf.i = getelementptr inbounds %struct.ieee80211_key, ptr %21, i32 0, i32 8
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %conf.i, i32 noundef 8) #8
  %call.i2.i.i = call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef %conf.i) #8
  %conv69.i = trunc i64 %call.i2.i.i to i8
  %shr.i = lshr i64 %call.i2.i.i, 8
  %conv70.i = trunc i64 %shr.i to i8
  %shr72.i = lshr i64 %call.i2.i.i, 16
  %conv73.i = trunc i64 %shr72.i to i8
  %shr75.i = lshr i64 %call.i2.i.i, 24
  %conv76.i = trunc i64 %shr75.i to i8
  %shr78.i = lshr i64 %call.i2.i.i, 32
  %conv79.i = trunc i64 %shr78.i to i8
  %shr81.i = lshr i64 %call.i2.i.i, 40
  %conv82.i = trunc i64 %shr81.i to i8
  %keyidx.i = getelementptr inbounds %struct.ieee80211_key, ptr %21, i32 0, i32 8, i32 5
  %59 = ptrtoint ptr %keyidx.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %keyidx.i, align 1
  %61 = ptrtoint ptr %add.ptr67.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv69.i, ptr %add.ptr67.i, align 1
  %arrayidx3.i.i = getelementptr i8, ptr %add.ptr67.i, i32 1
  %62 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv70.i, ptr %arrayidx3.i.i, align 1
  %arrayidx4.i.i = getelementptr i8, ptr %add.ptr67.i, i32 2
  %63 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %arrayidx4.i.i, align 1
  %64 = shl i8 %60, 6
  %conv.i.i = or i8 %64, 32
  %arrayidx5.i.i = getelementptr i8, ptr %add.ptr67.i, i32 3
  %65 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv.i.i, ptr %arrayidx5.i.i, align 1
  %arrayidx7.i.i = getelementptr i8, ptr %add.ptr67.i, i32 4
  %66 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv73.i, ptr %arrayidx7.i.i, align 1
  %arrayidx9.i.i = getelementptr i8, ptr %add.ptr67.i, i32 5
  %67 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv76.i, ptr %arrayidx9.i.i, align 1
  %arrayidx11.i.i = getelementptr i8, ptr %add.ptr67.i, i32 6
  %68 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv79.i, ptr %arrayidx11.i.i, align 1
  %arrayidx13.i.i = getelementptr i8, ptr %add.ptr67.i, i32 7
  %69 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv82.i, ptr %arrayidx13.i.i, align 1
  %70 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw_key.i, align 4
  %tobool87.not.i = icmp eq ptr %71, null
  br i1 %tobool87.not.i, label %if.end89.i, label %if.end66.i.gcmp_encrypt_skb.exit_crit_edge

if.end66.i.gcmp_encrypt_skb.exit_crit_edge:       ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gcmp_encrypt_skb.exit

if.end89.i:                                       ; preds = %if.end66.i
  %add.ptr90.i = getelementptr i8, ptr %add.ptr67.i, i32 8
  %72 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i, align 4
  %addr2.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %73, i32 0, i32 3
  %74 = call ptr @memcpy(ptr %j_0.i, ptr %addr2.i.i, i32 6)
  %75 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv82.i, ptr %7, align 1
  %76 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv79.i, ptr %8, align 1
  %77 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv76.i, ptr %9, align 1
  %78 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv73.i, ptr %10, align 1
  %79 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv70.i, ptr %11, align 1
  %80 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv69.i, ptr %12, align 1
  %81 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %13, align 1
  %82 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %14, align 1
  %83 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %15, align 1
  %84 = ptrtoint ptr %73 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %73, align 2
  %call.i.i = call i32 @ieee80211_hdrlen(i16 noundef zeroext %85) #11
  %86 = trunc i32 %call.i.i to i16
  %conv.i155.i = add i16 %86, -2
  %87 = ptrtoint ptr %aad.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv.i155.i, ptr %aad.i, align 2
  %88 = ptrtoint ptr %73 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %73, align 2
  %90 = and i16 %89, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %cmp.i.i.i = icmp eq i16 %90, 0
  %spec.select.v.i.i = select i1 %cmp.i.i.i, i16 -121, i16 -28793
  %spec.select.i.i = and i16 %spec.select.v.i.i, %89
  %91 = or i16 %spec.select.i.i, 64
  %92 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %0, align 2
  %addr1.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %73, i32 0, i32 2
  %93 = call ptr @memcpy(ptr %1, ptr %addr1.i.i, i32 18)
  %seq_ctrl.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %73, i32 0, i32 5
  %94 = ptrtoint ptr %seq_ctrl.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %seq_ctrl.i.i, align 2
  %96 = and i8 %95, 15
  %97 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %2, align 2
  %98 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %3, align 1
  %99 = ptrtoint ptr %73 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %73, align 2
  %101 = and i16 %100, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %101)
  %cmp.i64.i.i = icmp eq i16 %101, -30720
  %102 = and i16 %100, 3
  br i1 %cmp.i64.i.i, label %if.then24.i.i, label %if.end89.i.if.end26.i.i_crit_edge

if.end89.i.if.end26.i.i_crit_edge:                ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i.i

if.then24.i.i:                                    ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %102)
  %cmp.i.i.i.i.i = icmp eq i16 %102, 3
  %retval.0.v.i.i.i.i = select i1 %cmp.i.i.i.i.i, i32 30, i32 24
  %retval.0.i.i.i.i = getelementptr i8, ptr %73, i32 %retval.0.v.i.i.i.i
  %103 = ptrtoint ptr %retval.0.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %retval.0.i.i.i.i, align 1
  %105 = and i8 %104, 15
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then24.i.i, %if.end89.i.if.end26.i.i_crit_edge
  %qos_tid.0.i.i = phi i8 [ %105, %if.then24.i.i ], [ 0, %if.end89.i.if.end26.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %102)
  %cmp.i65.i.i = icmp eq i16 %102, 3
  br i1 %cmp.i65.i.i, label %if.then29.i.i, label %if.else34.i.i

if.then29.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %addr4.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %73, i32 0, i32 6
  %106 = call ptr @memcpy(ptr %4, ptr %addr4.i.i, i32 6)
  %107 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %qos_tid.0.i.i, ptr %5, align 2
  %108 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %6, align 1
  br label %gcmp_special_blocks.exit.i

if.else34.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 8)
  store i64 0, ptr %4, align 2
  store i8 %qos_tid.0.i.i, ptr %4, align 2
  br label %gcmp_special_blocks.exit.i

gcmp_special_blocks.exit.i:                       ; preds = %if.else34.i.i, %if.then29.i.i
  %tfm.i = getelementptr inbounds %struct.ieee80211_key, ptr %21, i32 0, i32 5, i32 0, i32 2, i32 1, i32 0, i32 1
  %110 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tfm.i, align 8
  %call96.i = call ptr @skb_put(ptr noundef %skb.0, i32 noundef 16) #8
  %112 = ptrtoint ptr %aad.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %aad.i, align 2
  %conv.i156.i = zext i16 %113 to i32
  %call1.i.i = call i32 @aead_encrypt(ptr noundef %111, ptr noundef nonnull %j_0.i, ptr noundef %0, i32 noundef %conv.i156.i, ptr noundef %add.ptr90.i, i32 noundef %sub.i, ptr noundef %call96.i) #8
  br label %gcmp_encrypt_skb.exit

gcmp_encrypt_skb.exit:                            ; preds = %gcmp_special_blocks.exit.i, %if.end66.i.gcmp_encrypt_skb.exit_crit_edge, %land.lhs.true59.i.gcmp_encrypt_skb.exit_crit_edge, %land.lhs.true16.i.gcmp_encrypt_skb.exit_crit_edge, %land.lhs.true10.i.gcmp_encrypt_skb.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i.i, %gcmp_special_blocks.exit.i ], [ 0, %land.lhs.true16.i.gcmp_encrypt_skb.exit_crit_edge ], [ 0, %land.lhs.true10.i.gcmp_encrypt_skb.exit_crit_edge ], [ 0, %land.lhs.true59.i.gcmp_encrypt_skb.exit_crit_edge ], [ 0, %if.end66.i.gcmp_encrypt_skb.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %j_0.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %aad.i) #8
  %cmp2 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp2, label %gcmp_encrypt_skb.exit.cleanup_crit_edge, label %gcmp_encrypt_skb.exit.for.cond_crit_edge

gcmp_encrypt_skb.exit.for.cond_crit_edge:         ; preds = %gcmp_encrypt_skb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

gcmp_encrypt_skb.exit.cleanup_crit_edge:          ; preds = %gcmp_encrypt_skb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %gcmp_encrypt_skb.exit.cleanup_crit_edge, %gcmp_encrypt_skb.exit.thread, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %gcmp_encrypt_skb.exit.thread ], [ 0, %for.cond.cleanup_crit_edge ], [ 1, %gcmp_encrypt_skb.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_gcmp_decrypt(ptr nocapture noundef %rx) local_unnamed_addr #0 align 64 {
entry:
  %pn = alloca [6 x i8], align 1
  %aad = alloca [32 x i8], align 2
  %j_0 = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 1
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %key1 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 5
  %4 = ptrtoint ptr %key1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %key1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %pn) #8
  %6 = getelementptr inbounds [6 x i8], ptr %pn, i32 0, i32 1
  %7 = getelementptr inbounds [6 x i8], ptr %pn, i32 0, i32 2
  %8 = getelementptr inbounds [6 x i8], ptr %pn, i32 0, i32 3
  %9 = getelementptr inbounds [6 x i8], ptr %pn, i32 0, i32 4
  %10 = getelementptr inbounds [6 x i8], ptr %pn, i32 0, i32 5
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %3, align 2
  %call4 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %12) #11
  %13 = and i16 %12, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %13)
  %cmp.i = icmp eq i16 %13, 2048
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %15)
  %cmp.i148 = icmp ult i32 %15, 25
  br i1 %cmp.i148, label %land.lhs.true.cleanup99_crit_edge, label %if.end.i

land.lhs.true.cleanup99_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.end.i:                                         ; preds = %land.lhs.true
  %16 = and i16 %12, -1024
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.4)
  switch i16 %16, label %if.end.i.cleanup99_crit_edge [
    i16 -24576, label %if.end.i.if.end_crit_edge
    i16 -16384, label %if.end.i.if.end_crit_edge167
    i16 -12288, label %if.then5.i.i
  ]

if.end.i.if.end_crit_edge167:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.cleanup99_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.then5.i.i:                                     ; preds = %if.end.i
  %18 = and i16 %12, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.i46.not.i.i = icmp eq i16 %18, 0
  br i1 %cmp.i46.not.i.i, label %if.end9.i.i, label %if.then5.i.i.if.end_crit_edge

if.then5.i.i.if.end_crit_edge:                    ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end9.i.i:                                      ; preds = %if.then5.i.i
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 24
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr.i.i, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %20, label %if.end9.i.i.if.end_crit_edge [
    i8 4, label %if.end9.i.i.cleanup99_crit_edge
    i8 7, label %if.end9.i.i.cleanup99_crit_edge168
    i8 11, label %if.end9.i.i.cleanup99_crit_edge169
    i8 15, label %if.end9.i.i.cleanup99_crit_edge170
    i8 20, label %if.end9.i.i.cleanup99_crit_edge171
    i8 21, label %if.end9.i.i.cleanup99_crit_edge172
    i8 127, label %if.end9.i.i.cleanup99_crit_edge173
  ]

if.end9.i.i.cleanup99_crit_edge173:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.end9.i.i.cleanup99_crit_edge172:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.end9.i.i.cleanup99_crit_edge171:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.end9.i.i.cleanup99_crit_edge170:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.end9.i.i.cleanup99_crit_edge169:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.end9.i.i.cleanup99_crit_edge168:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.end9.i.i.cleanup99_crit_edge:                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.end9.i.i.if.end_crit_edge:                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %if.end9.i.i.if.end_crit_edge, %if.then5.i.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.end.i.if.end_crit_edge167, %entry.if.end_crit_edge
  %flag = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %22 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flag, align 8
  %and = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  %add = add i32 %call4, 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %25, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i149, label %if.then8.if.end12_crit_edge, !prof !15

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end.i149:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %add)
  %cmp3.i = icmp ult i32 %25, %add
  br i1 %cmp3.i, label %if.end.i149.cleanup99_crit_edge, label %pskb_may_pull.exit, !prof !15

if.end.i149.cleanup99_crit_edge:                  ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

pskb_may_pull.exit:                               ; preds = %if.end.i149
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %sub.i) #8
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup99_crit_edge, label %pskb_may_pull.exit.if.end12_crit_edge

pskb_may_pull.exit.if.end12_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

pskb_may_pull.exit.cleanup99_crit_edge:           ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.end12:                                         ; preds = %pskb_may_pull.exit.if.end12_crit_edge, %if.then8.if.end12_crit_edge
  %28 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flag, align 8
  %and14 = lshr i32 %29, 17
  %30 = and i32 %and14, 16
  %31 = xor i32 %30, 16
  br label %if.end23

if.else:                                          ; preds = %if.end
  %data_len.i.i151 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %32 = ptrtoint ptr %data_len.i.i151 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_len.i.i151, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.i.not.i = icmp eq i32 %33, 0
  br i1 %tobool.i.not.i, label %if.else.if.end23_crit_edge, label %cond.true.i

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

cond.true.i:                                      ; preds = %if.else
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %33) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.cleanup99_crit_edge, label %cond.true.i.if.end23_crit_edge

cond.true.i.if.end23_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

cond.true.i.cleanup99_crit_edge:                  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.end23:                                         ; preds = %cond.true.i.if.end23_crit_edge, %if.else.if.end23_crit_edge, %if.end12
  %mic_len.0 = phi i32 [ %31, %if.end12 ], [ 16, %cond.true.i.if.end23_crit_edge ], [ 16, %if.else.if.end23_crit_edge ]
  %34 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %skb, align 4
  %data25 = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 19
  %36 = ptrtoint ptr %data25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data25, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len, align 4
  %40 = add i32 %call4, %mic_len.0
  %41 = sub i32 -8, %40
  %sub27 = add i32 %41, %39
  %sta = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 4
  %42 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sta, align 4
  %tobool28.not = icmp eq ptr %43, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub27)
  %cmp = icmp slt i32 %sub27, 0
  %or.cond = select i1 %tobool28.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.end23.cleanup99_crit_edge, label %if.end30

if.end23.cleanup99_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.end30:                                         ; preds = %if.end23
  %44 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flag, align 8
  %and32 = and i32 %45, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end30.if.end88_crit_edge

if.end30.if.end88_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then34:                                        ; preds = %if.end30
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %47, i32 %call4
  %arrayidx.i = getelementptr i8, ptr %add.ptr, i32 7
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i, align 1
  %50 = ptrtoint ptr %pn to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %pn, align 1
  %arrayidx2.i = getelementptr i8, ptr %add.ptr, i32 6
  %51 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx2.i, align 1
  %53 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %6, align 1
  %arrayidx4.i = getelementptr i8, ptr %add.ptr, i32 5
  %54 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx4.i, align 1
  %56 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %7, align 1
  %arrayidx6.i = getelementptr i8, ptr %add.ptr, i32 4
  %57 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx6.i, align 1
  %59 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %8, align 1
  %arrayidx8.i = getelementptr i8, ptr %add.ptr, i32 1
  %60 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx8.i, align 1
  %62 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %9, align 1
  %63 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %add.ptr, align 1
  %65 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %10, align 1
  %security_idx = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 8
  %66 = ptrtoint ptr %security_idx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %security_idx, align 4
  %u = getelementptr inbounds %struct.ieee80211_key, ptr %5, i32 0, i32 5
  %arrayidx = getelementptr [17 x [6 x i8]], ptr %u, i32 0, i32 %67
  %call38 = call i32 @memcmp(ptr noundef nonnull dereferenceable(6) %pn, ptr noundef dereferenceable(6) %arrayidx, i32 noundef 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then34.if.then46_crit_edge, label %lor.lhs.false40

if.then34.if.then46_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

lor.lhs.false40:                                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool41.not = icmp eq i32 %call38, 0
  %and44 = and i32 %45, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %or.cond166 = select i1 %tobool41.not, i1 %tobool45.not, i1 false
  br i1 %or.cond166, label %lor.lhs.false40.if.then46_crit_edge, label %if.end48

lor.lhs.false40.if.then46_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

if.then46:                                        ; preds = %lor.lhs.false40.if.then46_crit_edge, %if.then34.if.then46_crit_edge
  %replays = getelementptr inbounds %struct.ieee80211_key, ptr %5, i32 0, i32 5, i32 0, i32 2, i32 1, i32 0, i32 2
  %68 = ptrtoint ptr %replays to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %replays, align 4
  %inc = add i32 %69, 1
  store i32 %inc, ptr %replays, align 4
  br label %cleanup99

if.end48:                                         ; preds = %lor.lhs.false40
  %and50 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.then52, label %if.end48.if.end71_crit_edge

if.end48.if.end71_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then52:                                        ; preds = %if.end48
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %aad) #8
  %70 = getelementptr inbounds [32 x i8], ptr %aad, i32 0, i32 2
  %71 = call ptr @memset(ptr %aad, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %j_0) #8
  %72 = call ptr @memset(ptr %j_0, i32 255, i32 16)
  call fastcc void @gcmp_special_blocks(ptr noundef %1, ptr noundef nonnull %pn, ptr noundef nonnull %j_0, ptr noundef nonnull %aad)
  %tfm = getelementptr inbounds %struct.ieee80211_key, ptr %5, i32 0, i32 5, i32 0, i32 2, i32 1, i32 0, i32 1
  %73 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tfm, align 8
  %75 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data, align 4
  %add.ptr60 = getelementptr i8, ptr %76, i32 %call4
  %add.ptr61 = getelementptr i8, ptr %add.ptr60, i32 8
  %77 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len, align 4
  %add.ptr64 = getelementptr i8, ptr %76, i32 %78
  %add.ptr65 = getelementptr i8, ptr %add.ptr64, i32 -16
  %79 = ptrtoint ptr %aad to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %aad, align 2
  %conv.i = zext i16 %80 to i32
  %call1.i = call i32 @aead_decrypt(ptr noundef %74, ptr noundef nonnull %j_0, ptr noundef %70, i32 noundef %conv.i, ptr noundef %add.ptr61, i32 noundef %sub27, ptr noundef %add.ptr65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool67.not = icmp eq i32 %call1.i, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %j_0) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %aad) #8
  br i1 %tobool67.not, label %if.then52.if.end71_crit_edge, label %if.then52.cleanup99_crit_edge

if.then52.cleanup99_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

if.then52.if.end71_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.end71:                                         ; preds = %if.then52.if.end71_crit_edge, %if.end48.if.end71_crit_edge
  %81 = call ptr @memcpy(ptr %arrayidx, ptr %pn, i32 6)
  %82 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %37, align 2
  %84 = and i16 %83, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %cmp.i.not.i = icmp eq i16 %84, 0
  br i1 %cmp.i.not.i, label %ieee80211_is_frag.exit, label %if.end71.if.then80_crit_edge, !prof !16

if.end71.if.then80_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80

ieee80211_is_frag.exit:                           ; preds = %if.end71
  %seq_ctrl.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %37, i32 0, i32 5
  %85 = ptrtoint ptr %seq_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %seq_ctrl.i, align 2
  %87 = and i16 %86, 3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool.i.not = icmp eq i16 %87, 0
  br i1 %tobool.i.not, label %ieee80211_is_frag.exit.if.end88_crit_edge, label %ieee80211_is_frag.exit.if.then80_crit_edge, !prof !14

ieee80211_is_frag.exit.if.then80_crit_edge:       ; preds = %ieee80211_is_frag.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80

ieee80211_is_frag.exit.if.end88_crit_edge:        ; preds = %ieee80211_is_frag.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then80:                                        ; preds = %ieee80211_is_frag.exit.if.then80_crit_edge, %if.end71.if.then80_crit_edge
  %88 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 9
  %89 = call ptr @memcpy(ptr %88, ptr %pn, i32 6)
  br label %if.end88

if.end88:                                         ; preds = %if.then80, %ieee80211_is_frag.exit.if.end88_crit_edge, %if.end30.if.end88_crit_edge
  %90 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len, align 4
  %sub90 = sub i32 %91, %mic_len.0
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %sub90)
  %cmp.i152 = icmp ugt i32 %91, %sub90
  br i1 %cmp.i152, label %cond.true.i155, label %if.end88.if.end94_crit_edge

if.end88.if.end94_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

cond.true.i155:                                   ; preds = %if.end88
  %data_len.i.i153 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %92 = ptrtoint ptr %data_len.i.i153 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %data_len.i.i153, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i.i154 = icmp eq i32 %93, 0
  br i1 %tobool.not.i.i154, label %__skb_trim.exit.i.i, label %pskb_trim.exit

__skb_trim.exit.i.i:                              ; preds = %cond.true.i155
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %sub90, ptr %len, align 4
  %95 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %96, i32 %sub90
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %97 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %add.ptr.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  br label %if.end94

pskb_trim.exit:                                   ; preds = %cond.true.i155
  %call.i.i156 = call i32 @___pskb_trim(ptr noundef %1, i32 noundef %sub90) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i156)
  %tobool92.not = icmp eq i32 %call.i.i156, 0
  br i1 %tobool92.not, label %pskb_trim.exit.if.end94_crit_edge, label %pskb_trim.exit.cleanup99_crit_edge

pskb_trim.exit.cleanup99_crit_edge:               ; preds = %pskb_trim.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup99

pskb_trim.exit.if.end94_crit_edge:                ; preds = %pskb_trim.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.end94:                                         ; preds = %pskb_trim.exit.if.end94_crit_edge, %__skb_trim.exit.i.i, %if.end88.if.end94_crit_edge
  %98 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data, align 4
  %add.ptr96 = getelementptr i8, ptr %99, i32 8
  %100 = call ptr @memmove(ptr %add.ptr96, ptr %99, i32 %call4)
  %call98 = call ptr @skb_pull(ptr noundef %1, i32 noundef 8) #8
  br label %cleanup99

cleanup99:                                        ; preds = %if.end94, %pskb_trim.exit.cleanup99_crit_edge, %if.then52.cleanup99_crit_edge, %if.then46, %if.end23.cleanup99_crit_edge, %cond.true.i.cleanup99_crit_edge, %pskb_may_pull.exit.cleanup99_crit_edge, %if.end.i149.cleanup99_crit_edge, %if.end9.i.i.cleanup99_crit_edge, %if.end9.i.i.cleanup99_crit_edge168, %if.end9.i.i.cleanup99_crit_edge169, %if.end9.i.i.cleanup99_crit_edge170, %if.end9.i.i.cleanup99_crit_edge171, %if.end9.i.i.cleanup99_crit_edge172, %if.end9.i.i.cleanup99_crit_edge173, %if.end.i.cleanup99_crit_edge, %land.lhs.true.cleanup99_crit_edge
  %retval.3 = phi i32 [ 0, %if.end94 ], [ 1, %pskb_may_pull.exit.cleanup99_crit_edge ], [ 1, %if.end23.cleanup99_crit_edge ], [ 1, %if.then46 ], [ 1, %pskb_trim.exit.cleanup99_crit_edge ], [ 1, %if.then52.cleanup99_crit_edge ], [ 0, %land.lhs.true.cleanup99_crit_edge ], [ 0, %if.end9.i.i.cleanup99_crit_edge ], [ 0, %if.end9.i.i.cleanup99_crit_edge168 ], [ 0, %if.end9.i.i.cleanup99_crit_edge169 ], [ 0, %if.end9.i.i.cleanup99_crit_edge170 ], [ 0, %if.end9.i.i.cleanup99_crit_edge171 ], [ 0, %if.end9.i.i.cleanup99_crit_edge172 ], [ 0, %if.end9.i.i.cleanup99_crit_edge173 ], [ 1, %cond.true.i.cleanup99_crit_edge ], [ 0, %if.end.i.cleanup99_crit_edge ], [ 1, %if.end.i149.cleanup99_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %pn) #8
  ret i32 %retval.3
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @gcmp_special_blocks(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %pn, ptr nocapture noundef writeonly %j_0, ptr nocapture noundef writeonly %aad) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 3
  %2 = call ptr @memcpy(ptr %j_0, ptr %addr2, i32 6)
  %arrayidx = getelementptr i8, ptr %j_0, i32 6
  %3 = call ptr @memcpy(ptr %arrayidx, ptr %pn, i32 6)
  %arrayidx1 = getelementptr i8, ptr %j_0, i32 13
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %j_0, i32 14
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr i8, ptr %j_0, i32 15
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %arrayidx3, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 2
  %call = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %8) #11
  %9 = trunc i32 %call to i16
  %conv = add i16 %9, -2
  %10 = ptrtoint ptr %aad to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %conv, ptr %aad, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 2
  %13 = and i16 %12, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.i = icmp eq i16 %13, 0
  %spec.select.v = select i1 %cmp.i, i16 -121, i16 -28793
  %spec.select = and i16 %spec.select.v, %12
  %14 = or i16 %spec.select, 64
  %arrayidx15 = getelementptr i8, ptr %aad, i32 2
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %arrayidx15, align 1
  %arrayidx16 = getelementptr i8, ptr %aad, i32 4
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 2
  %16 = call ptr @memcpy(ptr %arrayidx16, ptr %addr1, i32 18)
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %seq_ctrl, align 2
  %19 = and i8 %18, 15
  %arrayidx20 = getelementptr i8, ptr %aad, i32 22
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx20, align 1
  %arrayidx21 = getelementptr i8, ptr %aad, i32 23
  %21 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx21, align 1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %1, align 2
  %24 = and i16 %23, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %24)
  %cmp.i64 = icmp eq i16 %24, -30720
  %25 = and i16 %23, 3
  br i1 %cmp.i64, label %if.then24, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %25)
  %cmp.i.i.i = icmp eq i16 %25, 3
  %retval.0.v.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  %retval.0.i.i = getelementptr i8, ptr %1, i32 %retval.0.v.i.i
  %26 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %retval.0.i.i, align 1
  %28 = and i8 %27, 15
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %entry.if.end26_crit_edge
  %qos_tid.0 = phi i8 [ %28, %if.then24 ], [ 0, %entry.if.end26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %25)
  %cmp.i65 = icmp eq i16 %25, 3
  %arrayidx30 = getelementptr i8, ptr %aad, i32 24
  br i1 %cmp.i65, label %if.then29, label %if.else34

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %addr4 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 6
  %29 = call ptr @memcpy(ptr %arrayidx30, ptr %addr4, i32 6)
  %arrayidx32 = getelementptr i8, ptr %aad, i32 30
  %30 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %qos_tid.0, ptr %arrayidx32, align 1
  %arrayidx33 = getelementptr i8, ptr %aad, i32 31
  %31 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx33, align 1
  br label %if.end37

if.else34:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 0, ptr %arrayidx30, align 1
  store i8 %qos_tid.0, ptr %arrayidx30, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.then29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_aes_cmac_encrypt(ptr noundef readonly %tx) local_unnamed_addr #0 align 64 {
entry:
  %aad = alloca [20 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %key1 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %tx, i32 0, i32 5
  %0 = ptrtoint ptr %key1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key1, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %aad) #8
  %2 = getelementptr inbounds [20 x i8], ptr %aad, i32 0, i32 2
  %qlen.i = getelementptr inbounds %struct.ieee80211_tx_data, ptr %tx, i32 0, i32 1, i32 1
  %3 = call ptr @memset(ptr %aad, i32 255, i32 20)
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end22, label %do.end, !prof !14

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 949, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end22:                                         ; preds = %entry
  %skbs = getelementptr inbounds %struct.ieee80211_tx_data, ptr %tx, i32 0, i32 1
  %6 = ptrtoint ptr %skbs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skbs, align 4
  %cmp.i = icmp eq ptr %7, %skbs
  %spec.store.select.i = select i1 %cmp.i, ptr null, ptr %7
  %hw_key = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 3, i32 28
  %8 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_key, align 4
  %tobool26.not = icmp eq ptr %9, null
  br i1 %tobool26.not, label %if.end22.if.end29_crit_edge, label %land.lhs.true

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end22
  %flags = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 8, i32 6
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags, align 8
  %12 = and i16 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool27.not = icmp eq i16 %12, 0
  br i1 %tobool27.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true.if.end29_crit_edge, %if.end22.if.end29_crit_edge
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 7
  %13 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %if.end29.do.end49_crit_edge

if.end29.do.end49_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49

skb_tailroom.exit:                                ; preds = %if.end29
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 17
  %15 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 16
  %17 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %sub.ptr.sub.i)
  %cmp32 = icmp ult i32 %sub.ptr.sub.i, 18
  br i1 %cmp32, label %skb_tailroom.exit.do.end49_crit_edge, label %if.end65, !prof !15

skb_tailroom.exit.do.end49_crit_edge:             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49

do.end49:                                         ; preds = %skb_tailroom.exit.do.end49_crit_edge, %if.end29.do.end49_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 960, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end65:                                         ; preds = %skb_tailroom.exit
  %call66 = tail call ptr @skb_put(ptr noundef %spec.store.select.i, i32 noundef 18) #8
  %19 = ptrtoint ptr %call66 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 76, ptr %call66, align 1
  %length = getelementptr inbounds %struct.ieee80211_mmie, ptr %call66, i32 0, i32 1
  %20 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 16, ptr %length, align 1
  %conf67 = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 8
  %keyidx = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 8, i32 5
  %21 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %keyidx, align 1
  %conv68 = sext i8 %22 to i16
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv68)
  %key_id = getelementptr inbounds %struct.ieee80211_mmie, ptr %call66, i32 0, i32 2
  %24 = ptrtoint ptr %key_id to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %key_id, align 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %conf67, i32 noundef 8) #8
  %call.i2.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef %conf67) #8
  %sequence_number = getelementptr inbounds %struct.ieee80211_mmie, ptr %call66, i32 0, i32 3
  %conv.i = trunc i64 %call.i2.i to i8
  %incdec.ptr.i = getelementptr %struct.ieee80211_mmie, ptr %call66, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %sequence_number to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv.i, ptr %sequence_number, align 1
  %shr.i = lshr i64 %call.i2.i, 8
  %conv1.i = trunc i64 %shr.i to i8
  %incdec.ptr2.i = getelementptr %struct.ieee80211_mmie, ptr %call66, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv1.i, ptr %incdec.ptr.i, align 1
  %shr3.i = lshr i64 %call.i2.i, 16
  %conv4.i = trunc i64 %shr3.i to i8
  %incdec.ptr5.i = getelementptr %struct.ieee80211_mmie, ptr %call66, i32 0, i32 3, i32 3
  %27 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv4.i, ptr %incdec.ptr2.i, align 1
  %shr6.i = lshr i64 %call.i2.i, 24
  %conv7.i = trunc i64 %shr6.i to i8
  %incdec.ptr8.i = getelementptr %struct.ieee80211_mmie, ptr %call66, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv7.i, ptr %incdec.ptr5.i, align 1
  %shr9.i = lshr i64 %call.i2.i, 32
  %conv10.i = trunc i64 %shr9.i to i8
  %incdec.ptr11.i = getelementptr %struct.ieee80211_mmie, ptr %call66, i32 0, i32 3, i32 5
  %29 = ptrtoint ptr %incdec.ptr8.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv10.i, ptr %incdec.ptr8.i, align 1
  %shr12.i = lshr i64 %call.i2.i, 40
  %conv13.i = trunc i64 %shr12.i to i8
  %30 = ptrtoint ptr %incdec.ptr11.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv13.i, ptr %incdec.ptr11.i, align 1
  %31 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_key, align 4
  %tobool72.not = icmp eq ptr %32, null
  br i1 %tobool72.not, label %if.end74, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end74:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 19
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %34, align 2
  %37 = and i16 %36, -57
  %38 = ptrtoint ptr %aad to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %aad, align 2
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %34, i32 0, i32 2
  %39 = call ptr @memcpy(ptr %2, ptr %addr1.i, i32 18)
  %tfm = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 2
  %40 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tfm, align 8
  %add.ptr = getelementptr i8, ptr %34, i32 24
  %len = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 6
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len, align 4
  %sub = add i32 %43, -24
  %mic = getelementptr inbounds %struct.ieee80211_mmie, ptr %call66, i32 0, i32 4
  call void @ieee80211_aes_cmac(ptr noundef %41, ptr noundef nonnull %aad, ptr noundef %add.ptr, i32 noundef %sub, ptr noundef %mic) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.end65.cleanup_crit_edge, %do.end49, %land.lhs.true.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %do.end49 ], [ 0, %if.end74 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end65.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %aad) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_aes_cmac(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_aes_cmac_256_encrypt(ptr noundef readonly %tx) local_unnamed_addr #0 align 64 {
entry:
  %aad = alloca [20 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %key1 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %tx, i32 0, i32 5
  %0 = ptrtoint ptr %key1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key1, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %aad) #8
  %2 = getelementptr inbounds [20 x i8], ptr %aad, i32 0, i32 2
  %qlen.i = getelementptr inbounds %struct.ieee80211_tx_data, ptr %tx, i32 0, i32 1, i32 1
  %3 = call ptr @memset(ptr %aad, i32 255, i32 20)
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end22, label %do.end, !prof !14

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 997, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end22:                                         ; preds = %entry
  %skbs = getelementptr inbounds %struct.ieee80211_tx_data, ptr %tx, i32 0, i32 1
  %6 = ptrtoint ptr %skbs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skbs, align 4
  %cmp.i = icmp eq ptr %7, %skbs
  %spec.store.select.i = select i1 %cmp.i, ptr null, ptr %7
  %hw_key = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 3, i32 28
  %8 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_key, align 4
  %tobool26.not = icmp eq ptr %9, null
  br i1 %tobool26.not, label %if.end28, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %if.end28.do.end47_crit_edge

if.end28.do.end47_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

skb_tailroom.exit:                                ; preds = %if.end28
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 17
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %sub.ptr.sub.i)
  %cmp31 = icmp ult i32 %sub.ptr.sub.i, 26
  br i1 %cmp31, label %skb_tailroom.exit.do.end47_crit_edge, label %if.end63, !prof !15

skb_tailroom.exit.do.end47_crit_edge:             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

do.end47:                                         ; preds = %skb_tailroom.exit.do.end47_crit_edge, %if.end28.do.end47_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1007, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end63:                                         ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call64 = tail call ptr @skb_put(ptr noundef %spec.store.select.i, i32 noundef 26) #8
  %16 = ptrtoint ptr %call64 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 76, ptr %call64, align 1
  %length = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %call64, i32 0, i32 1
  %17 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 24, ptr %length, align 1
  %conf = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 8
  %keyidx = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 8, i32 5
  %18 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %keyidx, align 1
  %conv = sext i8 %19 to i16
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %key_id = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %call64, i32 0, i32 2
  %21 = ptrtoint ptr %key_id to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %20, ptr %key_id, align 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %conf, i32 noundef 8) #8
  %call.i2.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef %conf) #8
  %sequence_number = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %call64, i32 0, i32 3
  %conv.i = trunc i64 %call.i2.i to i8
  %incdec.ptr.i = getelementptr %struct.ieee80211_mmie_16, ptr %call64, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %sequence_number to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i, ptr %sequence_number, align 1
  %shr.i = lshr i64 %call.i2.i, 8
  %conv1.i = trunc i64 %shr.i to i8
  %incdec.ptr2.i = getelementptr %struct.ieee80211_mmie_16, ptr %call64, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv1.i, ptr %incdec.ptr.i, align 1
  %shr3.i = lshr i64 %call.i2.i, 16
  %conv4.i = trunc i64 %shr3.i to i8
  %incdec.ptr5.i = getelementptr %struct.ieee80211_mmie_16, ptr %call64, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv4.i, ptr %incdec.ptr2.i, align 1
  %shr6.i = lshr i64 %call.i2.i, 24
  %conv7.i = trunc i64 %shr6.i to i8
  %incdec.ptr8.i = getelementptr %struct.ieee80211_mmie_16, ptr %call64, i32 0, i32 3, i32 4
  %25 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv7.i, ptr %incdec.ptr5.i, align 1
  %shr9.i = lshr i64 %call.i2.i, 32
  %conv10.i = trunc i64 %shr9.i to i8
  %incdec.ptr11.i = getelementptr %struct.ieee80211_mmie_16, ptr %call64, i32 0, i32 3, i32 5
  %26 = ptrtoint ptr %incdec.ptr8.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv10.i, ptr %incdec.ptr8.i, align 1
  %shr12.i = lshr i64 %call.i2.i, 40
  %conv13.i = trunc i64 %shr12.i to i8
  %27 = ptrtoint ptr %incdec.ptr11.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv13.i, ptr %incdec.ptr11.i, align 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 19
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %29, align 2
  %32 = and i16 %31, -57
  %33 = ptrtoint ptr %aad to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %aad, align 2
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %29, i32 0, i32 2
  %34 = call ptr @memcpy(ptr %2, ptr %addr1.i, i32 18)
  %tfm = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 2
  %35 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tfm, align 8
  %add.ptr = getelementptr i8, ptr %29, i32 24
  %len = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 6
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  %sub = add i32 %38, -24
  %mic = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %call64, i32 0, i32 4
  call void @ieee80211_aes_cmac_256(ptr noundef %36, ptr noundef nonnull %aad, ptr noundef %add.ptr, i32 noundef %sub, ptr noundef %mic) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %do.end47, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %do.end47 ], [ 0, %if.end63 ], [ 0, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %aad) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_aes_cmac_256(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_aes_cmac_decrypt(ptr nocapture noundef readonly %rx) local_unnamed_addr #0 align 64 {
entry:
  %aad = alloca [20 x i8], align 2
  %mic = alloca [8 x i8], align 8
  %ipn = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %skb1 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 1
  %0 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb1, align 4
  %key2 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 5
  %2 = ptrtoint ptr %key2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key2, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %aad) #8
  %4 = getelementptr inbounds [20 x i8], ptr %aad, i32 0, i32 2
  %5 = call ptr @memset(ptr %aad, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mic) #8
  %6 = ptrtoint ptr %mic to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %mic, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %ipn) #8
  %7 = getelementptr inbounds [6 x i8], ptr %ipn, i32 0, i32 1
  %8 = getelementptr inbounds [6 x i8], ptr %ipn, i32 0, i32 2
  %9 = getelementptr inbounds [6 x i8], ptr %ipn, i32 0, i32 3
  %10 = getelementptr inbounds [6 x i8], ptr %ipn, i32 0, i32 4
  %11 = getelementptr inbounds [6 x i8], ptr %ipn, i32 0, i32 5
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 2
  %16 = and i16 %15, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp.i = icmp eq i16 %16, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %18)
  %cmp = icmp ult i32 %18, 42
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %13, i32 %18
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 -18
  %19 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %20)
  %cmp9.not = icmp eq i8 %20, 76
  br i1 %cmp9.not, label %lor.lhs.false, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end5
  %length = getelementptr inbounds %struct.ieee80211_mmie, ptr %add.ptr8, i32 0, i32 1
  %21 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %22)
  %cmp12.not = icmp eq i8 %22, 16
  br i1 %cmp12.not, label %if.end15, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %sequence_number = getelementptr inbounds %struct.ieee80211_mmie, ptr %add.ptr8, i32 0, i32 3
  %arrayidx.i = getelementptr i8, ptr %sequence_number, i32 5
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 1
  %25 = ptrtoint ptr %ipn to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %ipn, align 1
  %arrayidx1.i = getelementptr i8, ptr %sequence_number, i32 4
  %26 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx1.i, align 1
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %7, align 1
  %arrayidx3.i = getelementptr i8, ptr %sequence_number, i32 3
  %29 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx3.i, align 1
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %8, align 1
  %arrayidx5.i = getelementptr i8, ptr %sequence_number, i32 2
  %32 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx5.i, align 1
  %34 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %9, align 1
  %arrayidx7.i = getelementptr i8, ptr %sequence_number, i32 1
  %35 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx7.i, align 1
  %37 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %10, align 1
  %38 = ptrtoint ptr %sequence_number to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sequence_number, align 1
  %40 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %11, align 1
  %u = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 5
  %call19 = call i32 @memcmp(ptr noundef nonnull dereferenceable(6) %ipn, ptr noundef dereferenceable(6) %u, i32 noundef 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 1
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %replays = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 3
  %41 = ptrtoint ptr %replays to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %replays, align 4
  %inc = add i32 %42, 1
  store i32 %inc, ptr %replays, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  %flag = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %43 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flag, align 8
  %and = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then25, label %if.end24.if.end42_crit_edge

if.end24.if.end42_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then25:                                        ; preds = %if.end24
  %45 = and i16 %15, -57
  %46 = ptrtoint ptr %aad to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %aad, align 2
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %13, i32 0, i32 2
  %47 = call ptr @memcpy(ptr %4, ptr %addr1.i, i32 18)
  %tfm = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 2
  %48 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tfm, align 8
  %add.ptr30 = getelementptr i8, ptr %13, i32 24
  %sub = add i32 %18, -24
  call void @ieee80211_aes_cmac(ptr noundef %49, ptr noundef nonnull %aad, ptr noundef %add.ptr30, i32 noundef %sub, ptr noundef nonnull %mic) #8
  %mic34 = getelementptr inbounds %struct.ieee80211_mmie, ptr %add.ptr8, i32 0, i32 4
  %call.i = call i32 @__crypto_memneq(ptr noundef nonnull %mic, ptr noundef %mic34, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i.not, label %if.then25.if.end42_crit_edge, label %if.then38

if.then25.if.end42_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then38:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %icverrors = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 4
  %50 = ptrtoint ptr %icverrors to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %icverrors, align 8
  %inc40 = add i32 %51, 1
  store i32 %inc40, ptr %icverrors, align 8
  br label %cleanup

if.end42:                                         ; preds = %if.then25.if.end42_crit_edge, %if.end24.if.end42_crit_edge
  %52 = call ptr @memcpy(ptr %u, ptr %ipn, i32 6)
  %53 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len, align 4
  %sub48 = add i32 %54, -18
  call void @skb_trim(ptr noundef %1, i32 noundef %sub48) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then38, %if.then22, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then22 ], [ 0, %if.end42 ], [ 1, %if.then38 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %ipn) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mic) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %aad) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_aes_cmac_256_decrypt(ptr nocapture noundef readonly %rx) local_unnamed_addr #0 align 64 {
entry:
  %aad = alloca [20 x i8], align 2
  %mic = alloca [16 x i8], align 1
  %ipn = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %skb1 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 1
  %0 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb1, align 4
  %key2 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 5
  %2 = ptrtoint ptr %key2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key2, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %aad) #8
  %4 = getelementptr inbounds [20 x i8], ptr %aad, i32 0, i32 2
  %5 = call ptr @memset(ptr %aad, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mic) #8
  %6 = call ptr @memset(ptr %mic, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %ipn) #8
  %7 = getelementptr inbounds [6 x i8], ptr %ipn, i32 0, i32 1
  %8 = getelementptr inbounds [6 x i8], ptr %ipn, i32 0, i32 2
  %9 = getelementptr inbounds [6 x i8], ptr %ipn, i32 0, i32 3
  %10 = getelementptr inbounds [6 x i8], ptr %ipn, i32 0, i32 4
  %11 = getelementptr inbounds [6 x i8], ptr %ipn, i32 0, i32 5
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 2
  %16 = and i16 %15, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp.i = icmp eq i16 %16, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %18)
  %cmp = icmp ult i32 %18, 50
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %13, i32 %18
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 -26
  %19 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %20)
  %cmp9.not = icmp eq i8 %20, 76
  br i1 %cmp9.not, label %lor.lhs.false, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end5
  %length = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %add.ptr8, i32 0, i32 1
  %21 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %22)
  %cmp12.not = icmp eq i8 %22, 24
  br i1 %cmp12.not, label %if.end15, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %sequence_number = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %add.ptr8, i32 0, i32 3
  %arrayidx.i = getelementptr i8, ptr %sequence_number, i32 5
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 1
  %25 = ptrtoint ptr %ipn to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %ipn, align 1
  %arrayidx1.i = getelementptr i8, ptr %sequence_number, i32 4
  %26 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx1.i, align 1
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %7, align 1
  %arrayidx3.i = getelementptr i8, ptr %sequence_number, i32 3
  %29 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx3.i, align 1
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %8, align 1
  %arrayidx5.i = getelementptr i8, ptr %sequence_number, i32 2
  %32 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx5.i, align 1
  %34 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %9, align 1
  %arrayidx7.i = getelementptr i8, ptr %sequence_number, i32 1
  %35 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx7.i, align 1
  %37 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %10, align 1
  %38 = ptrtoint ptr %sequence_number to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sequence_number, align 1
  %40 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %11, align 1
  %u = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 5
  %call19 = call i32 @memcmp(ptr noundef nonnull dereferenceable(6) %ipn, ptr noundef dereferenceable(6) %u, i32 noundef 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 1
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %replays = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 3
  %41 = ptrtoint ptr %replays to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %replays, align 4
  %inc = add i32 %42, 1
  store i32 %inc, ptr %replays, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  %flag = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %43 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flag, align 8
  %and = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then25, label %if.end24.if.end42_crit_edge

if.end24.if.end42_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then25:                                        ; preds = %if.end24
  %45 = and i16 %15, -57
  %46 = ptrtoint ptr %aad to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %aad, align 2
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %13, i32 0, i32 2
  %47 = call ptr @memcpy(ptr %4, ptr %addr1.i, i32 18)
  %tfm = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 2
  %48 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tfm, align 8
  %add.ptr30 = getelementptr i8, ptr %13, i32 24
  %sub = add i32 %18, -24
  call void @ieee80211_aes_cmac_256(ptr noundef %49, ptr noundef nonnull %aad, ptr noundef %add.ptr30, i32 noundef %sub, ptr noundef nonnull %mic) #8
  %mic34 = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %add.ptr8, i32 0, i32 4
  %call.i = call i32 @__crypto_memneq(ptr noundef nonnull %mic, ptr noundef %mic34, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i.not, label %if.then25.if.end42_crit_edge, label %if.then38

if.then25.if.end42_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then38:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %icverrors = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 4
  %50 = ptrtoint ptr %icverrors to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %icverrors, align 8
  %inc40 = add i32 %51, 1
  store i32 %inc40, ptr %icverrors, align 8
  br label %cleanup

if.end42:                                         ; preds = %if.then25.if.end42_crit_edge, %if.end24.if.end42_crit_edge
  %52 = call ptr @memcpy(ptr %u, ptr %ipn, i32 6)
  %53 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len, align 4
  %sub48 = add i32 %54, -26
  call void @skb_trim(ptr noundef %1, i32 noundef %sub48) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then38, %if.then22, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then22 ], [ 0, %if.end42 ], [ 1, %if.then38 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %ipn) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mic) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %aad) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_aes_gmac_encrypt(ptr noundef readonly %tx) local_unnamed_addr #0 align 64 {
entry:
  %aad = alloca [20 x i8], align 2
  %nonce = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %key1 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %tx, i32 0, i32 5
  %0 = ptrtoint ptr %key1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key1, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %aad) #8
  %2 = getelementptr inbounds [20 x i8], ptr %aad, i32 0, i32 2
  %3 = call ptr @memset(ptr %aad, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nonce) #8
  %4 = getelementptr inbounds [12 x i8], ptr %nonce, i32 0, i32 6
  %5 = getelementptr inbounds [12 x i8], ptr %nonce, i32 0, i32 7
  %6 = getelementptr inbounds [12 x i8], ptr %nonce, i32 0, i32 8
  %7 = getelementptr inbounds [12 x i8], ptr %nonce, i32 0, i32 9
  %8 = getelementptr inbounds [12 x i8], ptr %nonce, i32 0, i32 10
  %9 = getelementptr inbounds [12 x i8], ptr %nonce, i32 0, i32 11
  %qlen.i = getelementptr inbounds %struct.ieee80211_tx_data, ptr %tx, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not = icmp eq i32 %11, 1
  br i1 %cmp.not, label %if.end22, label %do.end, !prof !14

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1142, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end22:                                         ; preds = %entry
  %skbs = getelementptr inbounds %struct.ieee80211_tx_data, ptr %tx, i32 0, i32 1
  %12 = ptrtoint ptr %skbs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skbs, align 4
  %cmp.i = icmp eq ptr %13, %skbs
  %spec.store.select.i = select i1 %cmp.i, ptr null, ptr %13
  %hw_key = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 3, i32 28
  %14 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_key, align 4
  %tobool26.not = icmp eq ptr %15, null
  br i1 %tobool26.not, label %if.end28, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 7
  %16 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i = icmp eq i32 %17, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %if.end28.do.end47_crit_edge

if.end28.do.end47_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

skb_tailroom.exit:                                ; preds = %if.end28
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 17
  %18 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %sub.ptr.sub.i)
  %cmp31 = icmp ult i32 %sub.ptr.sub.i, 26
  br i1 %cmp31, label %skb_tailroom.exit.do.end47_crit_edge, label %if.end63, !prof !15

skb_tailroom.exit.do.end47_crit_edge:             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

do.end47:                                         ; preds = %skb_tailroom.exit.do.end47_crit_edge, %if.end28.do.end47_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1152, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end63:                                         ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call64 = tail call ptr @skb_put(ptr noundef %spec.store.select.i, i32 noundef 26) #8
  %22 = ptrtoint ptr %call64 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 76, ptr %call64, align 1
  %length = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %call64, i32 0, i32 1
  %23 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 24, ptr %length, align 1
  %conf = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 8
  %keyidx = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 8, i32 5
  %24 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %keyidx, align 1
  %conv = sext i8 %25 to i16
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %key_id = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %call64, i32 0, i32 2
  %27 = ptrtoint ptr %key_id to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %26, ptr %key_id, align 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %conf, i32 noundef 8) #8
  %call.i2.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef %conf) #8
  %sequence_number = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %call64, i32 0, i32 3
  %conv.i = trunc i64 %call.i2.i to i8
  %incdec.ptr.i = getelementptr %struct.ieee80211_mmie_16, ptr %call64, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %sequence_number to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i, ptr %sequence_number, align 1
  %shr.i = lshr i64 %call.i2.i, 8
  %conv1.i = trunc i64 %shr.i to i8
  %incdec.ptr2.i = getelementptr %struct.ieee80211_mmie_16, ptr %call64, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv1.i, ptr %incdec.ptr.i, align 1
  %shr3.i = lshr i64 %call.i2.i, 16
  %conv4.i = trunc i64 %shr3.i to i8
  %incdec.ptr5.i = getelementptr %struct.ieee80211_mmie_16, ptr %call64, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv4.i, ptr %incdec.ptr2.i, align 1
  %shr6.i = lshr i64 %call.i2.i, 24
  %conv7.i = trunc i64 %shr6.i to i8
  %incdec.ptr8.i = getelementptr %struct.ieee80211_mmie_16, ptr %call64, i32 0, i32 3, i32 4
  %31 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv7.i, ptr %incdec.ptr5.i, align 1
  %shr9.i = lshr i64 %call.i2.i, 32
  %conv10.i = trunc i64 %shr9.i to i8
  %incdec.ptr11.i = getelementptr %struct.ieee80211_mmie_16, ptr %call64, i32 0, i32 3, i32 5
  %32 = ptrtoint ptr %incdec.ptr8.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv10.i, ptr %incdec.ptr8.i, align 1
  %shr12.i = lshr i64 %call.i2.i, 40
  %conv13.i = trunc i64 %shr12.i to i8
  %33 = ptrtoint ptr %incdec.ptr11.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv13.i, ptr %incdec.ptr11.i, align 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 19
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %35, align 2
  %38 = and i16 %37, -57
  %39 = ptrtoint ptr %aad to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %aad, align 2
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %35, i32 0, i32 2
  %40 = call ptr @memcpy(ptr %2, ptr %addr1.i, i32 18)
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %35, i32 0, i32 3
  %41 = call ptr @memcpy(ptr %nonce, ptr %addr2, i32 6)
  %42 = load i8, ptr %incdec.ptr11.i, align 1
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %4, align 1
  %44 = load i8, ptr %incdec.ptr8.i, align 1
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %5, align 1
  %46 = load i8, ptr %incdec.ptr5.i, align 1
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %6, align 1
  %48 = load i8, ptr %incdec.ptr2.i, align 1
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %7, align 1
  %50 = load i8, ptr %incdec.ptr.i, align 1
  %51 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %8, align 1
  %52 = load i8, ptr %sequence_number, align 1
  %53 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %9, align 1
  %tfm = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 2
  %54 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tfm, align 8
  %add.ptr76 = getelementptr i8, ptr %35, i32 24
  %len = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 6
  %56 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len, align 4
  %sub = add i32 %57, -24
  %mic = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %call64, i32 0, i32 4
  %call78 = call i32 @ieee80211_aes_gmac(ptr noundef %55, ptr noundef nonnull %aad, ptr noundef nonnull %nonce, ptr noundef %add.ptr76, i32 noundef %sub, ptr noundef %mic) #8
  %call78.lobit = lshr i32 %call78, 31
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %do.end47, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %do.end47 ], [ 0, %if.end22.cleanup_crit_edge ], [ %call78.lobit, %if.end63 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nonce) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %aad) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_aes_gmac(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_aes_gmac_decrypt(ptr nocapture noundef readonly %rx) local_unnamed_addr #0 align 64 {
entry:
  %aad = alloca [20 x i8], align 2
  %ipn = alloca [6 x i8], align 1
  %nonce = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %skb1 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 1
  %0 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb1, align 4
  %key2 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 5
  %2 = ptrtoint ptr %key2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key2, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %aad) #8
  %4 = getelementptr inbounds [20 x i8], ptr %aad, i32 0, i32 2
  %5 = call ptr @memset(ptr %aad, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %ipn) #8
  %6 = getelementptr inbounds [6 x i8], ptr %ipn, i32 0, i32 1
  %7 = getelementptr inbounds [6 x i8], ptr %ipn, i32 0, i32 2
  %8 = getelementptr inbounds [6 x i8], ptr %ipn, i32 0, i32 3
  %9 = getelementptr inbounds [6 x i8], ptr %ipn, i32 0, i32 4
  %10 = getelementptr inbounds [6 x i8], ptr %ipn, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nonce) #8
  %11 = getelementptr inbounds [12 x i8], ptr %nonce, i32 0, i32 6
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %12 = call ptr @memset(ptr %nonce, i32 255, i32 12)
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %14, align 2
  %17 = and i16 %16, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp.i = icmp eq i16 %17, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %19)
  %cmp = icmp ult i32 %19, 50
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %14, i32 %19
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 -26
  %20 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %21)
  %cmp9.not = icmp eq i8 %21, 76
  br i1 %cmp9.not, label %lor.lhs.false, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end5
  %length = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %add.ptr8, i32 0, i32 1
  %22 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %23)
  %cmp12.not = icmp eq i8 %23, 24
  br i1 %cmp12.not, label %if.end15, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %sequence_number = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %add.ptr8, i32 0, i32 3
  %arrayidx.i = getelementptr i8, ptr %sequence_number, i32 5
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i, align 1
  %26 = ptrtoint ptr %ipn to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %ipn, align 1
  %arrayidx1.i = getelementptr i8, ptr %sequence_number, i32 4
  %27 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1.i, align 1
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %6, align 1
  %arrayidx3.i = getelementptr i8, ptr %sequence_number, i32 3
  %30 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx3.i, align 1
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %7, align 1
  %arrayidx5.i = getelementptr i8, ptr %sequence_number, i32 2
  %33 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx5.i, align 1
  %35 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %8, align 1
  %arrayidx7.i = getelementptr i8, ptr %sequence_number, i32 1
  %36 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx7.i, align 1
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %9, align 1
  %39 = ptrtoint ptr %sequence_number to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sequence_number, align 1
  %41 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %10, align 1
  %u = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 5
  %call19 = call i32 @memcmp(ptr noundef nonnull dereferenceable(6) %ipn, ptr noundef dereferenceable(6) %u, i32 noundef 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 1
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %replays = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 3
  %42 = ptrtoint ptr %replays to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %replays, align 4
  %inc = add i32 %43, 1
  store i32 %inc, ptr %replays, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  %flag = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %44 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flag, align 8
  %and = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then25, label %if.end24.if.end54_crit_edge

if.end24.if.end54_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then25:                                        ; preds = %if.end24
  %46 = and i16 %16, -57
  %47 = ptrtoint ptr %aad to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %aad, align 2
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 2
  %48 = call ptr @memcpy(ptr %4, ptr %addr1.i, i32 18)
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 3
  %49 = call ptr @memcpy(ptr %nonce, ptr %addr2, i32 6)
  %50 = call ptr @memcpy(ptr %11, ptr %ipn, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %51 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 2592, i32 noundef 16) #13
  %tobool33.not = icmp eq ptr %call7.i, null
  br i1 %tobool33.not, label %if.then25.cleanup_crit_edge, label %if.end35

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35:                                         ; preds = %if.then25
  %tfm = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 2
  %52 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tfm, align 8
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data, align 4
  %add.ptr40 = getelementptr i8, ptr %55, i32 24
  %56 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len, align 4
  %sub = add i32 %57, -24
  %call42 = call i32 @ieee80211_aes_gmac(ptr noundef %53, ptr noundef nonnull %aad, ptr noundef nonnull %nonce, ptr noundef %add.ptr40, i32 noundef %sub, ptr noundef nonnull %call7.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.end35.if.then50_crit_edge, label %lor.lhs.false45

if.end35.if.then50_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

lor.lhs.false45:                                  ; preds = %if.end35
  %mic46 = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %add.ptr8, i32 0, i32 4
  %call.i = call i32 @__crypto_memneq(ptr noundef nonnull %call7.i, ptr noundef %mic46, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i.not, label %if.end53, label %lor.lhs.false45.if.then50_crit_edge

lor.lhs.false45.if.then50_crit_edge:              ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

if.then50:                                        ; preds = %lor.lhs.false45.if.then50_crit_edge, %if.end35.if.then50_crit_edge
  %icverrors = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 4
  %58 = ptrtoint ptr %icverrors to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %icverrors, align 8
  %inc52 = add i32 %59, 1
  store i32 %inc52, ptr %icverrors, align 8
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.end53:                                         ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end24.if.end54_crit_edge
  %60 = call ptr @memcpy(ptr %u, ptr %ipn, i32 6)
  %61 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len, align 4
  %sub60 = add i32 %62, -26
  call void @skb_trim(ptr noundef %1, i32 noundef %sub60) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then50, %if.then25.cleanup_crit_edge, %if.then22, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then22 ], [ 0, %if.end54 ], [ 1, %if.then50 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ], [ 1, %if.then25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nonce) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %ipn) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %aad) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_hw_encrypt(ptr noundef %tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %skbs = getelementptr inbounds %struct.ieee80211_tx_data, ptr %tx, i32 0, i32 1
  %0 = ptrtoint ptr %skbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %skb.022 = load ptr, ptr %skbs, align 4
  %cmp.not23 = icmp eq ptr %skb.022, %skbs
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %key = getelementptr inbounds %struct.ieee80211_tx_data, ptr %tx, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %skb.024 = phi ptr [ %skb.022, %for.body.lr.ph ], [ %skb.0, %for.inc.for.body_crit_edge ]
  %hw_key = getelementptr inbounds %struct.sk_buff, ptr %skb.024, i32 0, i32 3, i32 28
  %1 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_key, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %3 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %key, align 4
  %flags = getelementptr inbounds %struct.ieee80211_key, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.for.inc_crit_edge, label %if.then3

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then3:                                         ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.024, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %iv_len2.i = getelementptr inbounds %struct.ieee80211_key, ptr %4, i32 0, i32 8, i32 3
  %9 = ptrtoint ptr %iv_len2.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %iv_len2.i, align 1
  %11 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_key, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then3.if.end.i_crit_edge, label %land.lhs.true.i

if.then3.if.end.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then3
  %flags.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags.i, align 8
  %15 = and i16 %14, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool4.not.i = icmp eq i16 %15, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then3.if.end.i_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.024, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv6.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %conv6.i)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i.i, %conv6.i
  br i1 %cmp.i, label %land.rhs.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

land.rhs.i:                                       ; preds = %if.end.i
  %call9.i = tail call i32 @pskb_expand_head(ptr noundef %skb.024, i32 noundef %conv6.i, i32 noundef 0, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.rhs.i.if.end14.i_crit_edge, label %land.rhs.i.cleanup_crit_edge, !prof !14

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.i.if.end14.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.end14.i:                                       ; preds = %land.rhs.i.if.end14.i_crit_edge, %if.end.i.if.end14.i_crit_edge
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %8, align 2
  %call15.i = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %19) #11
  %call17.i = tail call ptr @skb_push(ptr noundef %skb.024, i32 noundef %conv6.i) #8
  %add.ptr.i = getelementptr i8, ptr %call17.i, i32 %conv6.i
  %20 = call ptr @memmove(ptr %call17.i, ptr %add.ptr.i, i32 %call15.i)
  br label %for.inc

for.inc:                                          ; preds = %if.end14.i, %land.lhs.true.i.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %21 = ptrtoint ptr %skb.024 to i32
  call void @__asan_load4_noabort(i32 %21)
  %skb.0 = load ptr, ptr %skb.024, align 4
  %cmp.not = icmp eq ptr %skb.0, %skbs
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @ieee80211_tx_set_protected(ptr noundef %tx) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.rhs.i.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ 1, %for.body.cleanup_crit_edge ], [ 1, %land.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_hw_decrypt(ptr nocapture noundef readonly %rx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sta = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 4
  %0 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sta, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true:                                    ; preds = %entry
  %cipher_scheme = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %cipher_scheme to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cipher_scheme, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.return_crit_edge, label %lor.lhs.false6.i

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false6.i:                                 ; preds = %land.lhs.true
  %key1.i = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 5
  %4 = ptrtoint ptr %key1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %key1.i, align 4
  %skb.i = getelementptr inbounds %struct.ieee80211_rx_data, ptr %rx, i32 0, i32 1
  %6 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 2
  %call.i = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %11) #11
  %flag.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 24
  %12 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flag.i, align 8
  %and.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false6.i.return_crit_edge, label %if.end.i

lor.lhs.false6.i.return_crit_edge:                ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false6.i
  %14 = and i16 %11, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %14)
  %cmp.i.i = icmp eq i16 %14, 2048
  br i1 %cmp.i.i, label %if.end11.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end11.i:                                       ; preds = %if.end.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  %hdr_len.i = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %hdr_len.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hdr_len.i, align 2
  %conv.i = zext i8 %18 to i32
  %19 = add i32 %call.i, %conv.i
  %sub15.i = sub i32 %16, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15.i)
  %cmp.i = icmp slt i32 %sub15.i, 0
  br i1 %cmp.i, label %if.end11.i.return_crit_edge, label %if.end18.i

if.end11.i.return_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end18.i:                                       ; preds = %if.end11.i
  %20 = and i16 %11, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %20)
  %cmp.i96.i = icmp eq i16 %20, -30720
  br i1 %cmp.i96.i, label %if.then21.i, label %if.end18.i.if.end23.i_crit_edge

if.end18.i.if.end23.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = and i16 %11, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %21)
  %cmp.i.i.i.i = icmp eq i16 %21, 3
  %retval.0.v.i.i.i = select i1 %cmp.i.i.i.i, i32 30, i32 24
  %retval.0.i.i.i = getelementptr i8, ptr %9, i32 %retval.0.v.i.i.i
  %22 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %retval.0.i.i.i, align 1
  %24 = and i8 %23, 15
  %phi.cast.i = zext i8 %24 to i32
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end23.i_crit_edge
  %qos_tid.0.i = phi i32 [ %phi.cast.i, %if.then21.i ], [ 0, %if.end18.i.if.end23.i_crit_edge ]
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 7
  %25 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.i.not.i.i, label %if.end23.i.if.end28.i_crit_edge, label %cond.true.i.i

if.end23.i.if.end28.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

cond.true.i.i:                                    ; preds = %if.end23.i
  %call.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %7, i32 noundef %26) #8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %cond.true.i.i.return_crit_edge, label %cond.true.i.i.if.end28.i_crit_edge

cond.true.i.i.if.end28.i_crit_edge:               ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

cond.true.i.i.return_crit_edge:                   ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end28.i:                                       ; preds = %cond.true.i.i.if.end28.i_crit_edge, %if.end23.i.if.end28.i_crit_edge
  %u.i = getelementptr inbounds %struct.ieee80211_key, ptr %5, i32 0, i32 5
  %arrayidx.i = getelementptr [17 x [16 x i8]], ptr %u.i, i32 0, i32 %qos_tid.0.i
  %27 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skb.i, align 4
  %data31.i = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %data31.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data31.i, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 %call.i
  %pn_off.i = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %3, i32 0, i32 4
  %31 = ptrtoint ptr %pn_off.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pn_off.i, align 4
  %conv32.i = zext i8 %32 to i32
  %add.ptr33.i = getelementptr i8, ptr %add.ptr.i, i32 %conv32.i
  %pn_len.i = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %3, i32 0, i32 3
  %33 = ptrtoint ptr %pn_len.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pn_len.i, align 1
  %conv34.i = zext i8 %34 to i32
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.else.i.i.for.cond.i.i_crit_edge, %if.end28.i
  %i.0.in.i.i = phi i32 [ %conv34.i, %if.end28.i ], [ %i.0.i.i, %if.else.i.i.for.cond.i.i_crit_edge ]
  %i.0.i.i = add nsw i32 %i.0.in.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i.i)
  %cmp.i97.i = icmp sgt i32 %i.0.in.i.i, 0
  br i1 %cmp.i97.i, label %for.body.i.i, label %for.cond.i.i.return_crit_edge

for.cond.i.i.return_crit_edge:                    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

for.body.i.i:                                     ; preds = %for.cond.i.i
  %arrayidx.i.i = getelementptr i8, ptr %add.ptr33.i, i32 %i.0.i.i
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx1.i.i = getelementptr i8, ptr %arrayidx.i, i32 %i.0.i.i
  %37 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx1.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %38)
  %cmp3.i.i = icmp ult i8 %36, %38
  br i1 %cmp3.i.i, label %for.body.i.i.return_crit_edge, label %if.else.i.i

for.body.i.i.return_crit_edge:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.else.i.i:                                      ; preds = %for.body.i.i
  %cmp9.i.i = icmp ugt i8 %36, %38
  br i1 %cmp9.i.i, label %if.end39.i, label %if.else.i.i.for.cond.i.i_crit_edge

if.else.i.i.for.cond.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

if.end39.i:                                       ; preds = %if.else.i.i
  %39 = call ptr @memcpy(ptr %arrayidx.i, ptr %add.ptr33.i, i32 %conv34.i)
  %40 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skb.i, align 4
  %len44.i = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %len44.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len44.i, align 4
  %mic_len.i = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %3, i32 0, i32 8
  %44 = ptrtoint ptr %mic_len.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %mic_len.i, align 4
  %conv45.i = zext i8 %45 to i32
  %sub46.i = sub i32 %43, %conv45.i
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %sub46.i)
  %cmp.i5 = icmp ugt i32 %43, %sub46.i
  br i1 %cmp.i5, label %cond.true.i, label %if.end39.i.if.end50.i_crit_edge

if.end39.i.if.end50.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

cond.true.i:                                      ; preds = %if.end39.i
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 7
  %46 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i, label %__skb_trim.exit.i.i, label %pskb_trim.exit

__skb_trim.exit.i.i:                              ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %len44.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub46.i, ptr %len44.i, align 4
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 19
  %49 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %50, i32 %sub46.i
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 16
  %51 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  br label %if.end50.i

pskb_trim.exit:                                   ; preds = %cond.true.i
  %call.i.i = tail call i32 @___pskb_trim(ptr noundef %41, i32 noundef %sub46.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool48.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool48.not.i, label %pskb_trim.exit.if.end50.i_crit_edge, label %pskb_trim.exit.return_crit_edge

pskb_trim.exit.return_crit_edge:                  ; preds = %pskb_trim.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

pskb_trim.exit.if.end50.i_crit_edge:              ; preds = %pskb_trim.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

if.end50.i:                                       ; preds = %pskb_trim.exit.if.end50.i_crit_edge, %__skb_trim.exit.i.i, %if.end39.i.if.end50.i_crit_edge
  %52 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %skb.i, align 4
  %data52.i = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 19
  %54 = ptrtoint ptr %data52.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data52.i, align 4
  %56 = ptrtoint ptr %hdr_len.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %hdr_len.i, align 2
  %conv54.i = zext i8 %57 to i32
  %add.ptr55.i = getelementptr i8, ptr %55, i32 %conv54.i
  %58 = call ptr @memmove(ptr %add.ptr55.i, ptr %55, i32 %call.i)
  %59 = load ptr, ptr %skb.i, align 4
  %60 = load i8, ptr %hdr_len.i, align 2
  %conv60.i = zext i8 %60 to i32
  %call61.i = tail call ptr @skb_pull(ptr noundef %59, i32 noundef %conv60.i) #8
  br label %return

return:                                           ; preds = %if.end50.i, %pskb_trim.exit.return_crit_edge, %for.body.i.i.return_crit_edge, %for.cond.i.i.return_crit_edge, %cond.true.i.i.return_crit_edge, %if.end11.i.return_crit_edge, %if.end.i.return_crit_edge, %lor.lhs.false6.i.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %land.lhs.true.return_crit_edge ], [ 1, %entry.return_crit_edge ], [ 0, %if.end50.i ], [ 1, %lor.lhs.false6.i.return_crit_edge ], [ 0, %if.end.i.return_crit_edge ], [ 1, %if.end11.i.return_crit_edge ], [ 1, %pskb_trim.exit.return_crit_edge ], [ 1, %cond.true.i.i.return_crit_edge ], [ 1, %for.cond.i.i.return_crit_edge ], [ 1, %for.body.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_tkip_add_iv(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_tkip_encrypt_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aead_encrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aead_decrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_add_return(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone willreturn }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mac80211/wpa.c", i32 70, i32 6}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{!"branch_weights", i32 2146410443, i32 1073205}
