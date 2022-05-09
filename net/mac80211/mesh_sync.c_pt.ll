; ModuleID = '/llk/IR_all_yes/net/mac80211/mesh_sync.c_pt.bc'
source_filename = "../net/mac80211/mesh_sync.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sync_method = type { i8, %struct.ieee80211_mesh_sync_ops }
%struct.ieee80211_mesh_sync_ops = type { ptr, ptr }
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
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.154 }
%union.anon.154 = type { %struct.anon.160, [16 x i8] }
%struct.anon.160 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.ieee80211_meshconf_ie = type { i8, i8, i8, i8, i8, i8, i8 }
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

@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: TSF : max clockdrift=%lld; adjusting\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: TSF : max clockdrift=%lld; adjusting by %llu\0A\00", [46 x i8] zeroinitializer }, align 32
@sync_methods = internal constant { [1 x %struct.sync_method], [20 x i8] } { [1 x %struct.sync_method] [%struct.sync_method { i8 1, %struct.ieee80211_mesh_sync_ops { ptr @mesh_sync_offset_rx_bcn_presp, ptr @mesh_sync_offset_adjust_tsf } }], [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/mac80211/mesh_sync.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: STA %pM : is adjusting TBTT\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s: STA %pM : t_offset=%lld, t_offset_setpoint=%lld, t_clockdrift=%lld\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: STA %pM : t_clockdrift=%lld too large, setpoint reset\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: STA %pM : offset was invalid, t_offset=%lld\0A\00", [47 x i8] zeroinitializer }, align 32
@ieee80211_have_rx_timestamp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/mac80211/ieee80211_i.h\00", [37 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: TSF : kicking off TSF adjustment with clockdrift_max=%lld\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: TSF : max clockdrift=%lld; too small to adjust\0A\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 58, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 63, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [13 x i8] c"sync_methods\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 194, i32 33 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 91, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 121, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 132, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 140, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 155, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [30 x i8] c"../net/mac80211/ieee80211_i.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 1762, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 695, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 723, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 181, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [28 x i8] c"../net/mac80211/mesh_sync.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 186, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @sync_methods, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_methods to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mesh_sync_adjust_tsf(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %beacon_int = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 19
  %2 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %beacon_int, align 2
  %conv = zext i16 %3 to i32
  %mul = shl nuw nsw i32 %conv, 10
  %div = udiv i32 %mul, 2500
  %4 = zext i32 %div to i64
  %sync_offset_lock = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 36
  tail call void @_raw_spin_lock_bh(ptr noundef %sync_offset_lock) #6
  %sync_offset_clockdrift_max = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 35
  %5 = ptrtoint ptr %sync_offset_clockdrift_max to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %sync_offset_clockdrift_max, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %4)
  %cmp = icmp ult i64 %6, %4
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef %name, i64 noundef %6) #6
  %7 = ptrtoint ptr %sync_offset_clockdrift_max to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %sync_offset_clockdrift_max, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.1, ptr noundef %name, i64 noundef %6, i64 noundef %4) #6
  %9 = ptrtoint ptr %sync_offset_clockdrift_max to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sync_offset_clockdrift_max, align 8
  %sub12 = sub i64 %10, %4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i64 [ %sub12, %if.else ], [ 0, %if.then ]
  %.pn = phi i64 [ %4, %if.else ], [ %8, %if.then ]
  %11 = ptrtoint ptr %sync_offset_clockdrift_max to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %storemerge, ptr %sync_offset_clockdrift_max, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %sync_offset_lock) #6
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %offset_tsf = getelementptr inbounds %struct.ieee80211_ops, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %offset_tsf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %offset_tsf, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.else15, label %if.then14

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tsfdelta.0 = sub i64 0, %.pn
  tail call void @drv_offset_tsf(ptr noundef %1, ptr noundef %sdata, i64 noundef %tsfdelta.0) #6
  br label %if.end20

if.else15:                                        ; preds = %if.end
  %call = tail call i64 @drv_get_tsf(ptr noundef %1, ptr noundef %sdata) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call)
  %cmp16.not = icmp eq i64 %call, -1
  br i1 %cmp16.not, label %if.else15.if.end20_crit_edge, label %if.then18

if.else15.if.end20_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then18:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #8
  %add = sub i64 %call, %.pn
  tail call void @drv_set_tsf(ptr noundef %1, ptr noundef %sdata, i64 noundef %add) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.else15.if.end20_crit_edge, %if.then14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdata_dbg(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drv_offset_tsf(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drv_get_tsf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drv_set_tsf(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ieee80211_mesh_sync_ops_get(i8 noundef zeroext %method) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %method)
  %cmp3 = icmp eq i8 %method, 1
  %retval.0 = select i1 %cmp3, ptr getelementptr inbounds ([1 x %struct.sync_method], ptr @sync_methods, i32 0, i32 0, i32 1), ptr null
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mesh_sync_offset_rx_bcn_presp(ptr noundef %sdata, i16 noundef zeroext %stype, ptr noundef %mgmt, i32 noundef %len, ptr noundef readonly %mesh_cfg, ptr noundef %rx_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %mesh_sp_id = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 11
  %2 = ptrtoint ptr %mesh_sp_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mesh_sp_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !42

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 91, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %stype)
  %cmp22.not = icmp eq i16 %stype, 128
  br i1 %cmp22.not, label %if.end25, label %if.end.cleanup88_crit_edge

if.end.cleanup88_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

if.end25:                                         ; preds = %if.end
  %flag.i = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %4 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flag.i, align 8
  %6 = and i32 %5, 65664
  call void @__sanitizer_cov_trace_const_cmp4(i32 65664, i32 %6)
  %7 = icmp eq i32 %6, 65664
  br i1 %7, label %land.rhs6.i, label %if.end25.ieee80211_have_rx_timestamp.exit_crit_edge

if.end25.ieee80211_have_rx_timestamp.exit_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %ieee80211_have_rx_timestamp.exit

land.rhs6.i:                                      ; preds = %if.end25
  %.b52.i = load i1, ptr @ieee80211_have_rx_timestamp.__already_done, align 1
  br i1 %.b52.i, label %land.rhs6.i.ieee80211_have_rx_timestamp.exit_crit_edge, label %if.then.i130, !prof !42

land.rhs6.i.ieee80211_have_rx_timestamp.exit_crit_edge: ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ieee80211_have_rx_timestamp.exit

if.then.i130:                                     ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ieee80211_have_rx_timestamp.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1763, i32 noundef 9, ptr noundef null) #6
  br label %ieee80211_have_rx_timestamp.exit

ieee80211_have_rx_timestamp.exit:                 ; preds = %if.then.i130, %land.rhs6.i.ieee80211_have_rx_timestamp.exit_crit_edge, %if.end25.ieee80211_have_rx_timestamp.exit_crit_edge
  %8 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flag.i, align 8
  %and42.i = and i32 %9, 65668
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.i.not = icmp eq i32 %and42.i, 0
  br i1 %tobool43.i.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %ieee80211_have_rx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %len, 4
  %call27 = tail call i64 @ieee80211_calculate_rx_timestamp(ptr noundef %1, ptr noundef %rx_status, i32 noundef %add, i32 noundef 24) #6
  br label %if.end29

if.else:                                          ; preds = %ieee80211_have_rx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = tail call i64 @drv_get_tsf(ptr noundef %1, ptr noundef %sdata) #6
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then26
  %t_r.0 = phi i64 [ %call27, %if.then26 ], [ %call28, %if.else ]
  %10 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !43
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %if.end29.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end29.rcu_read_lock.exit_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end29
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

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end29.rcu_read_lock.exit_crit_edge
  %sa = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 3
  %call30 = tail call ptr @sta_info_get(ptr noundef %sdata, ptr noundef %sa) #6
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %rcu_read_lock.exit.no_sync_crit_edge, label %if.end33

rcu_read_lock.exit.no_sync_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %no_sync

if.end33:                                         ; preds = %rcu_read_lock.exit
  %tobool.not.i131 = icmp eq ptr %mesh_cfg, null
  br i1 %tobool.not.i131, label %if.end33.if.end39_crit_edge, label %mesh_peer_tbtt_adjusting.exit

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

mesh_peer_tbtt_adjusting.exit:                    ; preds = %if.end33
  %meshconf_cap.i = getelementptr inbounds %struct.ieee80211_meshconf_ie, ptr %mesh_cfg, i32 0, i32 6
  %14 = ptrtoint ptr %meshconf_cap.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %meshconf_cap.i, align 1
  %16 = and i8 %15, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool1.i.not = icmp eq i8 %16, 0
  br i1 %tobool1.i.not, label %mesh_peer_tbtt_adjusting.exit.if.end39_crit_edge, label %if.then35

mesh_peer_tbtt_adjusting.exit.if.end39_crit_edge: ; preds = %mesh_peer_tbtt_adjusting.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then35:                                        ; preds = %mesh_peer_tbtt_adjusting.exit
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %addr = getelementptr inbounds %struct.sta_info, ptr %call30, i32 0, i32 48, i32 1
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef %addr) #6
  br label %no_sync

if.end39:                                         ; preds = %mesh_peer_tbtt_adjusting.exit.if.end39_crit_edge, %if.end33.if.end39_crit_edge
  %u40 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6
  %17 = ptrtoint ptr %u40 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %u40, align 2
  %19 = tail call i64 @llvm.bswap.i64(i64 %18)
  %sub = sub i64 %19, %t_r.0
  %mesh = getelementptr inbounds %struct.sta_info, ptr %call30, i32 0, i32 17
  %20 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mesh, align 8
  %t_offset = getelementptr inbounds %struct.mesh_sta, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %t_offset to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %sub, ptr %t_offset, align 8
  %_flags.i = getelementptr inbounds %struct.sta_info, ptr %call30, i32 0, i32 24
  %23 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %_flags.i, align 4
  %25 = and i32 %24, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool42.not = icmp eq i32 %25, 0
  %26 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mesh, align 8
  br i1 %tobool42.not, label %if.else74, label %if.then43

if.then43:                                        ; preds = %if.end39
  %t_offset_setpoint = getelementptr inbounds %struct.mesh_sta, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %t_offset_setpoint to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %t_offset_setpoint, align 8
  %t_offset46 = getelementptr inbounds %struct.mesh_sta, ptr %27, i32 0, i32 2
  %30 = ptrtoint ptr %t_offset46 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %t_offset46, align 8
  %sub47 = sub i64 %29, %31
  %name48 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %addr51 = getelementptr inbounds %struct.sta_info, ptr %call30, i32 0, i32 48, i32 1
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.4, ptr noundef %name48, ptr noundef %addr51, i64 noundef %31, i64 noundef %29, i64 noundef %sub47) #6
  %32 = add i64 %sub47, -801
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1601, i64 %32)
  %33 = icmp ult i64 %32, -1601
  br i1 %33, label %if.then61, label %if.end67

if.then61:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.5, ptr noundef %name48, ptr noundef %addr51, i64 noundef %sub47) #6
  tail call void @_clear_bit(i32 noundef 22, ptr noundef %_flags.i) #6
  br label %no_sync

if.end67:                                         ; preds = %if.then43
  %sync_offset_lock = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 36
  tail call void @_raw_spin_lock_bh(ptr noundef %sync_offset_lock) #6
  %sync_offset_clockdrift_max = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 35
  %34 = ptrtoint ptr %sync_offset_clockdrift_max to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %sync_offset_clockdrift_max, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub47, i64 %35)
  %cmp68 = icmp sgt i64 %sub47, %35
  br i1 %cmp68, label %if.then70, label %if.end67.if.end72_crit_edge

if.end67.if.end72_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %sync_offset_clockdrift_max to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %sub47, ptr %sync_offset_clockdrift_max, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end67.if.end72_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sync_offset_lock) #6
  br label %no_sync

if.else74:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %t_offset76 = getelementptr inbounds %struct.mesh_sta, ptr %27, i32 0, i32 2
  %37 = ptrtoint ptr %t_offset76 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %t_offset76, align 8
  %sub77 = add i64 %38, -20
  %t_offset_setpoint79 = getelementptr inbounds %struct.mesh_sta, ptr %27, i32 0, i32 3
  %39 = ptrtoint ptr %t_offset_setpoint79 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %sub77, ptr %t_offset_setpoint79, align 8
  tail call void @_set_bit(i32 noundef 22, ptr noundef %_flags.i) #6
  %name80 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %addr83 = getelementptr inbounds %struct.sta_info, ptr %call30, i32 0, i32 48, i32 1
  %40 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mesh, align 8
  %t_offset86 = getelementptr inbounds %struct.mesh_sta, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %t_offset86 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %t_offset86, align 8
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.6, ptr noundef %name80, ptr noundef %addr83, i64 noundef %43) #6
  br label %no_sync

no_sync:                                          ; preds = %if.else74, %if.end72, %if.then61, %if.then35, %rcu_read_lock.exit.no_sync_crit_edge
  %call.i134 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i134, label %no_sync.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i137

no_sync.rcu_read_unlock.exit_crit_edge:           ; preds = %no_sync
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i137:                               ; preds = %no_sync
  %call1.i135 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i135)
  %tobool.not.i136 = icmp eq i32 %call1.i135, 0
  br i1 %tobool.not.i136, label %land.lhs.true.i137.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i139

land.lhs.true.i137.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i137
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i139:                              ; preds = %land.lhs.true.i137
  %.b4.i138 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i138, label %land.lhs.true2.i139.rcu_read_unlock.exit_crit_edge, label %if.then.i140

land.lhs.true2.i139.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i139
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i140:                                     ; preds = %land.lhs.true2.i139
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i140, %land.lhs.true2.i139.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i137.rcu_read_unlock.exit_crit_edge, %no_sync.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !44
  %44 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i.i.i.i141 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i141 to ptr
  %preempt_count.i.i.i.i142 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i142, align 4
  %sub.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i142, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %cleanup88

cleanup88:                                        ; preds = %rcu_read_unlock.exit, %if.end.cleanup88_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mesh_sync_offset_adjust_tsf(ptr noundef %sdata, ptr nocapture noundef readnone %beacon) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mesh_sp_id = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 11
  %0 = ptrtoint ptr %mesh_sp_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mesh_sp_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !42

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 170, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool21.not = icmp eq i32 %call, 0
  br i1 %tobool21.not, label %do.end39, label %if.end.if.end45_crit_edge, !prof !45

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

do.end39:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 171, i32 noundef 9, ptr noundef null) #6
  br label %if.end45

if.end45:                                         ; preds = %do.end39, %if.end.if.end45_crit_edge
  %sync_offset_lock = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 36
  tail call void @_raw_spin_lock_bh(ptr noundef %sync_offset_lock) #6
  %sync_offset_clockdrift_max = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 35
  %2 = ptrtoint ptr %sync_offset_clockdrift_max to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sync_offset_clockdrift_max, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 10, i64 %3)
  %cmp53 = icmp sgt i64 %3, 10
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  br i1 %cmp53, label %if.then55, label %if.else

if.then55:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.12, ptr noundef %name, i64 noundef %3) #6
  %wrkq_flags = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 2, ptr noundef %wrkq_flags) #6
  br label %if.end61

if.else:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.13, ptr noundef %name, i64 noundef %3) #6
  %4 = ptrtoint ptr %sync_offset_clockdrift_max to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %sync_offset_clockdrift_max, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then55
  tail call void @_raw_spin_unlock_bh(ptr noundef %sync_offset_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ieee80211_calculate_rx_timestamp(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !22, !23, !25, !27, !28, !30}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mac80211/mesh_sync.c", i32 58, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/mac80211/mesh_sync.c", i32 63, i32 3}
!4 = !{ptr @sync_methods, !5, !"sync_methods", i1 false, i1 false}
!5 = !{!"../net/mac80211/mesh_sync.c", i32 194, i32 33}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/mac80211/mesh_sync.c", i32 91, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/mac80211/mesh_sync.c", i32 121, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/mac80211/mesh_sync.c", i32 132, i32 3}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/mac80211/mesh_sync.c", i32 140, i32 4}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/mac80211/mesh_sync.c", i32 155, i32 3}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../net/mac80211/ieee80211_i.h", i32 1762, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/mac80211/sta_info.h", i32 704, i32 2}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/mac80211/mesh_sync.c", i32 181, i32 3}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/mac80211/mesh_sync.c", i32 186, i32 3}
!32 = !{!"sp"}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 2149379284}
!44 = !{i64 2149379550}
!45 = !{!"branch_weights", i32 1, i32 2000}
