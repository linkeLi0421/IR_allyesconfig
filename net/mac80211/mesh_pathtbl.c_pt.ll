; ModuleID = '/llk/IR_all_yes/net/mac80211/mesh_pathtbl.c_pt.bc'
source_filename = "../net/mac80211/mesh_pathtbl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mesh_path = type { [6 x i8], [6 x i8], %struct.rhash_head, %struct.hlist_node, %struct.hlist_node, ptr, ptr, %struct.timer_list, %struct.sk_buff_head, %struct.callback_head, i32, i32, i8, i32, i32, i8, i32, %struct.spinlock, [6 x i8], i32, i32, i8, i8, i32 }
%struct.rhash_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.141, [17 x i16], %struct.anon.142, %struct.anon.143, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, ptr, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.list_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.153, %struct.anon.187, %struct.ieee80211_vif }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%union.anon.153 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.ieee80211s_hdr = type <{ i8, i8, i32, [6 x i8], [6 x i8] }>
%struct.mesh_sta = type { %struct.timer_list, ptr, i64, i64, %struct.spinlock, i16, i16, i16, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.ewma_mesh_fail_avg, %struct.ewma_mesh_tx_rate_avg }
%struct.ewma_mesh_fail_avg = type { i32 }
%struct.ewma_mesh_tx_rate_avg = type { i32 }
%struct.rhashtable_compare_arg = type { ptr, ptr }

@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: Mesh path: Recorded new gate: %pM. %d known gates\0A\00", [41 x i8] zeroinitializer }, align 32
@mesh_rht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 2, i16 6, i16 0, i16 12, i32 0, i16 0, i8 1, ptr @mesh_table_hash, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mesh_plink_broken.bcast = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@mesh_plink_broken.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/mac80211/mesh_pathtbl.c\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@mesh_path_send_to_gates.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Forwarding to %pM\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Not forwarding to %pM (flags %#x)\0A\00", [57 x i8] zeroinitializer }, align 32
@mesh_path_send_to_gates.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: Sending to %pM\0A\00", [44 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__mesh_path_lookup_by_idx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@mesh_path_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&new_mpath->state_lock\00", [41 x i8] zeroinitializer }, align 32
@mesh_path_new.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&new_mpath->timer)\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.24 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Mesh path: Deleted gate: %pM. %d known gates\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: mpath queue full!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Mpath queue for gate %pM has %d frames\0A\00", [52 x i8] zeroinitializer }, align 32
@prepare_for_gate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mesh_table_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&tbl->gates_lock\00", [47 x i8] zeroinitializer }, align 32
@mesh_table_init.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&tbl->walk_lock\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 321, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"mesh_rht_params\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 26, i32 39 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"bcast\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 485, i32 18 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 489, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 682, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 687, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 694, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 594, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 695, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 723, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 378, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 379, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 1984, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 755, i32 10 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 347, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 176, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 194, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 55, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [31 x i8] c"../net/mac80211/mesh_pathtbl.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 56, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @.str, ptr @mesh_rht_params, ptr @mesh_plink_broken.bcast, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @mesh_path_new.__key, ptr @.str.13, ptr @mesh_path_new.__key.14, ptr @.str.15, ptr @skb_queue_head_init.__key, ptr @.str.16, ptr @.str.18, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @mesh_table_init.__key, ptr @.str.28, ptr @mesh_table_init.__key.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mesh_rht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mesh_plink_broken.bcast to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mesh_path_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mesh_path_new.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mesh_table_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mesh_table_init.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mesh_path_assign_nexthop(ptr noundef %mpath, ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !93
  %next_hop21 = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 6
  %0 = ptrtoint ptr %next_hop21 to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %sta, ptr %next_hop21, align 4
  %frame_queue = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 8
  %lock = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 8, i32 2
  %call35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %1 = ptrtoint ptr %frame_queue to i32
  call void @__asan_load4_noabort(i32 %1)
  %skb.065 = load ptr, ptr %frame_queue, align 4
  %cmp42.not66 = icmp eq ptr %skb.065, %frame_queue
  br i1 %cmp42.not66, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %addr = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  %sdata = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 5
  %sdata49 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %skb.067 = phi ptr [ %skb.065, %for.body.lr.ph ], [ %skb.0, %for.body.for.body_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.067, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %addr1, ptr %addr, i32 6)
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdata, align 4
  %addr47 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 59, i32 2
  %7 = call ptr @memcpy(ptr %addr2, ptr %addr47, i32 6)
  %8 = ptrtoint ptr %sdata49 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdata49, align 4
  tail call void @ieee80211_mps_set_frame_flags(ptr noundef %9, ptr noundef %sta, ptr noundef %3) #12
  %10 = ptrtoint ptr %skb.067 to i32
  call void @__asan_load4_noabort(i32 %10)
  %skb.0 = load ptr, ptr %skb.067, align 4
  %cmp42.not = icmp eq ptr %skb.0, %frame_queue
  br i1 %cmp42.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call35) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_mps_set_frame_flags(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mesh_path_lookup(ptr noundef %sdata, ptr noundef %dst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rhead.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46, i32 2
  %call.i = tail call fastcc ptr @rhashtable_lookup(ptr noundef %rhead.i, ptr noundef %dst, [7 x i32] [i32 131078, i32 12, i32 0, i32 256, i32 ptrtoint (ptr @mesh_table_hash to i32), i32 0, i32 0]) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.mpath_lookup.exit_crit_edge, label %land.lhs.true.i

entry.mpath_lookup.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mpath_lookup.exit

land.lhs.true.i:                                  ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.mesh_path, ptr %call.i, i32 0, i32 16
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.mpath_lookup.exit_crit_edge, label %land.lhs.true.i.i

land.lhs.true.i.mpath_lookup.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mpath_lookup.exit

land.lhs.true.i.i:                                ; preds = %land.lhs.true.i
  %exp_time.i.i = getelementptr inbounds %struct.mesh_path, ptr %call.i, i32 0, i32 13
  %2 = ptrtoint ptr %exp_time.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %exp_time.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  %and2.i.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %or.cond.i = select i1 %cmp.i.i, i1 %tobool3.not.i.i, i1 false
  br i1 %or.cond.i, label %if.then.i, label %land.lhs.true.i.i.mpath_lookup.exit_crit_edge

land.lhs.true.i.i.mpath_lookup.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mpath_lookup.exit

if.then.i:                                        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %state_lock.i = getelementptr inbounds %struct.mesh_path, ptr %call.i, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %state_lock.i) #12
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i.i, align 4
  %and.i = and i32 %6, -2
  store i32 %and.i, ptr %flags.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock.i) #12
  br label %mpath_lookup.exit

mpath_lookup.exit:                                ; preds = %if.then.i, %land.lhs.true.i.i.mpath_lookup.exit_crit_edge, %land.lhs.true.i.mpath_lookup.exit_crit_edge, %entry.mpath_lookup.exit_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mpp_path_lookup(ptr noundef %sdata, ptr noundef %dst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rhead.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47, i32 2
  %call.i = tail call fastcc ptr @rhashtable_lookup(ptr noundef %rhead.i, ptr noundef %dst, [7 x i32] [i32 131078, i32 12, i32 0, i32 256, i32 ptrtoint (ptr @mesh_table_hash to i32), i32 0, i32 0]) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.mpath_lookup.exit_crit_edge, label %land.lhs.true.i

entry.mpath_lookup.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mpath_lookup.exit

land.lhs.true.i:                                  ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.mesh_path, ptr %call.i, i32 0, i32 16
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.mpath_lookup.exit_crit_edge, label %land.lhs.true.i.i

land.lhs.true.i.mpath_lookup.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mpath_lookup.exit

land.lhs.true.i.i:                                ; preds = %land.lhs.true.i
  %exp_time.i.i = getelementptr inbounds %struct.mesh_path, ptr %call.i, i32 0, i32 13
  %2 = ptrtoint ptr %exp_time.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %exp_time.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  %and2.i.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %or.cond.i = select i1 %cmp.i.i, i1 %tobool3.not.i.i, i1 false
  br i1 %or.cond.i, label %if.then.i, label %land.lhs.true.i.i.mpath_lookup.exit_crit_edge

land.lhs.true.i.i.mpath_lookup.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mpath_lookup.exit

if.then.i:                                        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %state_lock.i = getelementptr inbounds %struct.mesh_path, ptr %call.i, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %state_lock.i) #12
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i.i, align 4
  %and.i = and i32 %6, -2
  store i32 %and.i, ptr %flags.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock.i) #12
  br label %mpath_lookup.exit

mpath_lookup.exit:                                ; preds = %if.then.i, %land.lhs.true.i.i.mpath_lookup.exit_crit_edge, %land.lhs.true.i.mpath_lookup.exit_crit_edge, %entry.mpath_lookup.exit_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mesh_path_lookup_by_idx(ptr noundef %sdata, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mesh_paths = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46
  %call = tail call fastcc ptr @__mesh_path_lookup_by_idx(ptr noundef %mesh_paths, i32 noundef %idx)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__mesh_path_lookup_by_idx(ptr noundef %tbl, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b48 = load i1, ptr @__mesh_path_lookup_by_idx.__warned, align 1
  br i1 %.b48, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__mesh_path_lookup_by_idx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 248, ptr noundef nonnull @.str.2) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %walk_head = getelementptr inbounds %struct.mesh_table, ptr %tbl, i32 0, i32 3
  %0 = ptrtoint ptr %walk_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %walk_head, align 4
  %tobool10.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %tobool12.not5458 = icmp eq ptr %add.ptr, null
  %tobool12.not54 = or i1 %tobool10.not, %tobool12.not5458
  br i1 %tobool12.not54, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.056 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %mpath.055 = phi ptr [ %add.ptr26, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.056, i32 %idx)
  %cmp = icmp eq i32 %i.056, %idx
  br i1 %cmp, label %if.end32, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.056, 1
  %walk_list = getelementptr inbounds %struct.mesh_path, ptr %mpath.055, i32 0, i32 3
  %2 = ptrtoint ptr %walk_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %walk_list, align 4
  %tobool22.not = icmp eq ptr %3, null
  %add.ptr26 = getelementptr i8, ptr %3, i32 -16
  %tobool12.not60 = icmp eq ptr %add.ptr26, null
  %tobool12.not = or i1 %tobool22.not, %tobool12.not60
  br i1 %tobool12.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32:                                         ; preds = %for.body
  %flags.i = getelementptr inbounds %struct.mesh_path, ptr %mpath.055, i32 0, i32 16
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end32.cleanup_crit_edge, label %land.lhs.true.i

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end32
  %exp_time.i = getelementptr inbounds %struct.mesh_path, ptr %mpath.055, i32 0, i32 13
  %6 = ptrtoint ptr %exp_time.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %exp_time.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  %and2.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %or.cond = select i1 %cmp.i, i1 %tobool3.not.i, i1 false
  br i1 %or.cond, label %if.then34, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then34:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %state_lock = getelementptr inbounds %struct.mesh_path, ptr %mpath.055, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %state_lock) #12
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %and = and i32 %10, -2
  store i32 %and, ptr %flags.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %land.lhs.true.i.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %mpath.053 = phi ptr [ %mpath.055, %if.end32.cleanup_crit_edge ], [ %mpath.055, %land.lhs.true.i.cleanup_crit_edge ], [ %mpath.055, %if.then34 ], [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %mpath.053
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mpp_path_lookup_by_idx(ptr noundef %sdata, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mpp_paths = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47
  %call = tail call fastcc ptr @__mesh_path_lookup_by_idx(ptr noundef %mpp_paths, i32 noundef %idx)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mesh_path_add_gate(ptr noundef %mpath) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !83) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !94
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %sdata = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 5
  %4 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdata, align 4
  %state_lock = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %state_lock) #12
  %is_gate = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 22
  %6 = ptrtoint ptr %is_gate to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_gate, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #12
  br label %err_rcu

if.end:                                           ; preds = %rcu_read_lock.exit
  %mesh_paths = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 57, i32 0, i32 46
  %8 = ptrtoint ptr %is_gate to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %is_gate, align 1
  %9 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdata, align 4
  %num_gates = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %10, i32 0, i32 57, i32 0, i32 28
  %11 = ptrtoint ptr %num_gates to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_gates, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %num_gates, align 8
  %gates_lock = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 57, i32 0, i32 46, i32 1
  tail call void @_raw_spin_lock(ptr noundef %gates_lock) #12
  %gate_list = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 4
  %13 = ptrtoint ptr %mesh_paths to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mesh_paths, align 4
  %15 = ptrtoint ptr %gate_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %gate_list, align 4
  %pprev.i = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %mesh_paths, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !96
  %17 = ptrtoint ptr %mesh_paths to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %gate_list, ptr %mesh_paths, align 4
  %tobool.not.i24 = icmp eq ptr %14, null
  br i1 %tobool.not.i24, label %if.end.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

if.end.hlist_add_head_rcu.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %gate_list, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %if.end.hlist_add_head_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %gates_lock) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #12
  %19 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sdata, align 4
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %20, i32 0, i32 10
  %num_gates11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %20, i32 0, i32 57, i32 0, i32 28
  %21 = ptrtoint ptr %num_gates11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_gates11, align 8
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef %name, ptr noundef %mpath, i32 noundef %22) #12
  br label %err_rcu

err_rcu:                                          ; preds = %hlist_add_head_rcu.exit, %if.then
  %err.0 = phi i32 [ -17, %if.then ], [ 0, %hlist_add_head_rcu.exit ]
  %call.i25 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i25, label %err_rcu.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i28

err_rcu.rcu_read_unlock.exit_crit_edge:           ; preds = %err_rcu
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i28:                                ; preds = %err_rcu
  %call1.i26 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool.not.i27 = icmp eq i32 %call1.i26, 0
  br i1 %tobool.not.i27, label %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i30

land.lhs.true.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i30:                               ; preds = %land.lhs.true.i28
  %.b4.i29 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29, label %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, label %if.then.i31

land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i31:                                      ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i31, %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, %err_rcu.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !97
  %23 = tail call i32 @llvm.read_register.i32(metadata !83) #12
  %and.i.i.i.i.i32 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i32 to ptr
  %preempt_count.i.i.i.i33 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i33, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i33, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdata_dbg(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mesh_gate_num(ptr nocapture noundef readonly %sdata) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_gates = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 28
  %0 = ptrtoint ptr %num_gates to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_gates, align 8
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mesh_path_add(ptr noundef %sdata, ptr nocapture noundef readonly %dst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dst, align 4
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %3, %1
  %add.ptr.i = getelementptr i8, ptr %dst, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2, i32 4
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %7, %5
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  %8 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i = icmp ne i32 %8, 0
  %or.cond = select i1 %cmp.i, i1 true, i1 %tobool.i
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %entry
  %mpaths = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mpaths, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !98
  tail call void @llvm.prefetch.p0(ptr %mpaths, i32 1, i32 3, i32 1) #12
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %mpaths, ptr %mpaths, i32 1024, i32 1, ptr elementtype(i32) %mpaths) #12, !srcloc !99
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 1024
  br i1 %cmp.not.i.i.i, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !100
  %call11 = tail call fastcc ptr @mesh_path_new(ptr noundef %sdata, ptr noundef %dst)
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %walk_lock = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %walk_lock) #12
  %obj_hashfn.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46, i32 2, i32 3, i32 8
  %10 = ptrtoint ptr %obj_hashfn.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %obj_hashfn.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %rhashtable_lookup_get_insert_fast.exit, label %do.body3.i, !prof !101

do.body3.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rhashtable.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 929, 0\0A.popsection", ""() #12, !srcloc !102
  unreachable

rhashtable_lookup_get_insert_fast.exit:           ; preds = %if.end14
  %rhead = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46, i32 2
  %rhash = getelementptr inbounds %struct.mesh_path, ptr %call11, i32 0, i32 2
  %head_offset.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46, i32 2, i32 3, i32 3
  %12 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %head_offset.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %rhash, i32 %idx.neg.i.i
  %key_offset.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46, i32 2, i32 3, i32 2
  %14 = ptrtoint ptr %key_offset.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %key_offset.i, align 4
  %conv.i = zext i16 %15 to i32
  %add.ptr.i53 = getelementptr i8, ptr %add.ptr.i.i, i32 %conv.i
  %call10.i = tail call fastcc ptr @__rhashtable_insert_fast(ptr noundef %rhead, ptr noundef %add.ptr.i53, ptr noundef %rhash, [7 x i32] [i32 131078, i32 12, i32 0, i32 256, i32 ptrtoint (ptr @mesh_table_hash to i32), i32 0, i32 0]) #12
  %tobool17.not = icmp eq ptr %call10.i, null
  br i1 %tobool17.not, label %if.then18, label %if.then22.critedge

if.then18:                                        ; preds = %rhashtable_lookup_get_insert_fast.exit
  %walk_list = getelementptr inbounds %struct.mesh_path, ptr %call11, i32 0, i32 3
  %walk_head = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46, i32 3
  %16 = ptrtoint ptr %walk_head to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %walk_head, align 4
  %18 = ptrtoint ptr %walk_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %17, ptr %walk_list, align 4
  %tobool.not.i54 = icmp eq ptr %17, null
  br i1 %tobool.not.i54, label %if.then18.hlist_add_head.exit_crit_edge, label %do.body12.i

if.then18.hlist_add_head.exit_crit_edge:          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %walk_list, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.then18.hlist_add_head.exit_crit_edge
  %20 = ptrtoint ptr %walk_head to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %walk_list, ptr %walk_head, align 4
  %pprev34.i = getelementptr inbounds %struct.mesh_path, ptr %call11, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %walk_head, ptr %pprev34.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %walk_lock) #12
  br label %if.end26

if.then22.critedge:                               ; preds = %rhashtable_lookup_get_insert_fast.exit
  tail call void @_raw_spin_unlock_bh(ptr noundef %walk_lock) #12
  tail call void @kfree(ptr noundef nonnull %call11) #12
  %cmp.i55 = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i55, label %if.then22.critedge.cleanup_crit_edge, label %if.then22.critedge.if.end26_crit_edge

if.then22.critedge.if.end26_crit_edge:            ; preds = %if.then22.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then22.critedge.cleanup_crit_edge:             ; preds = %if.then22.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26:                                         ; preds = %if.then22.critedge.if.end26_crit_edge, %hlist_add_head.exit
  %new_mpath.0 = phi ptr [ %call11, %hlist_add_head.exit ], [ %call10.i, %if.then22.critedge.if.end26_crit_edge ]
  %mesh_paths_generation = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 48
  %22 = ptrtoint ptr %mesh_paths_generation to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mesh_paths_generation, align 8
  %inc = add i32 %23, 1
  store i32 %inc, ptr %mesh_paths_generation, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then22.critedge.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %new_mpath.0, %if.end26 ], [ %call10.i, %if.then22.critedge.cleanup_crit_edge ], [ inttoptr (i32 -524 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -28 to ptr), %if.end5.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end10.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mesh_path_new(ptr noundef %sdata, ptr nocapture noundef readonly %dst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 248) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = call ptr @memcpy(ptr %call7.i.i, ptr %dst, i32 6)
  %rann_snd_addr = getelementptr inbounds %struct.mesh_path, ptr %call7.i.i, i32 0, i32 18
  %2 = call ptr @memset(ptr %rann_snd_addr, i32 255, i32 6)
  %is_root = getelementptr inbounds %struct.mesh_path, ptr %call7.i.i, i32 0, i32 21
  %3 = ptrtoint ptr %is_root to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %is_root, align 8
  %sdata3 = getelementptr inbounds %struct.mesh_path, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %sdata3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sdata, ptr %sdata3, align 8
  %flags = getelementptr inbounds %struct.mesh_path, ptr %call7.i.i, i32 0, i32 16
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %flags, align 8
  %frame_queue = getelementptr inbounds %struct.mesh_path, ptr %call7.i.i, i32 0, i32 8
  %lock.i = getelementptr inbounds %struct.mesh_path, ptr %call7.i.i, i32 0, i32 8, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #12
  %6 = ptrtoint ptr %frame_queue to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %frame_queue, ptr %frame_queue, align 8
  %prev.i.i = getelementptr inbounds %struct.mesh_path, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %frame_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.mesh_path, ptr %call7.i.i, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %qlen.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %exp_time = getelementptr inbounds %struct.mesh_path, ptr %call7.i.i, i32 0, i32 13
  %10 = ptrtoint ptr %exp_time to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %exp_time, align 4
  %state_lock = getelementptr inbounds %struct.mesh_path, ptr %call7.i.i, i32 0, i32 17
  tail call void @__raw_spin_lock_init(ptr noundef %state_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @mesh_path_new.__key, i16 noundef signext 3) #12
  %timer = getelementptr inbounds %struct.mesh_path, ptr %call7.i.i, i32 0, i32 7
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @mesh_path_timer, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @mesh_path_new.__key.14) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpp_path_add(ptr noundef %sdata, ptr nocapture noundef readonly %dst, ptr nocapture noundef readonly %mpp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dst, align 4
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %3, %1
  %add.ptr.i = getelementptr i8, ptr %dst, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2, i32 4
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %7, %5
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  %8 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i = icmp ne i32 %8, 0
  %or.cond = select i1 %cmp.i, i1 true, i1 %tobool.i
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %entry
  %call4 = tail call fastcc ptr @mesh_path_new(ptr noundef %sdata, ptr noundef %dst)
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %mpp7 = getelementptr inbounds %struct.mesh_path, ptr %call4, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %mpp7, ptr %mpp, i32 6)
  %walk_lock = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %walk_lock) #12
  %obj_hashfn.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47, i32 2, i32 3, i32 8
  %10 = ptrtoint ptr %obj_hashfn.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %obj_hashfn.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %rhashtable_lookup_insert_fast.exit, label %do.body3.i, !prof !101

do.body3.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rhashtable.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 903, 0\0A.popsection", ""() #12, !srcloc !103
  unreachable

rhashtable_lookup_insert_fast.exit:               ; preds = %if.end6
  %rhead = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47, i32 2
  %rhash = getelementptr inbounds %struct.mesh_path, ptr %call4, i32 0, i32 2
  %head_offset.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47, i32 2, i32 3, i32 3
  %12 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %head_offset.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %rhash, i32 %idx.neg.i.i
  %key_offset.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47, i32 2, i32 3, i32 2
  %14 = ptrtoint ptr %key_offset.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %key_offset.i, align 4
  %conv.i = zext i16 %15 to i32
  %add.ptr.i40 = getelementptr i8, ptr %add.ptr.i.i, i32 %conv.i
  %call10.i = tail call fastcc ptr @__rhashtable_insert_fast(ptr noundef %rhead, ptr noundef %add.ptr.i40, ptr noundef %rhash, [7 x i32] [i32 131078, i32 12, i32 0, i32 256, i32 ptrtoint (ptr @mesh_table_hash to i32), i32 0, i32 0]) #12
  %cmp.i.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  %16 = ptrtoint ptr %call10.i to i32
  %cmp.i41 = icmp eq ptr %call10.i, null
  %cond.i = select i1 %cmp.i41, i32 0, i32 -17
  %retval.0.i = select i1 %cmp.i.i, i32 %16, i32 %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool10.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool10.not, label %if.then11, label %if.then15.critedge

if.then11:                                        ; preds = %rhashtable_lookup_insert_fast.exit
  %walk_list = getelementptr inbounds %struct.mesh_path, ptr %call4, i32 0, i32 3
  %walk_head = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47, i32 3
  %17 = ptrtoint ptr %walk_head to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %walk_head, align 4
  %19 = ptrtoint ptr %walk_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %walk_list, align 4
  %pprev.i = getelementptr inbounds %struct.mesh_path, ptr %call4, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %walk_head, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !96
  %21 = ptrtoint ptr %walk_head to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %walk_list, ptr %walk_head, align 4
  %tobool.not.i42 = icmp eq ptr %18, null
  br i1 %tobool.not.i42, label %if.then11.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

if.then11.hlist_add_head_rcu.exit_crit_edge:      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %18, i32 0, i32 1
  %22 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %walk_list, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %if.then11.hlist_add_head_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %walk_lock) #12
  br label %if.end16

if.then15.critedge:                               ; preds = %rhashtable_lookup_insert_fast.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %walk_lock) #12
  tail call void @kfree(ptr noundef nonnull %call4) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then15.critedge, %hlist_add_head_rcu.exit
  %mpp_paths_generation = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 49
  %23 = ptrtoint ptr %mpp_paths_generation to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mpp_paths_generation, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %mpp_paths_generation, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %if.end16 ], [ -524, %entry.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mesh_plink_broken(ptr noundef readonly %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sdata1 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %0 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata1, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !83) #12
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !94
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b64 = load i1, ptr @mesh_plink_broken.__warned, align 1
  br i1 %.b64, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mesh_plink_broken.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 489, ptr noundef nonnull @.str.2) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %walk_head = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 46, i32 3
  %6 = ptrtoint ptr %walk_head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %walk_head, align 4
  %tobool11.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -16
  %tobool13.not7780 = icmp eq ptr %add.ptr, null
  %tobool13.not77 = or i1 %tobool11.not, %tobool13.not7780
  br i1 %tobool13.not77, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %element_ttl = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %mpath.078 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr44, %for.inc.for.body_crit_edge ]
  %next_hop = getelementptr inbounds %struct.mesh_path, ptr %mpath.078, i32 0, i32 6
  %8 = ptrtoint ptr %next_hop to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %next_hop, align 4
  %cmp = icmp eq ptr %9, %sta
  br i1 %cmp, label %land.lhs.true19, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true19:                                  ; preds = %for.body
  %flags = getelementptr inbounds %struct.mesh_path, ptr %mpath.078, i32 0, i32 16
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %12 = and i32 %11, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %if.then25, label %land.lhs.true19.for.inc_crit_edge

land.lhs.true19.for.inc_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then25:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  %state_lock = getelementptr inbounds %struct.mesh_path, ptr %mpath.078, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %state_lock) #12
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and27 = and i32 %15, -2
  store i32 %and27, ptr %flags, align 4
  %sn = getelementptr inbounds %struct.mesh_path, ptr %mpath.078, i32 0, i32 10
  %16 = ptrtoint ptr %sn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sn, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %sn, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #12
  %18 = ptrtoint ptr %element_ttl to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %element_ttl, align 2
  %20 = ptrtoint ptr %sn to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sn, align 4
  %call31 = tail call i32 @mesh_path_error_tx(ptr noundef %1, i8 noundef zeroext %19, ptr noundef nonnull %mpath.078, i32 noundef %21, i16 noundef zeroext 63, ptr noundef nonnull @mesh_plink_broken.bcast) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then25, %land.lhs.true19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %walk_list = getelementptr inbounds %struct.mesh_path, ptr %mpath.078, i32 0, i32 3
  %22 = ptrtoint ptr %walk_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %walk_list, align 4
  %tobool40.not = icmp eq ptr %23, null
  %add.ptr44 = getelementptr i8, ptr %23, i32 -16
  %tobool13.not81 = icmp eq ptr %add.ptr44, null
  %tobool13.not = or i1 %tobool40.not, %tobool13.not81
  br i1 %tobool13.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i66 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i66, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i69

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i69:                                ; preds = %for.end
  %call1.i67 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67)
  %tobool.not.i68 = icmp eq i32 %call1.i67, 0
  br i1 %tobool.not.i68, label %land.lhs.true.i69.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i71

land.lhs.true.i69.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i71:                               ; preds = %land.lhs.true.i69
  %.b4.i70 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70, label %land.lhs.true2.i71.rcu_read_unlock.exit_crit_edge, label %if.then.i72

land.lhs.true2.i71.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i72:                                      ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i72, %land.lhs.true2.i71.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i69.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !97
  %24 = tail call i32 @llvm.read_register.i32(metadata !83) #12
  %and.i.i.i.i.i73 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i73 to ptr
  %preempt_count.i.i.i.i74 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i74, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i74, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mesh_path_error_tx(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mesh_path_flush_by_nexthop(ptr noundef readonly %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sdata1 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %0 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata1, align 4
  %mesh_paths = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 46
  %walk_lock = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 46, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %walk_lock) #12
  %walk_head = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 46, i32 3
  %2 = ptrtoint ptr %walk_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %walk_head, align 4
  %tobool.not = icmp eq ptr %3, null
  %add.ptr = getelementptr i8, ptr %3, i32 -16
  %tobool3.not3234 = icmp eq ptr %add.ptr, null
  %tobool3.not32 = or i1 %tobool.not, %tobool3.not3234
  br i1 %tobool3.not32, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %mpath.033 = phi ptr [ %add.ptr14, %for.inc.land.rhs_crit_edge ], [ %add.ptr, %entry.land.rhs_crit_edge ]
  %walk_list = getelementptr inbounds %struct.mesh_path, ptr %mpath.033, i32 0, i32 3
  %4 = ptrtoint ptr %walk_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %walk_list, align 4
  %next_hop = getelementptr inbounds %struct.mesh_path, ptr %mpath.033, i32 0, i32 6
  %6 = ptrtoint ptr %next_hop to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %next_hop, align 4
  %cmp = icmp eq ptr %7, %sta
  br i1 %cmp, label %if.then, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__mesh_path_del(ptr noundef %mesh_paths, ptr noundef nonnull %mpath.033)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.rhs.for.inc_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  %add.ptr14 = getelementptr i8, ptr %5, i32 -16
  %tobool3.not35 = icmp eq ptr %add.ptr14, null
  %tobool3.not = or i1 %tobool10.not, %tobool3.not35
  br i1 %tobool3.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %walk_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__mesh_path_del(ptr noundef %tbl, ptr noundef %mpath) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %walk_list = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 3
  %0 = ptrtoint ptr %walk_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %walk_list, align 4
  %pprev2.i.i = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev2.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %1, ptr %3, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

entry.hlist_del_rcu.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %entry.hlist_del_rcu.exit_crit_edge
  %6 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %rhead = getelementptr inbounds %struct.mesh_table, ptr %tbl, i32 0, i32 2
  %rhash = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 2
  %7 = tail call i32 @llvm.read_register.i32(metadata !83) #12
  %and.i.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !94
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i.i, label %hlist_del_rcu.exit.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

hlist_del_rcu.exit.rcu_read_lock.exit.i.i_crit_edge: ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %hlist_del_rcu.exit
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %hlist_del_rcu.exit.rcu_read_lock.exit.i.i_crit_edge
  %11 = ptrtoint ptr %rhead to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %rhead, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %rhead) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i10 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i10, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call3.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end10.i.i_crit_edge

lor.lhs.false.i.i.do.end10.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.do.end10.i.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i.i.do.end10.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true7.i.i.do.end10.i.i_crit_edge, label %if.then.i.i

land.lhs.true7.i.i.do.end10.i.i_crit_edge:        ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

if.then.i.i:                                      ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1076, ptr noundef nonnull @.str.8) #12
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true7.i.i.do.end10.i.i_crit_edge, %land.lhs.true.i.i.do.end10.i.i_crit_edge, %lor.lhs.false.i.i.do.end10.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge
  %head_offset.i.i.i.i.i = getelementptr inbounds %struct.mesh_table, ptr %tbl, i32 0, i32 2, i32 3, i32 3
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %rhash, i32 2
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.end33.i.i.while.cond.i.i_crit_edge, %do.end10.i.i
  %tbl.0.i.i = phi ptr [ %12, %do.end10.i.i ], [ %45, %do.end33.i.i.while.cond.i.i_crit_edge ]
  %13 = ptrtoint ptr %head_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %head_offset.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %14 to i32
  %idx.neg.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i
  %hash_rnd.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %hash_rnd.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hash_rnd.i.i.i.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %idx.neg.i.i.i.i.i
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %add.ptr.i, align 1
  %add1.i.i = add i32 %16, -559038733
  %add.i.i.i = add i32 %18, %add1.i.i
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i, i32 %add1.i.i, i32 14) #12
  %sub.i.i.i = sub i32 0, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %add.i.i.i, %sub.i.i.i
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #12
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i1.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #12
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i2.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #12
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i3.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #12
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i4.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #12
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i5.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #12
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i6.i.i.i
  %19 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i.i.i = and i32 %sub20.i.i.i, %sub.i.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i3.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i3.i.i.i, label %cond.false.i5.i.i.i, label %cond.true.i4.i.i.i, !prof !101

cond.true.i4.i.i.i:                               ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #12
  br label %rht_bucket_var.exit.i.i.i

cond.false.i5.i.i.i:                              ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i.i
  br label %rht_bucket_var.exit.i.i.i

rht_bucket_var.exit.i.i.i:                        ; preds = %cond.false.i5.i.i.i, %cond.true.i4.i.i.i
  %cond.i6.i.i.i = phi ptr [ %call.i.i.i.i, %cond.true.i4.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i5.i.i.i ]
  %tobool.not.i3.i.i = icmp eq ptr %cond.i6.i.i.i, null
  br i1 %tobool.not.i3.i.i, label %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge, label %if.end.i.i.i

rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge: ; preds = %rht_bucket_var.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

if.end.i.i.i:                                     ; preds = %rht_bucket_var.exit.i.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #12
  %call.i8.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i.i)
  %tobool.not.i9.i.i.i = icmp eq i32 %call.i8.i.i.i, 0
  br i1 %tobool.not.i9.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge

if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b7.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i, label %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 377, ptr noundef nonnull @.str.18) #12
  br label %rht_ptr.exit.i.i.i

rht_ptr.exit.i.i.i:                               ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge
  %23 = ptrtoint ptr %cond.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cond.i6.i.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i.i.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  %26 = ptrtoint ptr %cond.i6.i.i.i to i32
  %or.i.i.i.i.i = or i32 %26, 1
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i.i.i.i
  %and.i20.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i.i)
  %tobool.i.not21.i.i.i = icmp eq i32 %and.i20.i.i.i, 0
  br i1 %tobool.i.not21.i.i.i, label %for.body.preheader.i.i.i, label %rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge

rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge:      ; preds = %rht_ptr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlocked.i.i.i

for.body.preheader.i.i.i:                         ; preds = %rht_ptr.exit.i.i.i
  %27 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %cmp.not.i20.i.i = icmp eq ptr %rhash, %27
  br i1 %cmp.not.i20.i.i, label %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge

for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  br label %do.body145.i.i.i

for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i.i

for.body.i.i.i:                                   ; preds = %do.end156.i.i.i
  %cmp.not.i.i.i = icmp eq ptr %32, %rhash
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.i.i.i.do.body145.i.i.i_crit_edge

for.body.i.i.i.do.body145.i.i.i_crit_edge:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body145.i.i.i

for.body.i.i.i.do.body54.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i.i

do.body54.i.i.i:                                  ; preds = %for.body.i.i.i.do.body54.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge
  %pprev.023.i.lcssa.i.i = phi ptr [ %he.022.i21.i.i, %for.body.i.i.i.do.body54.i.i.i_crit_edge ], [ null, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge ]
  %call55.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i.i)
  %tobool56.not.i.i.i = icmp eq i32 %call55.i.i.i, 0
  br i1 %tobool56.not.i.i.i, label %land.lhs.true57.i.i.i, label %do.body54.i.i.i.do.end65.i.i.i_crit_edge

do.body54.i.i.i.do.end65.i.i.i_crit_edge:         ; preds = %do.body54.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i.i

land.lhs.true57.i.i.i:                            ; preds = %do.body54.i.i.i
  %call58.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i.i)
  %tobool59.not.i.i.i = icmp eq i32 %call58.i.i.i, 0
  br i1 %tobool59.not.i.i.i, label %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, label %land.lhs.true60.i.i.i

land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true57.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i.i

land.lhs.true60.i.i.i:                            ; preds = %land.lhs.true57.i.i.i
  %.b2.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.22, align 1
  br i1 %.b2.i.i.i, label %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, label %if.then62.i.i.i

land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i.i

if.then62.i.i.i:                                  ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.22, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1032, ptr noundef nonnull @.str.18) #12
  br label %do.end65.i.i.i

do.end65.i.i.i:                                   ; preds = %if.then62.i.i.i, %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, %do.body54.i.i.i.do.end65.i.i.i_crit_edge
  %28 = ptrtoint ptr %rhash to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rhash, align 4
  %tobool103.not.i.i.i = icmp eq ptr %pprev.023.i.lcssa.i.i, null
  br i1 %tobool103.not.i.i.i, label %if.else142.i.i.i, label %do.body105.i.i.i

do.body105.i.i.i:                                 ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !104
  %30 = ptrtoint ptr %pprev.023.i.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %pprev.023.i.lcssa.i.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #12
  br label %if.then160.i.i.i

if.else142.i.i.i:                                 ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i, ptr noundef %29) #12
  br label %if.then160.i.i.i

do.body145.i.i.i:                                 ; preds = %for.body.i.i.i.do.body145.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge
  %he.022.i21.i.i = phi ptr [ %32, %for.body.i.i.i.do.body145.i.i.i_crit_edge ], [ %27, %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge ]
  %call146.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i.i)
  %tobool147.not.i.i.i = icmp eq i32 %call146.i.i.i, 0
  br i1 %tobool147.not.i.i.i, label %land.lhs.true148.i.i.i, label %do.body145.i.i.i.do.end156.i.i.i_crit_edge

do.body145.i.i.i.do.end156.i.i.i_crit_edge:       ; preds = %do.body145.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i.i

land.lhs.true148.i.i.i:                           ; preds = %do.body145.i.i.i
  %call149.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i.i)
  %tobool150.not.i.i.i = icmp eq i32 %call149.i.i.i, 0
  br i1 %tobool150.not.i.i.i, label %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, label %land.lhs.true151.i.i.i

land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true148.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i.i

land.lhs.true151.i.i.i:                           ; preds = %land.lhs.true148.i.i.i
  %.b2281.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.24, align 1
  br i1 %.b2281.i.i.i, label %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, label %if.then153.i.i.i

land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i.i

if.then153.i.i.i:                                 ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.24, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1004, ptr noundef nonnull @.str.18) #12
  br label %do.end156.i.i.i

do.end156.i.i.i:                                  ; preds = %if.then153.i.i.i, %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, %do.body145.i.i.i.do.end156.i.i.i_crit_edge
  %31 = ptrtoint ptr %he.022.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %he.022.i21.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %and.i.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.body.i.i.i, label %do.end156.i.i.i.unlocked.i.i.i_crit_edge

do.end156.i.i.i.unlocked.i.i.i_crit_edge:         ; preds = %do.end156.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlocked.i.i.i

unlocked.i.i.i:                                   ; preds = %do.end156.i.i.i.unlocked.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #12
  br label %land.rhs.i.i

if.then160.i.i.i:                                 ; preds = %if.else142.i.i.i, %do.body105.i.i.i
  %nelems.i.i.i = getelementptr inbounds %struct.mesh_table, ptr %tbl, i32 0, i32 2, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i, i32 1, i32 3, i32 1) #12
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i, ptr %nelems.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i) #12, !srcloc !105
  %automatic_shrinking.i.i.i = getelementptr inbounds %struct.mesh_table, ptr %tbl, i32 0, i32 2, i32 3, i32 6
  %35 = ptrtoint ptr %automatic_shrinking.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %automatic_shrinking.i.i.i, align 2, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool161.not.i.i.i = icmp eq i8 %36, 0
  br i1 %tobool161.not.i.i.i, label %if.then160.i.i.i.while.end.i.i_crit_edge, label %land.rhs162.i.i.i

if.then160.i.i.i.while.end.i.i_crit_edge:         ; preds = %if.then160.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

land.rhs162.i.i.i:                                ; preds = %if.then160.i.i.i
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #12
  %37 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i.i, align 4
  %39 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tbl.0.i.i, align 128
  %mul.i.i.i.i = mul i32 %40, 3
  %div.i.i.i.i = udiv i32 %mul.i.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %div.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %38, %div.i.i.i.i
  br i1 %cmp.i.i.i.i, label %rht_shrink_below_30.exit.i.i.i, label %land.rhs162.i.i.i.while.end.i.i_crit_edge

land.rhs162.i.i.i.while.end.i.i_crit_edge:        ; preds = %land.rhs162.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

rht_shrink_below_30.exit.i.i.i:                   ; preds = %land.rhs162.i.i.i
  %min_size.i.i.i.i = getelementptr inbounds %struct.mesh_table, ptr %tbl, i32 0, i32 2, i32 3, i32 5
  %41 = ptrtoint ptr %min_size.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %min_size.i.i.i.i, align 4
  %conv.i11.i.i.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i11.i.i.i)
  %cmp2.i.i.i.i = icmp ugt i32 %40, %conv.i11.i.i.i
  br i1 %cmp2.i.i.i.i, label %if.then168.i.i.i, label %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, !prof !106

rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

if.then168.i.i.i:                                 ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %run_work.i.i.i = getelementptr inbounds %struct.mesh_table, ptr %tbl, i32 0, i32 2, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %run_work.i.i.i) #12
  br label %while.end.i.i

land.rhs.i.i:                                     ; preds = %unlocked.i.i.i, %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %44 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call20.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %rhead) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %lor.lhs.false22.i.i, label %land.rhs.i.i.do.end33.i.i_crit_edge

land.rhs.i.i.do.end33.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i.i

lor.lhs.false22.i.i:                              ; preds = %land.rhs.i.i
  %call23.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %tobool24.not.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %tobool24.not.i.i, label %land.lhs.true25.i.i, label %lor.lhs.false22.i.i.do.end33.i.i_crit_edge

lor.lhs.false22.i.i.do.end33.i.i_crit_edge:       ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i.i

land.lhs.true25.i.i:                              ; preds = %lor.lhs.false22.i.i
  %call26.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %land.lhs.true25.i.i.do.end33.i.i_crit_edge, label %land.lhs.true28.i.i

land.lhs.true25.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i.i

land.lhs.true28.i.i:                              ; preds = %land.lhs.true25.i.i
  %.b401.i.i = load i1, ptr @__rhashtable_remove_fast.__warned.20, align 1
  br i1 %.b401.i.i, label %land.lhs.true28.i.i.do.end33.i.i_crit_edge, label %if.then30.i.i

land.lhs.true28.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i.i

if.then30.i.i:                                    ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned.20, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1085, ptr noundef nonnull @.str.8) #12
  br label %do.end33.i.i

do.end33.i.i:                                     ; preds = %if.then30.i.i, %land.lhs.true28.i.i.do.end33.i.i_crit_edge, %land.lhs.true25.i.i.do.end33.i.i_crit_edge, %lor.lhs.false22.i.i.do.end33.i.i_crit_edge, %land.rhs.i.i.do.end33.i.i_crit_edge
  %tobool35.not.i.i = icmp eq ptr %45, null
  br i1 %tobool35.not.i.i, label %do.end33.i.i.while.end.i.i_crit_edge, label %do.end33.i.i.while.cond.i.i_crit_edge

do.end33.i.i.while.cond.i.i_crit_edge:            ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

do.end33.i.i.while.end.i.i_crit_edge:             ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end33.i.i.while.end.i.i_crit_edge, %if.then168.i.i.i, %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, %land.rhs162.i.i.i.while.end.i.i_crit_edge, %if.then160.i.i.i.while.end.i.i_crit_edge
  %call.i4.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i4.i.i, label %while.end.i.i.rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i.i

while.end.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_remove_fast.exit

land.lhs.true.i7.i.i:                             ; preds = %while.end.i.i
  %call1.i5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i.i)
  %tobool.not.i6.i.i = icmp eq i32 %call1.i5.i.i, 0
  br i1 %tobool.not.i6.i.i, label %land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i.i

land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_remove_fast.exit

land.lhs.true2.i9.i.i:                            ; preds = %land.lhs.true.i7.i.i
  %.b4.i8.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i.i, label %land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i.i

land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_remove_fast.exit

if.then.i10.i.i:                                  ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #12
  br label %rhashtable_remove_fast.exit

rhashtable_remove_fast.exit:                      ; preds = %if.then.i10.i.i, %land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge, %while.end.i.i.rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !97
  %46 = tail call i32 @llvm.read_register.i32(metadata !83) #12
  %and.i.i.i.i.i11.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i11.i.i to ptr
  %preempt_count.i.i.i.i12.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i12.i.i, align 4
  %sub.i.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i12.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  tail call fastcc void @mesh_path_free_rcu(ptr noundef %tbl, ptr noundef %mpath)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mesh_path_flush_by_iface(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mesh_paths = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46
  %walk_lock.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %walk_lock.i) #12
  %walk_head.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46, i32 3
  %0 = ptrtoint ptr %walk_head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %walk_head.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  %tobool2.not2628.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not26.i = or i1 %tobool.not.i, %tobool2.not2628.i
  br i1 %tobool2.not26.i, label %entry.table_flush_by_iface.exit_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.table_flush_by_iface.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %table_flush_by_iface.exit

land.rhs.i:                                       ; preds = %land.rhs.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %mpath.027.i = phi ptr [ %add.ptr11.i, %land.rhs.i.land.rhs.i_crit_edge ], [ %add.ptr.i, %entry.land.rhs.i_crit_edge ]
  %walk_list.i = getelementptr inbounds %struct.mesh_path, ptr %mpath.027.i, i32 0, i32 3
  %2 = ptrtoint ptr %walk_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %walk_list.i, align 4
  tail call fastcc void @__mesh_path_del(ptr noundef %mesh_paths, ptr noundef nonnull %mpath.027.i) #12
  %tobool7.not.i = icmp eq ptr %3, null
  %add.ptr11.i = getelementptr i8, ptr %3, i32 -16
  %tobool2.not29.i = icmp eq ptr %add.ptr11.i, null
  %tobool2.not.i = or i1 %tobool7.not.i, %tobool2.not29.i
  br i1 %tobool2.not.i, label %land.rhs.i.table_flush_by_iface.exit_crit_edge, label %land.rhs.i.land.rhs.i_crit_edge

land.rhs.i.land.rhs.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

land.rhs.i.table_flush_by_iface.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %table_flush_by_iface.exit

table_flush_by_iface.exit:                        ; preds = %land.rhs.i.table_flush_by_iface.exit_crit_edge, %entry.table_flush_by_iface.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %walk_lock.i) #12
  %mpp_paths = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47
  %walk_lock.i3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %walk_lock.i3) #12
  %walk_head.i4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47, i32 3
  %4 = ptrtoint ptr %walk_head.i4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %walk_head.i4, align 4
  %tobool.not.i5 = icmp eq ptr %5, null
  %add.ptr.i6 = getelementptr i8, ptr %5, i32 -16
  %tobool2.not2628.i7 = icmp eq ptr %add.ptr.i6, null
  %tobool2.not26.i8 = or i1 %tobool.not.i5, %tobool2.not2628.i7
  br i1 %tobool2.not26.i8, label %table_flush_by_iface.exit.table_flush_by_iface.exit16_crit_edge, label %table_flush_by_iface.exit.land.rhs.i15_crit_edge

table_flush_by_iface.exit.land.rhs.i15_crit_edge: ; preds = %table_flush_by_iface.exit
  br label %land.rhs.i15

table_flush_by_iface.exit.table_flush_by_iface.exit16_crit_edge: ; preds = %table_flush_by_iface.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %table_flush_by_iface.exit16

land.rhs.i15:                                     ; preds = %land.rhs.i15.land.rhs.i15_crit_edge, %table_flush_by_iface.exit.land.rhs.i15_crit_edge
  %mpath.027.i9 = phi ptr [ %add.ptr11.i12, %land.rhs.i15.land.rhs.i15_crit_edge ], [ %add.ptr.i6, %table_flush_by_iface.exit.land.rhs.i15_crit_edge ]
  %walk_list.i10 = getelementptr inbounds %struct.mesh_path, ptr %mpath.027.i9, i32 0, i32 3
  %6 = ptrtoint ptr %walk_list.i10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %walk_list.i10, align 4
  tail call fastcc void @__mesh_path_del(ptr noundef %mpp_paths, ptr noundef nonnull %mpath.027.i9) #12
  %tobool7.not.i11 = icmp eq ptr %7, null
  %add.ptr11.i12 = getelementptr i8, ptr %7, i32 -16
  %tobool2.not29.i13 = icmp eq ptr %add.ptr11.i12, null
  %tobool2.not.i14 = or i1 %tobool7.not.i11, %tobool2.not29.i13
  br i1 %tobool2.not.i14, label %land.rhs.i15.table_flush_by_iface.exit16_crit_edge, label %land.rhs.i15.land.rhs.i15_crit_edge

land.rhs.i15.land.rhs.i15_crit_edge:              ; preds = %land.rhs.i15
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i15

land.rhs.i15.table_flush_by_iface.exit16_crit_edge: ; preds = %land.rhs.i15
  call void @__sanitizer_cov_trace_pc() #14
  br label %table_flush_by_iface.exit16

table_flush_by_iface.exit16:                      ; preds = %land.rhs.i15.table_flush_by_iface.exit16_crit_edge, %table_flush_by_iface.exit.table_flush_by_iface.exit16_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %walk_lock.i3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mesh_path_del(ptr noundef %sdata, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mpp_paths.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47
  %walk_lock.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %walk_lock.i) #12
  %walk_head.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47, i32 3
  %0 = ptrtoint ptr %walk_head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %walk_head.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  %tobool2.not2830.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not28.i = or i1 %tobool.not.i, %tobool2.not2830.i
  br i1 %tobool2.not28.i, label %entry.mpp_flush_by_proxy.exit_crit_edge, label %land.rhs.lr.ph.i

entry.mpp_flush_by_proxy.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mpp_flush_by_proxy.exit

land.rhs.lr.ph.i:                                 ; preds = %entry
  %add.ptr1.i.i = getelementptr i8, ptr %addr, i32 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %mpath.029.i = phi ptr [ %add.ptr.i, %land.rhs.lr.ph.i ], [ %add.ptr11.i, %for.inc.i.land.rhs.i_crit_edge ]
  %walk_list.i = getelementptr inbounds %struct.mesh_path, ptr %mpath.029.i, i32 0, i32 3
  %2 = ptrtoint ptr %walk_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %walk_list.i, align 4
  %mpp.i = getelementptr inbounds %struct.mesh_path, ptr %mpath.029.i, i32 0, i32 1
  %4 = ptrtoint ptr %mpp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mpp.i, align 4
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  %xor.i.i = xor i32 %7, %5
  %add.ptr.i.i = getelementptr %struct.mesh_path, ptr %mpath.029.i, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i, align 2
  %10 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %11, %9
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then.i, label %land.rhs.i.for.inc.i_crit_edge

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__mesh_path_del(ptr noundef %mpp_paths.i, ptr noundef nonnull %mpath.029.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.rhs.i.for.inc.i_crit_edge
  %tobool7.not.i = icmp eq ptr %3, null
  %add.ptr11.i = getelementptr i8, ptr %3, i32 -16
  %tobool2.not31.i = icmp eq ptr %add.ptr11.i, null
  %tobool2.not.i = or i1 %tobool7.not.i, %tobool2.not31.i
  br i1 %tobool2.not.i, label %for.inc.i.mpp_flush_by_proxy.exit_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

for.inc.i.mpp_flush_by_proxy.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mpp_flush_by_proxy.exit

mpp_flush_by_proxy.exit:                          ; preds = %for.inc.i.mpp_flush_by_proxy.exit_crit_edge, %entry.mpp_flush_by_proxy.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %walk_lock.i) #12
  %mesh_paths = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46
  %walk_lock.i6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %walk_lock.i6) #12
  %rhead.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46, i32 2
  %12 = tail call i32 @llvm.read_register.i32(metadata !83) #12
  %and.i.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !94
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i.i, label %mpp_flush_by_proxy.exit.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

mpp_flush_by_proxy.exit.rcu_read_lock.exit.i.i_crit_edge: ; preds = %mpp_flush_by_proxy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %mpp_flush_by_proxy.exit
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %mpp_flush_by_proxy.exit.rcu_read_lock.exit.i.i_crit_edge
  %call.i.i = tail call fastcc ptr @rhashtable_lookup(ptr noundef %rhead.i, ptr noundef %addr, [7 x i32] [i32 131078, i32 12, i32 0, i32 256, i32 ptrtoint (ptr @mesh_table_hash to i32), i32 0, i32 0]) #12
  %call.i1.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i1.i.i, label %rcu_read_lock.exit.i.i.rhashtable_lookup_fast.exit.i_crit_edge, label %land.lhs.true.i4.i.i

rcu_read_lock.exit.i.i.rhashtable_lookup_fast.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_lookup_fast.exit.i

land.lhs.true.i4.i.i:                             ; preds = %rcu_read_lock.exit.i.i
  %call1.i2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i.i)
  %tobool.not.i3.i.i = icmp eq i32 %call1.i2.i.i, 0
  br i1 %tobool.not.i3.i.i, label %land.lhs.true.i4.i.i.rhashtable_lookup_fast.exit.i_crit_edge, label %land.lhs.true2.i6.i.i

land.lhs.true.i4.i.i.rhashtable_lookup_fast.exit.i_crit_edge: ; preds = %land.lhs.true.i4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_lookup_fast.exit.i

land.lhs.true2.i6.i.i:                            ; preds = %land.lhs.true.i4.i.i
  %.b4.i5.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5.i.i, label %land.lhs.true2.i6.i.i.rhashtable_lookup_fast.exit.i_crit_edge, label %if.then.i7.i.i

land.lhs.true2.i6.i.i.rhashtable_lookup_fast.exit.i_crit_edge: ; preds = %land.lhs.true2.i6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_lookup_fast.exit.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true2.i6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #12
  br label %rhashtable_lookup_fast.exit.i

rhashtable_lookup_fast.exit.i:                    ; preds = %if.then.i7.i.i, %land.lhs.true2.i6.i.i.rhashtable_lookup_fast.exit.i_crit_edge, %land.lhs.true.i4.i.i.rhashtable_lookup_fast.exit.i_crit_edge, %rcu_read_lock.exit.i.i.rhashtable_lookup_fast.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !97
  %16 = tail call i32 @llvm.read_register.i32(metadata !83) #12
  %and.i.i.i.i.i8.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i8.i.i to ptr
  %preempt_count.i.i.i.i9.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i9.i.i, align 4
  %sub.i.i.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i9.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %tobool.not.i7 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i7, label %rhashtable_lookup_fast.exit.i.table_path_del.exit_crit_edge, label %if.end.i

rhashtable_lookup_fast.exit.i.table_path_del.exit_crit_edge: ; preds = %rhashtable_lookup_fast.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %table_path_del.exit

if.end.i:                                         ; preds = %rhashtable_lookup_fast.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__mesh_path_del(ptr noundef %mesh_paths, ptr noundef nonnull %call.i.i) #12
  br label %table_path_del.exit

table_path_del.exit:                              ; preds = %if.end.i, %rhashtable_lookup_fast.exit.i.table_path_del.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -6, %rhashtable_lookup_fast.exit.i.table_path_del.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %walk_lock.i6) #12
  %mesh_paths_generation = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 48
  %20 = ptrtoint ptr %mesh_paths_generation to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mesh_paths_generation, align 8
  %inc = add i32 %21, 1
  store i32 %inc, ptr %mesh_paths_generation, align 8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mesh_path_tx_pending(ptr noundef %mpath) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 16
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sdata = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 5
  %2 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdata, align 4
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local, align 4
  %frame_queue = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 8
  tail call void @ieee80211_add_pending_skbs(ptr noundef %5, ptr noundef %frame_queue) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_add_pending_skbs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mesh_path_send_to_gates(ptr noundef %mpath) local_unnamed_addr #0 align 64 {
entry:
  %failq.i = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sdata1 = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 5
  %0 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata1, align 4
  %mesh_paths = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 46
  %2 = tail call i32 @llvm.read_register.i32(metadata !83) #12
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !94
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b123 = load i1, ptr @mesh_path_send_to_gates.__warned, align 1
  br i1 %.b123, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mesh_path_send_to_gates.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 680, ptr noundef nonnull @.str.2) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %6 = ptrtoint ptr %mesh_paths to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %mesh_paths, align 4
  %tobool11.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -24
  %tobool13.not146155 = icmp eq ptr %add.ptr, null
  %tobool13.not146 = or i1 %tobool11.not, %tobool13.not146155
  br i1 %tobool13.not146, label %do.end.do.body39_crit_edge, label %for.body.lr.ph

do.end.do.body39_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body39

for.body.lr.ph:                                   ; preds = %do.end
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %8 = getelementptr inbounds i8, ptr %failq.i, i32 12
  %prev.i.i = getelementptr inbounds %struct.anon.62, ptr %failq.i, i32 0, i32 1
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %failq.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %from_mpath.0151 = phi ptr [ %mpath, %for.body.lr.ph ], [ %from_mpath.1, %for.inc.for.body_crit_edge ]
  %gate.0148 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr35, %for.inc.for.body_crit_edge ]
  %copy.0.off0147 = phi i1 [ false, %for.body.lr.ph ], [ %copy.1.off0, %for.inc.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.mesh_path, ptr %gate.0148, i32 0, i32 16
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %for.body
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef nonnull %gate.0148) #12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %failq.i) #12
  %11 = call ptr @memset(ptr %8, i32 255, i32 44)
  %cmp.i = icmp eq ptr %gate.0148, %from_mpath.0151
  br i1 %cmp.i, label %do.end.i, label %if.end22.i, !prof !106

do.end.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 162, i32 noundef 9, ptr noundef null) #12
  br label %mesh_path_move_to_queue.exit

if.end22.i:                                       ; preds = %if.then15
  %next_hop.i = getelementptr inbounds %struct.mesh_path, ptr %gate.0148, i32 0, i32 6
  %12 = ptrtoint ptr %next_hop.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %next_hop.i, align 4
  %tobool24.not.i = icmp eq ptr %13, null
  br i1 %tobool24.not.i, label %do.end42.i, label %if.end58.i, !prof !106

do.end42.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 164, i32 noundef 9, ptr noundef null) #12
  br label %mesh_path_move_to_queue.exit

if.end58.i:                                       ; preds = %if.end22.i
  %14 = ptrtoint ptr %failq.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %failq.i, ptr %failq.i, align 4
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %failq.i, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %qlen.i.i, align 4
  %frame_queue.i = getelementptr inbounds %struct.mesh_path, ptr %from_mpath.0151, i32 0, i32 8
  %lock.i = getelementptr inbounds %struct.mesh_path, ptr %from_mpath.0151, i32 0, i32 8, i32 2
  %call63.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %17 = ptrtoint ptr %frame_queue.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %frame_queue.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %18, %frame_queue.i
  br i1 %cmp.i.not.i.i, label %if.end58.i.skb_queue_splice_init.exit.i_crit_edge, label %if.then.i.i

if.end58.i.skb_queue_splice_init.exit.i_crit_edge: ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_queue_splice_init.exit.i

if.then.i.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %failq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %failq.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.mesh_path, ptr %from_mpath.0151, i32 0, i32 8, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev2.i.i.i, align 4
  %prev5.i.i.i = getelementptr inbounds %struct.anon.41, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %prev5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %failq.i, ptr %prev5.i.i.i, align 4
  store volatile ptr %18, ptr %failq.i, align 8
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %20, ptr %22, align 8
  %prev35.i.i.i = getelementptr inbounds %struct.anon.41, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %prev35.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %22, ptr %prev35.i.i.i, align 4
  %qlen.i182.i = getelementptr inbounds %struct.mesh_path, ptr %from_mpath.0151, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %qlen.i182.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qlen.i182.i, align 4
  %28 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qlen.i.i, align 4
  %add.i.i = add i32 %29, %27
  store i32 %add.i.i, ptr %qlen.i.i, align 4
  %30 = ptrtoint ptr %frame_queue.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %frame_queue.i, ptr %frame_queue.i, align 4
  store ptr %frame_queue.i, ptr %prev2.i.i.i, align 4
  store i32 0, ptr %qlen.i182.i, align 4
  br label %skb_queue_splice_init.exit.i

skb_queue_splice_init.exit.i:                     ; preds = %if.then.i.i, %if.end58.i.skb_queue_splice_init.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call63.i) #12
  %31 = ptrtoint ptr %failq.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %failq.i, align 4
  %cmp72.not198.i = icmp eq ptr %32, %failq.i
  br i1 %cmp72.not198.i, label %skb_queue_splice_init.exit.i.for.end.i_crit_edge, label %for.body.lr.ph.i

skb_queue_splice_init.exit.i.for.end.i_crit_edge: ; preds = %skb_queue_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %skb_queue_splice_init.exit.i
  %frame_queue74.i = getelementptr inbounds %struct.mesh_path, ptr %gate.0148, i32 0, i32 8
  %qlen.i183.i = getelementptr inbounds %struct.mesh_path, ptr %gate.0148, i32 0, i32 8, i32 1
  %sdata.i.i = getelementptr inbounds %struct.mesh_path, ptr %gate.0148, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %fskb.0199.i = phi ptr [ %32, %for.body.lr.ph.i ], [ %tmp.0200.i, %for.inc.i.for.body.i_crit_edge ]
  %33 = ptrtoint ptr %fskb.0199.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %tmp.0200.i = load ptr, ptr %fskb.0199.i, align 8
  %34 = ptrtoint ptr %qlen.i183.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qlen.i183.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %35)
  %cmp76.i = icmp ugt i32 %35, 9
  br i1 %cmp76.i, label %if.then78.i, label %if.end79.i

if.then78.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %sdata.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sdata.i.i, align 4
  %name.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %37, i32 0, i32 10
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.26, ptr noundef %name.i) #12
  br label %for.end.i

if.end79.i:                                       ; preds = %for.body.i
  %call80.i = call ptr @skb_copy(ptr noundef %fskb.0199.i, i32 noundef 2592) #12
  %tobool82.not.i = icmp eq ptr %call80.i, null
  br i1 %tobool82.not.i, label %do.end100.i, label %if.end116.critedge.i, !prof !106

do.end100.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 181, i32 noundef 9, ptr noundef null) #12
  br label %for.end.i

if.end116.critedge.i:                             ; preds = %if.end79.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call80.i, i32 0, i32 19
  %38 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %39, align 2
  %call.i.i = call i32 @ieee80211_hdrlen(i16 noundef zeroext %41) #16
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 %call.i.i
  %42 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr.i.i, align 2
  %44 = and i8 %43, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i.i, label %if.then.i185.i, label %if.end116.critedge.i.if.end.i.i_crit_edge

if.end116.critedge.i.if.end.i.i_crit_edge:        ; preds = %if.end116.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i185.i:                                   ; preds = %if.end116.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i.i = call ptr @skb_push(ptr noundef nonnull %call80.i, i32 noundef 12) #12
  %45 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i, align 4
  %add.i184.i = add i32 %call.i.i, 6
  %47 = call ptr @memmove(ptr %46, ptr %39, i32 %add.i184.i)
  %48 = load ptr, ptr %data.i.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %48, i32 %call.i.i
  %49 = ptrtoint ptr %add.ptr6.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 2, ptr %add.ptr6.i.i, align 2
  %eaddr1.i.i = getelementptr inbounds %struct.ieee80211s_hdr, ptr %add.ptr6.i.i, i32 0, i32 3
  %addr3.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %48, i32 0, i32 4
  %50 = call ptr @memcpy(ptr %eaddr1.i.i, ptr %addr3.i.i, i32 6)
  %eaddr2.i.i = getelementptr inbounds %struct.ieee80211s_hdr, ptr %add.ptr6.i.i, i32 0, i32 4
  %addr4.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %48, i32 0, i32 6
  %51 = call ptr @memcpy(ptr %eaddr2.i.i, ptr %addr4.i.i, i32 6)
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i185.i, %if.end116.critedge.i.if.end.i.i_crit_edge
  %52 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i, align 4
  %54 = call i32 @llvm.read_register.i32(metadata !83) #12
  %and.i.i.i.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %57, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !94
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i.i, label %if.end.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.rcu_read_lock.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.i.i.rcu_read_lock.exit.i.i_crit_edge
  %58 = ptrtoint ptr %next_hop.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %next_hop.i, align 4
  %call14.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end23.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end23.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end23.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call16.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %land.lhs.true.i.i.do.end23.i.i_crit_edge, label %land.lhs.true18.i.i

land.lhs.true.i.i.do.end23.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end23.i.i

land.lhs.true18.i.i:                              ; preds = %land.lhs.true.i.i
  %.b50.i.i = load i1, ptr @prepare_for_gate.__warned, align 1
  br i1 %.b50.i.i, label %land.lhs.true18.i.i.do.end23.i.i_crit_edge, label %if.then20.i.i

land.lhs.true18.i.i.do.end23.i.i_crit_edge:       ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end23.i.i

if.then20.i.i:                                    ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @prepare_for_gate.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 130, ptr noundef nonnull @.str.8) #12
  br label %do.end23.i.i

do.end23.i.i:                                     ; preds = %if.then20.i.i, %land.lhs.true18.i.i.do.end23.i.i_crit_edge, %land.lhs.true.i.i.do.end23.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end23.i.i_crit_edge
  %addr.i.i = getelementptr inbounds %struct.sta_info, ptr %59, i32 0, i32 48, i32 1
  %addr1.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %53, i32 0, i32 2
  %60 = call ptr @memcpy(ptr %addr1.i.i, ptr %addr.i.i, i32 6)
  %call.i51.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i51.i.i, label %do.end23.i.i.prepare_for_gate.exit.i_crit_edge, label %land.lhs.true.i54.i.i

do.end23.i.i.prepare_for_gate.exit.i_crit_edge:   ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %prepare_for_gate.exit.i

land.lhs.true.i54.i.i:                            ; preds = %do.end23.i.i
  %call1.i52.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52.i.i)
  %tobool.not.i53.i.i = icmp eq i32 %call1.i52.i.i, 0
  br i1 %tobool.not.i53.i.i, label %land.lhs.true.i54.i.i.prepare_for_gate.exit.i_crit_edge, label %land.lhs.true2.i56.i.i

land.lhs.true.i54.i.i.prepare_for_gate.exit.i_crit_edge: ; preds = %land.lhs.true.i54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %prepare_for_gate.exit.i

land.lhs.true2.i56.i.i:                           ; preds = %land.lhs.true.i54.i.i
  %.b4.i55.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i55.i.i, label %land.lhs.true2.i56.i.i.prepare_for_gate.exit.i_crit_edge, label %if.then.i57.i.i

land.lhs.true2.i56.i.i.prepare_for_gate.exit.i_crit_edge: ; preds = %land.lhs.true2.i56.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %prepare_for_gate.exit.i

if.then.i57.i.i:                                  ; preds = %land.lhs.true2.i56.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #12
  br label %prepare_for_gate.exit.i

prepare_for_gate.exit.i:                          ; preds = %if.then.i57.i.i, %land.lhs.true2.i56.i.i.prepare_for_gate.exit.i_crit_edge, %land.lhs.true.i54.i.i.prepare_for_gate.exit.i_crit_edge, %do.end23.i.i.prepare_for_gate.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !97
  %61 = call i32 @llvm.read_register.i32(metadata !83) #12
  %and.i.i.i.i.i58.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i.i58.i.i to ptr
  %preempt_count.i.i.i.i59.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i.i59.i.i, align 4
  %sub.i.i.i.i.i = add i32 %64, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i59.i.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %addr2.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %53, i32 0, i32 3
  %65 = ptrtoint ptr %sdata.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sdata.i.i, align 4
  %addr28.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %66, i32 0, i32 59, i32 2
  %67 = call ptr @memcpy(ptr %addr2.i.i, ptr %addr28.i.i, i32 6)
  %addr330.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %53, i32 0, i32 4
  %68 = call ptr @memcpy(ptr %addr330.i.i, ptr %gate.0148, i32 6)
  call void @skb_queue_tail(ptr noundef %frame_queue74.i, ptr noundef nonnull %call80.i) #12
  br i1 %copy.0.off0147, label %prepare_for_gate.exit.i.for.inc.i_crit_edge, label %if.end121.i

prepare_for_gate.exit.i.for.inc.i_crit_edge:      ; preds = %prepare_for_gate.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end121.i:                                      ; preds = %prepare_for_gate.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %70, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %71 = ptrtoint ptr %fskb.0199.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %fskb.0199.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.41, ptr %fskb.0199.i, i32 0, i32 1
  %73 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %fskb.0199.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.41, ptr %72, i32 0, i32 1
  %75 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %74, ptr %prev17.i.i, align 4
  %76 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %72, ptr %74, align 8
  call void @kfree_skb_reason(ptr noundef %fskb.0199.i, i32 noundef 0) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end121.i, %prepare_for_gate.exit.i.for.inc.i_crit_edge
  %cmp72.not.i = icmp eq ptr %tmp.0200.i, %failq.i
  br i1 %cmp72.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end100.i, %if.then78.i, %skb_queue_splice_init.exit.i.for.end.i_crit_edge
  %sdata123.i = getelementptr inbounds %struct.mesh_path, ptr %gate.0148, i32 0, i32 5
  %77 = ptrtoint ptr %sdata123.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sdata123.i, align 4
  %name124.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %78, i32 0, i32 10
  %qlen.i187.i = getelementptr inbounds %struct.mesh_path, ptr %gate.0148, i32 0, i32 8, i32 1
  %79 = ptrtoint ptr %qlen.i187.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %qlen.i187.i, align 4
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.27, ptr noundef %name124.i, ptr noundef nonnull %gate.0148, i32 noundef %80) #12
  br i1 %copy.0.off0147, label %do.body134.i, label %for.end.i.mesh_path_move_to_queue.exit_crit_edge

for.end.i.mesh_path_move_to_queue.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_path_move_to_queue.exit

do.body134.i:                                     ; preds = %for.end.i
  %call143.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %81 = ptrtoint ptr %failq.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %failq.i, align 4
  %cmp.i.not.i188.i = icmp eq ptr %82, %failq.i
  br i1 %cmp.i.not.i188.i, label %do.body134.i.skb_queue_splice.exit.i_crit_edge, label %if.then.i195.i

do.body134.i.skb_queue_splice.exit.i_crit_edge:   ; preds = %do.body134.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_queue_splice.exit.i

if.then.i195.i:                                   ; preds = %do.body134.i
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %frame_queue.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %frame_queue.i, align 4
  %85 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i.i, align 4
  %prev5.i.i190.i = getelementptr inbounds %struct.anon.41, ptr %82, i32 0, i32 1
  %87 = ptrtoint ptr %prev5.i.i190.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %frame_queue.i, ptr %prev5.i.i190.i, align 4
  store volatile ptr %82, ptr %frame_queue.i, align 8
  %88 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %84, ptr %86, align 8
  %prev35.i.i191.i = getelementptr inbounds %struct.anon.41, ptr %84, i32 0, i32 1
  %89 = ptrtoint ptr %prev35.i.i191.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %86, ptr %prev35.i.i191.i, align 4
  %90 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %qlen.i.i, align 4
  %qlen1.i193.i = getelementptr inbounds %struct.mesh_path, ptr %from_mpath.0151, i32 0, i32 8, i32 1
  %92 = ptrtoint ptr %qlen1.i193.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %qlen1.i193.i, align 4
  %add.i194.i = add i32 %93, %91
  store i32 %add.i194.i, ptr %qlen1.i193.i, align 4
  br label %skb_queue_splice.exit.i

skb_queue_splice.exit.i:                          ; preds = %if.then.i195.i, %do.body134.i.skb_queue_splice.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call143.i) #12
  br label %mesh_path_move_to_queue.exit

mesh_path_move_to_queue.exit:                     ; preds = %skb_queue_splice.exit.i, %for.end.i.mesh_path_move_to_queue.exit_crit_edge, %do.end42.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %failq.i) #12
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.4, ptr noundef %name, ptr noundef nonnull %gate.0148, i32 noundef %10) #12
  br label %for.inc

for.inc:                                          ; preds = %if.else, %mesh_path_move_to_queue.exit
  %copy.1.off0 = phi i1 [ true, %mesh_path_move_to_queue.exit ], [ %copy.0.off0147, %if.else ]
  %from_mpath.1 = phi ptr [ %gate.0148, %mesh_path_move_to_queue.exit ], [ %from_mpath.0151, %if.else ]
  %gate_list = getelementptr inbounds %struct.mesh_path, ptr %gate.0148, i32 0, i32 4
  %94 = ptrtoint ptr %gate_list to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile ptr, ptr %gate_list, align 4
  %tobool31.not = icmp eq ptr %95, null
  %add.ptr35 = getelementptr i8, ptr %95, i32 -24
  %tobool13.not157 = icmp eq ptr %add.ptr35, null
  %tobool13.not = or i1 %tobool31.not, %tobool13.not157
  br i1 %tobool13.not, label %for.inc.do.body39_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.do.body39_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body39

do.body39:                                        ; preds = %for.inc.do.body39_crit_edge, %do.end.do.body39_crit_edge
  %from_mpath.0.lcssa = phi ptr [ %mpath, %do.end.do.body39_crit_edge ], [ %from_mpath.1, %for.inc.do.body39_crit_edge ]
  %call40 = call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true42, label %do.body39.do.end50_crit_edge

do.body39.do.end50_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end50

land.lhs.true42:                                  ; preds = %do.body39
  %call43 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true42.do.end50_crit_edge, label %land.lhs.true45

land.lhs.true42.do.end50_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end50

land.lhs.true45:                                  ; preds = %land.lhs.true42
  %.b120122 = load i1, ptr @mesh_path_send_to_gates.__warned.5, align 1
  br i1 %.b120122, label %land.lhs.true45.do.end50_crit_edge, label %if.then47

land.lhs.true45.do.end50_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end50

if.then47:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mesh_path_send_to_gates.__warned.5, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 693, ptr noundef nonnull @.str.2) #12
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %land.lhs.true45.do.end50_crit_edge, %land.lhs.true42.do.end50_crit_edge, %do.body39.do.end50_crit_edge
  %96 = ptrtoint ptr %mesh_paths to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile ptr, ptr %mesh_paths, align 4
  %tobool60.not = icmp eq ptr %97, null
  %add.ptr64 = getelementptr i8, ptr %97, i32 -24
  %tobool69.not152156 = icmp eq ptr %add.ptr64, null
  %tobool69.not152 = or i1 %tobool60.not, %tobool69.not152156
  br i1 %tobool69.not152, label %do.end50.for.end93_crit_edge, label %for.body70.lr.ph

do.end50.for.end93_crit_edge:                     ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end93

for.body70.lr.ph:                                 ; preds = %do.end50
  %name71 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  br label %for.body70

for.body70:                                       ; preds = %mesh_path_tx_pending.exit.for.body70_crit_edge, %for.body70.lr.ph
  %gate.1153 = phi ptr [ %add.ptr64, %for.body70.lr.ph ], [ %add.ptr89, %mesh_path_tx_pending.exit.for.body70_crit_edge ]
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.6, ptr noundef %name71, ptr noundef nonnull %gate.1153) #12
  %flags.i = getelementptr inbounds %struct.mesh_path, ptr %gate.1153, i32 0, i32 16
  %98 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i127 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i127, label %for.body70.mesh_path_tx_pending.exit_crit_edge, label %if.then.i129

for.body70.mesh_path_tx_pending.exit_crit_edge:   ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_path_tx_pending.exit

if.then.i129:                                     ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #14
  %sdata.i = getelementptr inbounds %struct.mesh_path, ptr %gate.1153, i32 0, i32 5
  %100 = ptrtoint ptr %sdata.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sdata.i, align 4
  %local.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %101, i32 0, i32 7
  %102 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %local.i, align 4
  %frame_queue.i128 = getelementptr inbounds %struct.mesh_path, ptr %gate.1153, i32 0, i32 8
  call void @ieee80211_add_pending_skbs(ptr noundef %103, ptr noundef %frame_queue.i128) #12
  br label %mesh_path_tx_pending.exit

mesh_path_tx_pending.exit:                        ; preds = %if.then.i129, %for.body70.mesh_path_tx_pending.exit_crit_edge
  %gate_list81 = getelementptr inbounds %struct.mesh_path, ptr %gate.1153, i32 0, i32 4
  %104 = ptrtoint ptr %gate_list81 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile ptr, ptr %gate_list81, align 4
  %tobool85.not = icmp eq ptr %105, null
  %add.ptr89 = getelementptr i8, ptr %105, i32 -24
  %tobool69.not158 = icmp eq ptr %add.ptr89, null
  %tobool69.not = or i1 %tobool85.not, %tobool69.not158
  br i1 %tobool69.not, label %mesh_path_tx_pending.exit.for.end93_crit_edge, label %mesh_path_tx_pending.exit.for.body70_crit_edge

mesh_path_tx_pending.exit.for.body70_crit_edge:   ; preds = %mesh_path_tx_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body70

mesh_path_tx_pending.exit.for.end93_crit_edge:    ; preds = %mesh_path_tx_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end93

for.end93:                                        ; preds = %mesh_path_tx_pending.exit.for.end93_crit_edge, %do.end50.for.end93_crit_edge
  %call.i130 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i130, label %for.end93.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i133

for.end93.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i133:                               ; preds = %for.end93
  %call1.i131 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i131)
  %tobool.not.i132 = icmp eq i32 %call1.i131, 0
  br i1 %tobool.not.i132, label %land.lhs.true.i133.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i135

land.lhs.true.i133.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i133
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i135:                              ; preds = %land.lhs.true.i133
  %.b4.i134 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i134, label %land.lhs.true2.i135.rcu_read_unlock.exit_crit_edge, label %if.then.i136

land.lhs.true2.i135.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i135
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i136:                                     ; preds = %land.lhs.true2.i135
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i136, %land.lhs.true2.i135.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i133.rcu_read_unlock.exit_crit_edge, %for.end93.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !97
  %106 = call i32 @llvm.read_register.i32(metadata !83) #12
  %and.i.i.i.i.i137 = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i.i.i.i137 to ptr
  %preempt_count.i.i.i.i138 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %preempt_count.i.i.i.i138 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %preempt_count.i.i.i.i138, align 4
  %sub.i.i.i = add i32 %109, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i138, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %cmp = icmp eq ptr %from_mpath.0.lcssa, %mpath
  %cond94 = select i1 %cmp, i32 -113, i32 0
  ret i32 %cond94
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mesh_path_discard_frame(ptr nocapture noundef %sdata, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  %dropped_frames_no_route = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 23, i32 4
  %0 = ptrtoint ptr %dropped_frames_no_route to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dropped_frames_no_route, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %dropped_frames_no_route, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mesh_path_flush_pending(ptr noundef %mpath) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frame_queue = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 8
  %call2 = tail call ptr @skb_dequeue(ptr noundef %frame_queue) #12
  %cmp.not3 = icmp eq ptr %call2, null
  br i1 %cmp.not3, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %sdata = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call4 = phi ptr [ %call2, %while.body.lr.ph ], [ %call, %while.body.while.body_crit_edge ]
  %0 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata, align 4
  tail call void @kfree_skb_reason(ptr noundef nonnull %call4, i32 noundef 0) #12
  %dropped_frames_no_route.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 23, i32 4
  %2 = ptrtoint ptr %dropped_frames_no_route.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dropped_frames_no_route.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %dropped_frames_no_route.i, align 4
  %call = tail call ptr @skb_dequeue(ptr noundef %frame_queue) #12
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mesh_path_fix_nexthop(ptr noundef %mpath, ptr noundef %next_hop) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state_lock = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %state_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !93
  %next_hop21.i = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 6
  %0 = ptrtoint ptr %next_hop21.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %next_hop, ptr %next_hop21.i, align 4
  %frame_queue.i = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 8
  %lock.i = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 8, i32 2
  %call35.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %1 = ptrtoint ptr %frame_queue.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %skb.065.i = load ptr, ptr %frame_queue.i, align 4
  %cmp42.not66.i = icmp eq ptr %skb.065.i, %frame_queue.i
  br i1 %cmp42.not66.i, label %entry.mesh_path_assign_nexthop.exit_crit_edge, label %for.body.lr.ph.i

entry.mesh_path_assign_nexthop.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_path_assign_nexthop.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %next_hop, i32 0, i32 48, i32 1
  %sdata.i = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 5
  %sdata49.i = getelementptr inbounds %struct.sta_info, ptr %next_hop, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %skb.067.i = phi ptr [ %skb.065.i, %for.body.lr.ph.i ], [ %skb.0.i, %for.body.i.for.body.i_crit_edge ]
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.067.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %addr1.i, ptr %addr.i, i32 6)
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %sdata.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdata.i, align 4
  %addr47.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 59, i32 2
  %7 = call ptr @memcpy(ptr %addr2.i, ptr %addr47.i, i32 6)
  %8 = ptrtoint ptr %sdata49.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdata49.i, align 4
  tail call void @ieee80211_mps_set_frame_flags(ptr noundef %9, ptr noundef %next_hop, ptr noundef %3) #12
  %10 = ptrtoint ptr %skb.067.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %skb.0.i = load ptr, ptr %skb.067.i, align 4
  %cmp42.not.i = icmp eq ptr %skb.0.i, %frame_queue.i
  br i1 %cmp42.not.i, label %for.body.i.mesh_path_assign_nexthop.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.mesh_path_assign_nexthop.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_path_assign_nexthop.exit

mesh_path_assign_nexthop.exit:                    ; preds = %for.body.i.mesh_path_assign_nexthop.exit_crit_edge, %entry.mesh_path_assign_nexthop.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call35.i) #12
  %sn = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 10
  %11 = ptrtoint ptr %sn to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 65535, ptr %sn, align 4
  %metric = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 11
  %12 = ptrtoint ptr %metric to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %metric, align 4
  %hop_count = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 12
  %13 = ptrtoint ptr %hop_count to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %hop_count, align 4
  %exp_time = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 13
  %14 = ptrtoint ptr %exp_time to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %exp_time, align 4
  %flags = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 16
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 29, ptr %flags, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #12
  %mesh = getelementptr inbounds %struct.sta_info, ptr %next_hop, i32 0, i32 17
  %16 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mesh, align 8
  %fail_avg = getelementptr inbounds %struct.mesh_sta, ptr %17, i32 0, i32 18
  %18 = ptrtoint ptr %fail_avg to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %fail_avg, align 4
  %19 = load ptr, ptr %mesh, align 8
  %fail_avg3 = getelementptr inbounds %struct.mesh_sta, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %fail_avg3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %fail_avg3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  %sub.i = mul i32 %21, 7
  %add.i = add i32 %sub.i, 1048576
  %shr.i = lshr i32 %add.i, 3
  %cond.i = select i1 %tobool.not.i, i32 1048576, i32 %shr.i
  %22 = ptrtoint ptr %fail_avg3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %cond.i, ptr %fail_avg3, align 4
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %and.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i16 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i16, label %mesh_path_assign_nexthop.exit.mesh_path_tx_pending.exit_crit_edge, label %if.then.i

mesh_path_assign_nexthop.exit.mesh_path_tx_pending.exit_crit_edge: ; preds = %mesh_path_assign_nexthop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_path_tx_pending.exit

if.then.i:                                        ; preds = %mesh_path_assign_nexthop.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sdata.i17 = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 5
  %25 = ptrtoint ptr %sdata.i17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdata.i17, align 4
  %local.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %local.i, align 4
  tail call void @ieee80211_add_pending_skbs(ptr noundef %28, ptr noundef %frame_queue.i) #12
  br label %mesh_path_tx_pending.exit

mesh_path_tx_pending.exit:                        ; preds = %if.then.i, %mesh_path_assign_nexthop.exit.mesh_path_tx_pending.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mesh_pathtbl_init(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mesh_paths = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46
  %0 = ptrtoint ptr %mesh_paths to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %mesh_paths, align 4
  %walk_head.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46, i32 3
  %1 = ptrtoint ptr %walk_head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %walk_head.i, align 4
  %entries.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %entries.i, i32 noundef 4) #12
  %2 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %entries.i, align 4
  %gates_lock.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %gates_lock.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @mesh_table_init.__key, i16 noundef signext 3) #12
  %walk_lock.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %walk_lock.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @mesh_table_init.__key.29, i16 noundef signext 3) #12
  %rhead.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46, i32 2
  %call5.i = tail call i32 @rhashtable_init(ptr noundef %rhead.i, ptr noundef nonnull @mesh_rht_params) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %entry.mesh_table_init.exit_crit_edge, label %do.end15.i, !prof !101

entry.mesh_table_init.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_table_init.exit

do.end15.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 61, i32 noundef 9, ptr noundef null) #12
  br label %mesh_table_init.exit

mesh_table_init.exit:                             ; preds = %do.end15.i, %entry.mesh_table_init.exit_crit_edge
  %mpp_paths = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47
  %3 = ptrtoint ptr %mpp_paths to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %mpp_paths, align 4
  %walk_head.i3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47, i32 3
  %4 = ptrtoint ptr %walk_head.i3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %walk_head.i3, align 4
  %entries.i4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47, i32 5
  %call.i.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %entries.i4, i32 noundef 4) #12
  %5 = ptrtoint ptr %entries.i4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %entries.i4, align 4
  %gates_lock.i6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %gates_lock.i6, ptr noundef nonnull @.str.28, ptr noundef nonnull @mesh_table_init.__key, i16 noundef signext 3) #12
  %walk_lock.i7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %walk_lock.i7, ptr noundef nonnull @.str.30, ptr noundef nonnull @mesh_table_init.__key.29, i16 noundef signext 3) #12
  %rhead.i8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47, i32 2
  %call5.i9 = tail call i32 @rhashtable_init(ptr noundef %rhead.i8, ptr noundef nonnull @mesh_rht_params) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i9)
  %tobool.not.i10 = icmp eq i32 %call5.i9, 0
  br i1 %tobool.not.i10, label %mesh_table_init.exit.mesh_table_init.exit12_crit_edge, label %do.end15.i11, !prof !101

mesh_table_init.exit.mesh_table_init.exit12_crit_edge: ; preds = %mesh_table_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_table_init.exit12

do.end15.i11:                                     ; preds = %mesh_table_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 61, i32 noundef 9, ptr noundef null) #12
  br label %mesh_table_init.exit12

mesh_table_init.exit12:                           ; preds = %do.end15.i11, %mesh_table_init.exit.mesh_table_init.exit12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mesh_path_expire(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mesh_paths = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46
  %walk_lock.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %walk_lock.i) #12
  %walk_head.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46, i32 3
  %0 = ptrtoint ptr %walk_head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %walk_head.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  %tobool2.not46.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not4.i = or i1 %tobool.not.i, %tobool2.not46.i
  br i1 %tobool2.not4.i, label %entry.mesh_path_tbl_expire.exit_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.mesh_path_tbl_expire.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_path_tbl_expire.exit

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %mpath.05.i = phi ptr [ %add.ptr16.i, %for.inc.i.land.rhs.i_crit_edge ], [ %add.ptr.i, %entry.land.rhs.i_crit_edge ]
  %walk_list.i = getelementptr inbounds %struct.mesh_path, ptr %mpath.05.i, i32 0, i32 3
  %2 = ptrtoint ptr %walk_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %walk_list.i, align 4
  %flags.i = getelementptr inbounds %struct.mesh_path, ptr %mpath.05.i, i32 0, i32 16
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %6 = and i32 %5, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %land.lhs.true9.i, label %land.rhs.i.for.inc.i_crit_edge

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true9.i:                                 ; preds = %land.rhs.i
  %exp_time.i = getelementptr inbounds %struct.mesh_path, ptr %mpath.05.i, i32 0, i32 13
  %8 = ptrtoint ptr %exp_time.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %exp_time.i, align 4
  %add.i = add i32 %9, 60000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true9.i.for.inc.i_crit_edge

land.lhs.true9.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__mesh_path_del(ptr noundef %mesh_paths, ptr noundef nonnull %mpath.05.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true9.i.for.inc.i_crit_edge, %land.rhs.i.for.inc.i_crit_edge
  %tobool12.not.i = icmp eq ptr %3, null
  %add.ptr16.i = getelementptr i8, ptr %3, i32 -16
  %tobool2.not7.i = icmp eq ptr %add.ptr16.i, null
  %tobool2.not.i = or i1 %tobool12.not.i, %tobool2.not7.i
  br i1 %tobool2.not.i, label %for.inc.i.mesh_path_tbl_expire.exit_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

for.inc.i.mesh_path_tbl_expire.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_path_tbl_expire.exit

mesh_path_tbl_expire.exit:                        ; preds = %for.inc.i.mesh_path_tbl_expire.exit_crit_edge, %entry.mesh_path_tbl_expire.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %walk_lock.i) #12
  %mpp_paths = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47
  %walk_lock.i5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %walk_lock.i5) #12
  %walk_head.i6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47, i32 3
  %11 = ptrtoint ptr %walk_head.i6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %walk_head.i6, align 4
  %tobool.not.i7 = icmp eq ptr %12, null
  %add.ptr.i8 = getelementptr i8, ptr %12, i32 -16
  %tobool2.not46.i9 = icmp eq ptr %add.ptr.i8, null
  %tobool2.not4.i10 = or i1 %tobool.not.i7, %tobool2.not46.i9
  br i1 %tobool2.not4.i10, label %mesh_path_tbl_expire.exit.mesh_path_tbl_expire.exit26_crit_edge, label %mesh_path_tbl_expire.exit.land.rhs.i14_crit_edge

mesh_path_tbl_expire.exit.land.rhs.i14_crit_edge: ; preds = %mesh_path_tbl_expire.exit
  br label %land.rhs.i14

mesh_path_tbl_expire.exit.mesh_path_tbl_expire.exit26_crit_edge: ; preds = %mesh_path_tbl_expire.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_path_tbl_expire.exit26

land.rhs.i14:                                     ; preds = %for.inc.i25.land.rhs.i14_crit_edge, %mesh_path_tbl_expire.exit.land.rhs.i14_crit_edge
  %mpath.05.i11 = phi ptr [ %add.ptr16.i22, %for.inc.i25.land.rhs.i14_crit_edge ], [ %add.ptr.i8, %mesh_path_tbl_expire.exit.land.rhs.i14_crit_edge ]
  %walk_list.i12 = getelementptr inbounds %struct.mesh_path, ptr %mpath.05.i11, i32 0, i32 3
  %13 = ptrtoint ptr %walk_list.i12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %walk_list.i12, align 4
  %flags.i13 = getelementptr inbounds %struct.mesh_path, ptr %mpath.05.i11, i32 0, i32 16
  %15 = ptrtoint ptr %flags.i13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i13, align 4
  %17 = and i32 %16, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %land.lhs.true9.i19, label %land.rhs.i14.for.inc.i25_crit_edge

land.rhs.i14.for.inc.i25_crit_edge:               ; preds = %land.rhs.i14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i25

land.lhs.true9.i19:                               ; preds = %land.rhs.i14
  %exp_time.i15 = getelementptr inbounds %struct.mesh_path, ptr %mpath.05.i11, i32 0, i32 13
  %19 = ptrtoint ptr %exp_time.i15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %exp_time.i15, align 4
  %add.i16 = add i32 %20, 60000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub.i17 = sub i32 %add.i16, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i17)
  %cmp.i18 = icmp slt i32 %sub.i17, 0
  br i1 %cmp.i18, label %if.then.i20, label %land.lhs.true9.i19.for.inc.i25_crit_edge

land.lhs.true9.i19.for.inc.i25_crit_edge:         ; preds = %land.lhs.true9.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i25

if.then.i20:                                      ; preds = %land.lhs.true9.i19
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__mesh_path_del(ptr noundef %mpp_paths, ptr noundef nonnull %mpath.05.i11) #12
  br label %for.inc.i25

for.inc.i25:                                      ; preds = %if.then.i20, %land.lhs.true9.i19.for.inc.i25_crit_edge, %land.rhs.i14.for.inc.i25_crit_edge
  %tobool12.not.i21 = icmp eq ptr %14, null
  %add.ptr16.i22 = getelementptr i8, ptr %14, i32 -16
  %tobool2.not7.i23 = icmp eq ptr %add.ptr16.i22, null
  %tobool2.not.i24 = or i1 %tobool12.not.i21, %tobool2.not7.i23
  br i1 %tobool2.not.i24, label %for.inc.i25.mesh_path_tbl_expire.exit26_crit_edge, label %for.inc.i25.land.rhs.i14_crit_edge

for.inc.i25.land.rhs.i14_crit_edge:               ; preds = %for.inc.i25
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i14

for.inc.i25.mesh_path_tbl_expire.exit26_crit_edge: ; preds = %for.inc.i25
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_path_tbl_expire.exit26

mesh_path_tbl_expire.exit26:                      ; preds = %for.inc.i25.mesh_path_tbl_expire.exit26_crit_edge, %mesh_path_tbl_expire.exit.mesh_path_tbl_expire.exit26_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %walk_lock.i5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mesh_pathtbl_unregister(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mesh_paths = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46
  %rhead.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 46, i32 2
  tail call void @rhashtable_free_and_destroy(ptr noundef %rhead.i, ptr noundef nonnull @mesh_path_rht_free, ptr noundef %mesh_paths) #12
  %mpp_paths = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47
  %rhead.i3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 47, i32 2
  tail call void @rhashtable_free_and_destroy(ptr noundef %rhead.i3, ptr noundef nonnull @mesh_path_rht_free, ptr noundef %mpp_paths) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup(ptr noundef %ht, ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #4 align 64 {
entry:
  %arg.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %params.coerce.fca.6.extract.i = extractvalue [7 x i32] %params.coerce, 6
  %0 = inttoptr i32 %params.coerce.fca.6.extract.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i) #12
  %1 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i, i32 0, i32 1
  %2 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ht, ptr %arg.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %key, ptr %1, align 4
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.do.end12.i_crit_edge

entry.do.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

lor.lhs.false.i:                                  ; preds = %entry
  %call5.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end12.i_crit_edge

lor.lhs.false.i.do.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %.b92.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i, label %land.lhs.true9.i.do.end12.i_crit_edge, label %if.then.i

land.lhs.true9.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 594, ptr noundef nonnull @.str.8) #12
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then.i, %land.lhs.true9.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %lor.lhs.false.i.do.end12.i_crit_edge, %entry.do.end12.i_crit_edge
  %hashfn.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract.i)
  %tobool19.not.i = icmp eq i32 %params.coerce.fca.6.extract.i, 0
  %head_offset.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %do.end60.i.if.then.i.i.i_crit_edge, %do.end12.i
  %tbl.0.i = phi ptr [ %5, %do.end12.i ], [ %36, %do.end60.i.if.then.i.i.i_crit_edge ]
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %6 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hash_rnd.i.i, align 8
  %8 = ptrtoint ptr %hashfn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hashfn.i.i.i, align 4
  %10 = ptrtoint ptr %key_len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_len1.i.i.i, align 4
  %call.i.i.i = call i32 %9(ptr noundef %key, i32 noundef %11, i32 noundef %7) #12
  %12 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i = add i32 %13, -1
  %and.i3.i.i = and i32 %sub.i.i.i, %call.i.i.i
  %nest.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %nest.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nest.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %cond.true.i.i, !prof !101

cond.true.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i) #12
  br label %rht_bucket.exit.i

cond.false.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i
  br label %rht_bucket.exit.i

rht_bucket.exit.i:                                ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi ptr [ %call.i.i, %cond.true.i.i ], [ %arrayidx.i.i, %cond.false.i.i ]
  %16 = ptrtoint ptr %cond.i.i to i32
  %or.i.i.i = or i32 %16, 1
  %17 = inttoptr i32 %or.i.i.i to ptr
  br label %do.body16.i

do.body16.i:                                      ; preds = %do.cond34.i.do.body16.i_crit_edge, %rht_bucket.exit.i
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !107
  %18 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %cond.i.i, align 4
  %call.i93.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i)
  %tobool.not.i94.i = icmp eq i32 %call.i93.i, 0
  br i1 %tobool.not.i94.i, label %land.lhs.true.i.i, label %do.body16.i.rht_ptr_rcu.exit.i_crit_edge

do.body16.i.rht_ptr_rcu.exit.i_crit_edge:         ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %do.body16.i
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.rht_ptr_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.rht_ptr_rcu.exit.i_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b11.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i, label %land.lhs.true4.i.i.rht_ptr_rcu.exit.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.rht_ptr_rcu.exit.i_crit_edge:  ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 369, ptr noundef nonnull @.str.8) #12
  br label %rht_ptr_rcu.exit.i

rht_ptr_rcu.exit.i:                               ; preds = %if.then.i.i, %land.lhs.true4.i.i.rht_ptr_rcu.exit.i_crit_edge, %land.lhs.true.i.i.rht_ptr_rcu.exit.i_crit_edge, %do.body16.i.rht_ptr_rcu.exit.i_crit_edge
  %20 = ptrtoint ptr %19 to i32
  %and.i.i95.i = and i32 %20, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i)
  %tobool.not.i.i96.i = icmp eq i32 %and.i.i95.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i96.i, i32 %or.i.i.i, i32 %and.i.i95.i
  %21 = inttoptr i32 %cond.i.i.i to ptr
  %and.i106.i = and i32 %cond.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i)
  %tobool.i.not107.i = icmp eq i32 %and.i106.i, 0
  br i1 %tobool.i.not107.i, label %rht_ptr_rcu.exit.i.for.body.i_crit_edge, label %rht_ptr_rcu.exit.i.do.cond34.i_crit_edge

rht_ptr_rcu.exit.i.do.cond34.i_crit_edge:         ; preds = %rht_ptr_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond34.i

rht_ptr_rcu.exit.i.for.body.i_crit_edge:          ; preds = %rht_ptr_rcu.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %rht_ptr_rcu.exit.i.for.body.i_crit_edge
  %he.0108.i = phi ptr [ %33, %for.inc.i.for.body.i_crit_edge ], [ %21, %rht_ptr_rcu.exit.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %head_offset.i.i, align 2
  %conv.i98.i = zext i16 %23 to i32
  %idx.neg.i99.i = sub nsw i32 0, %conv.i98.i
  %add.ptr.i100.i = getelementptr i8, ptr %he.0108.i, i32 %idx.neg.i99.i
  br i1 %tobool19.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %for.body.i
  %call22.i = call i32 %0(ptr noundef nonnull %arg.i, ptr noundef %add.ptr.i100.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %cond.true.i.__rhashtable_lookup.exit_crit_edge, label %cond.true.i.for.inc.i_crit_edge

cond.true.i.for.inc.i_crit_edge:                  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

cond.true.i.__rhashtable_lookup.exit_crit_edge:   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_lookup.exit

cond.false.i:                                     ; preds = %for.body.i
  %24 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arg.i, align 4
  %key_offset.i.i = getelementptr inbounds %struct.rhashtable, ptr %25, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %key_offset.i.i, align 4
  %conv.i101.i = zext i16 %27 to i32
  %add.ptr.i102.i = getelementptr i8, ptr %add.ptr.i100.i, i32 %conv.i101.i
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %key_len.i.i = getelementptr inbounds %struct.rhashtable, ptr %25, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %key_len.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %key_len.i.i, align 2
  %conv3.i.i = zext i16 %31 to i32
  %bcmp.i = call i32 @bcmp(ptr %add.ptr.i102.i, ptr %29, i32 %conv3.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool26.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool26.not.i, label %cond.false.i.__rhashtable_lookup.exit_crit_edge, label %cond.false.i.for.inc.i_crit_edge

cond.false.i.for.inc.i_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

cond.false.i.__rhashtable_lookup.exit_crit_edge:  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_lookup.exit

for.inc.i:                                        ; preds = %cond.false.i.for.inc.i_crit_edge, %cond.true.i.for.inc.i_crit_edge
  %32 = ptrtoint ptr %he.0108.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %he.0108.i, align 4
  %34 = ptrtoint ptr %33 to i32
  %and.i.i = and i32 %34, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.cond34.i_crit_edge

for.inc.i.do.cond34.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond34.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.cond34.i:                                      ; preds = %for.inc.i.do.cond34.i_crit_edge, %rht_ptr_rcu.exit.i.do.cond34.i_crit_edge
  %he.0.lcssa.i = phi ptr [ %21, %rht_ptr_rcu.exit.i.do.cond34.i_crit_edge ], [ %33, %for.inc.i.do.cond34.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %he.0.lcssa.i, %17
  br i1 %cmp.not.i, label %do.end39.i, label %do.cond34.i.do.body16.i_crit_edge

do.cond34.i.do.body16.i_crit_edge:                ; preds = %do.cond34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16.i

do.end39.i:                                       ; preds = %do.cond34.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %35 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %future_tbl.i, align 4
  %call47.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %lor.lhs.false49.i, label %do.end39.i.do.end60.i_crit_edge

do.end39.i.do.end60.i_crit_edge:                  ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i

lor.lhs.false49.i:                                ; preds = %do.end39.i
  %call50.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %land.lhs.true52.i, label %lor.lhs.false49.i.do.end60.i_crit_edge

lor.lhs.false49.i.do.end60.i_crit_edge:           ; preds = %lor.lhs.false49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i

land.lhs.true52.i:                                ; preds = %lor.lhs.false49.i
  %call53.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %land.lhs.true52.i.do.end60.i_crit_edge, label %land.lhs.true55.i

land.lhs.true52.i.do.end60.i_crit_edge:           ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i

land.lhs.true55.i:                                ; preds = %land.lhs.true52.i
  %.b9091.i = load i1, ptr @__rhashtable_lookup.__warned.9, align 1
  br i1 %.b9091.i, label %land.lhs.true55.i.do.end60.i_crit_edge, label %if.then57.i

land.lhs.true55.i.do.end60.i_crit_edge:           ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i

if.then57.i:                                      ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_lookup.__warned.9, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 614, ptr noundef nonnull @.str.8) #12
  br label %do.end60.i

do.end60.i:                                       ; preds = %if.then57.i, %land.lhs.true55.i.do.end60.i_crit_edge, %land.lhs.true52.i.do.end60.i_crit_edge, %lor.lhs.false49.i.do.end60.i_crit_edge, %do.end39.i.do.end60.i_crit_edge
  %tobool62.not.i = icmp eq ptr %36, null
  br i1 %tobool62.not.i, label %__rhashtable_lookup.exit.thread, label %do.end60.i.if.then.i.i.i_crit_edge, !prof !101

do.end60.i.if.then.i.i.i_crit_edge:               ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

__rhashtable_lookup.exit.thread:                  ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #12
  br label %cond.end

__rhashtable_lookup.exit:                         ; preds = %cond.false.i.__rhashtable_lookup.exit_crit_edge, %cond.true.i.__rhashtable_lookup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #12
  %tobool.not = icmp eq ptr %he.0108.i, null
  br i1 %tobool.not, label %__rhashtable_lookup.exit.cond.end_crit_edge, label %cond.true

__rhashtable_lookup.exit.cond.end_crit_edge:      ; preds = %__rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %__rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %head_offset.i.i, align 2
  %conv.i = zext i16 %38 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i
  %add.ptr.i = getelementptr i8, ptr %he.0108.i, i32 %idx.neg.i
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %__rhashtable_lookup.exit.cond.end_crit_edge, %__rhashtable_lookup.exit.thread
  %cond = phi ptr [ %add.ptr.i, %cond.true ], [ null, %__rhashtable_lookup.exit.cond.end_crit_edge ], [ null, %__rhashtable_lookup.exit.thread ]
  ret ptr %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mesh_path_timer(ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__rhashtable_insert_fast(ptr noundef %ht, ptr noundef %key, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #4 align 64 {
entry:
  %arg = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %params.coerce.fca.6.extract = extractvalue [7 x i32] %params.coerce, 6
  %0 = inttoptr i32 %params.coerce.fca.6.extract to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg) #12
  %1 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ht, ptr %arg, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %key, ptr %1, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !83) #12
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !94
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %8 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ht, align 4
  %call = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

lor.lhs.false:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %lor.lhs.false.do.end12_crit_edge

lor.lhs.false.do.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true9

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b2 = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2, label %land.lhs.true9.do.end12_crit_edge, label %if.then

land.lhs.true9.do.end12_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 715, ptr noundef nonnull @.str.8) #12
  br label %do.end12

do.end12:                                         ; preds = %if.then, %land.lhs.true9.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %lor.lhs.false.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %params.coerce.fca.5.extract.i = extractvalue [7 x i32] %params.coerce, 5
  %10 = inttoptr i32 %params.coerce.fca.5.extract.i to ptr
  %head_offset.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %head_offset.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i)
  %tobool.not.i4 = icmp eq i32 %params.coerce.fca.5.extract.i, 0
  br i1 %tobool.not.i4, label %if.then.i.i.i, label %cond.true.i, !prof !106

cond.true.i:                                      ; preds = %do.end12
  %params.coerce.fca.0.extract.i = extractvalue [7 x i32] %params.coerce, 0
  %conv.i = and i32 %params.coerce.fca.0.extract.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool4.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool4.not.i, label %cond.false.i, label %cond.true.i.cond.end.i_crit_edge

cond.true.i.cond.end.i_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.false.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %key_len6.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %key_len6.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %key_len6.i, align 2
  %conv7.i = zext i16 %14 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv7.i, %cond.false.i ], [ %conv.i, %cond.true.i.cond.end.i_crit_edge ]
  %hash_rnd.i = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 2
  %15 = ptrtoint ptr %hash_rnd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hash_rnd.i, align 8
  %call8.i = tail call i32 %10(ptr noundef %add.ptr.i.i, i32 noundef %cond.i, i32 noundef %16) #12
  br label %rht_head_hashfn.exit

if.then.i.i.i:                                    ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #14
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 2
  %17 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hash_rnd.i.i, align 8
  %params.coerce.fca.1.extract.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i = lshr i32 %params.coerce.fca.1.extract.i, 16
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %params.sroa.3.4.extract.shift.i
  %hashfn.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %19 = ptrtoint ptr %hashfn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hashfn.i.i.i, align 4
  %key_len1.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  %21 = ptrtoint ptr %key_len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %key_len1.i.i.i, align 4
  %call.i.i.i = tail call i32 %20(ptr noundef %add.ptr.i, i32 noundef %22, i32 noundef %18) #12
  br label %rht_head_hashfn.exit

rht_head_hashfn.exit:                             ; preds = %if.then.i.i.i, %cond.end.i
  %hash.2.i.i.sink.i = phi i32 [ %call8.i, %cond.end.i ], [ %call.i.i.i, %if.then.i.i.i ]
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %9, align 128
  %sub.i.i.i = add i32 %24, -1
  %and.i3.i.i = and i32 %sub.i.i.i, %hash.2.i.i.sink.i
  %nest.i = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 1
  %25 = ptrtoint ptr %nest.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nest.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i5 = icmp eq i32 %26, 0
  br i1 %tobool.not.i5, label %cond.false.i8, label %cond.true.i7, !prof !101

cond.true.i7:                                     ; preds = %rht_head_hashfn.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i6 = tail call ptr @rht_bucket_nested_insert(ptr noundef %ht, ptr noundef %9, i32 noundef %and.i3.i.i) #12
  br label %rht_bucket_insert.exit

cond.false.i8:                                    ; preds = %rht_head_hashfn.exit
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.bucket_table, ptr %9, i32 0, i32 8, i32 %and.i3.i.i
  br label %rht_bucket_insert.exit

rht_bucket_insert.exit:                           ; preds = %cond.false.i8, %cond.true.i7
  %cond.i9 = phi ptr [ %call.i6, %cond.true.i7 ], [ %arrayidx.i, %cond.false.i8 ]
  %tobool17.not = icmp eq ptr %cond.i9, null
  br i1 %tobool17.not, label %rht_bucket_insert.exit.out_crit_edge, label %if.end19

rht_bucket_insert.exit.out_crit_edge:             ; preds = %rht_bucket_insert.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end19:                                         ; preds = %rht_bucket_insert.exit
  tail call fastcc void @rht_lock(ptr noundef %9, ptr noundef nonnull %cond.i9)
  %future_tbl = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 5
  %27 = ptrtoint ptr %future_tbl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %future_tbl, align 4
  %tobool25.not = icmp eq ptr %28, null
  br i1 %tobool25.not, label %if.end30, label %if.end19.slow_path_crit_edge, !prof !101

if.end19.slow_path_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path

slow_path:                                        ; preds = %rht_grow_above_100.exit.slow_path_crit_edge, %for.end.slow_path_crit_edge, %if.end19.slow_path_crit_edge
  call fastcc void @rht_unlock(ptr noundef %9, ptr noundef nonnull %cond.i9)
  %call.i11 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i11, label %slow_path.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

slow_path.rcu_read_unlock.exit_crit_edge:         ; preds = %slow_path
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %slow_path
  %call1.i12 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %slow_path.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !97
  %29 = call i32 @llvm.read_register.i32(metadata !83) #12
  %and.i.i.i.i.i18 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i20 = add i32 %32, -1
  store volatile i32 %sub.i.i.i20, ptr %preempt_count.i.i.i.i19, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %call29 = call ptr @rhashtable_insert_slow(ptr noundef %ht, ptr noundef %key, ptr noundef %obj) #12
  br label %cleanup210

if.end30:                                         ; preds = %if.end19
  %call.i21 = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %9, i32 noundef %and.i3.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool.not.i22 = icmp eq i32 %call.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i24, label %if.end30.rht_ptr.exit_crit_edge

if.end30.rht_ptr.exit_crit_edge:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit

land.lhs.true.i24:                                ; preds = %if.end30
  %call1.i23 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool2.not.i = icmp eq i32 %call1.i23, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i24.rht_ptr.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i24.rht_ptr.exit_crit_edge:         ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i24
  %.b7.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i, label %land.lhs.true3.i.rht_ptr.exit_crit_edge, label %if.then.i25

land.lhs.true3.i.rht_ptr.exit_crit_edge:          ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit

if.then.i25:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 377, ptr noundef nonnull @.str.18) #12
  br label %rht_ptr.exit

rht_ptr.exit:                                     ; preds = %if.then.i25, %land.lhs.true3.i.rht_ptr.exit_crit_edge, %land.lhs.true.i24.rht_ptr.exit_crit_edge, %if.end30.rht_ptr.exit_crit_edge
  %33 = ptrtoint ptr %cond.i9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cond.i9, align 4
  %35 = ptrtoint ptr %34 to i32
  %and.i.i = and i32 %35, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %36 = ptrtoint ptr %cond.i9 to i32
  %or.i.i = or i32 %36, 1
  %cond.i.i = select i1 %tobool.not.i.i, i32 %or.i.i, i32 %and.i.i
  %and.i84 = and i32 %cond.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %tobool.i.not85 = icmp eq i32 %and.i84, 0
  br i1 %tobool.i.not85, label %for.body.lr.ph, label %rht_ptr.exit.if.end152_crit_edge

rht_ptr.exit.if.end152_crit_edge:                 ; preds = %rht_ptr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

for.body.lr.ph:                                   ; preds = %rht_ptr.exit
  %37 = inttoptr i32 %cond.i.i to ptr
  %tobool35.not = icmp eq ptr %key, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract)
  %tobool37.not = icmp eq i32 %params.coerce.fca.6.extract, 0
  br label %for.body

for.body:                                         ; preds = %do.end147.for.body_crit_edge, %for.body.lr.ph
  %head.087 = phi ptr [ %37, %for.body.lr.ph ], [ %51, %do.end147.for.body_crit_edge ]
  %elasticity.086 = phi i32 [ 16, %for.body.lr.ph ], [ %dec, %do.end147.for.body_crit_edge ]
  %dec = add i32 %elasticity.086, -1
  br i1 %tobool35.not, label %for.body.do.body136_crit_edge, label %lor.lhs.false36

for.body.do.body136_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body136

lor.lhs.false36:                                  ; preds = %for.body
  %38 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %head_offset.i.i, align 2
  %conv.i29 = zext i16 %39 to i32
  %idx.neg.i30 = sub nsw i32 0, %conv.i29
  %add.ptr.i31 = getelementptr i8, ptr %head.087, i32 %idx.neg.i30
  br i1 %tobool37.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false36
  %call40 = call i32 %0(ptr noundef nonnull %arg, ptr noundef %add.ptr.i31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cond.true.cleanup_crit_edge, label %cond.true.do.body136_crit_edge

cond.true.do.body136_crit_edge:                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body136

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.false:                                       ; preds = %lor.lhs.false36
  %40 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arg, align 4
  %key_offset.i = getelementptr inbounds %struct.rhashtable, ptr %41, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %key_offset.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %key_offset.i, align 4
  %conv.i32 = zext i16 %43 to i32
  %add.ptr.i33 = getelementptr i8, ptr %add.ptr.i31, i32 %conv.i32
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %key_len.i = getelementptr inbounds %struct.rhashtable, ptr %41, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %key_len.i, align 2
  %conv3.i = zext i16 %47 to i32
  %bcmp = call i32 @bcmp(ptr %add.ptr.i33, ptr %45, i32 %conv3.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool44.not = icmp eq i32 %bcmp, 0
  br i1 %tobool44.not, label %cond.false.cleanup_crit_edge, label %cond.false.do.body136_crit_edge

cond.false.do.body136_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body136

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %cond.false.cleanup_crit_edge, %cond.true.cleanup_crit_edge
  %48 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %head_offset.i.i, align 2
  %conv.i36 = zext i16 %49 to i32
  %idx.neg.i37 = sub nsw i32 0, %conv.i36
  %add.ptr.i38 = getelementptr i8, ptr %head.087, i32 %idx.neg.i37
  br label %out_unlock

do.body136:                                       ; preds = %cond.false.do.body136_crit_edge, %cond.true.do.body136_crit_edge, %for.body.do.body136_crit_edge
  %call137 = call i32 @lockdep_rht_bucket_is_held(ptr noundef %9, i32 noundef %and.i3.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %land.lhs.true139, label %do.body136.do.end147_crit_edge

do.body136.do.end147_crit_edge:                   ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147

land.lhs.true139:                                 ; preds = %do.body136
  %call140 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %land.lhs.true139.do.end147_crit_edge, label %land.lhs.true142

land.lhs.true139.do.end147_crit_edge:             ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147

land.lhs.true142:                                 ; preds = %land.lhs.true139
  %.b2811 = load i1, ptr @__rhashtable_insert_fast.__warned.19, align 1
  br i1 %.b2811, label %land.lhs.true142.do.end147_crit_edge, label %if.then144

land.lhs.true142.do.end147_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147

if.then144:                                       ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned.19, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 732, ptr noundef nonnull @.str.18) #12
  br label %do.end147

do.end147:                                        ; preds = %if.then144, %land.lhs.true142.do.end147_crit_edge, %land.lhs.true139.do.end147_crit_edge, %do.body136.do.end147_crit_edge
  %50 = ptrtoint ptr %head.087 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.087, align 4
  %52 = ptrtoint ptr %51 to i32
  %and.i = and i32 %52, 1
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end147.for.body_crit_edge, label %for.end

do.end147.for.body_crit_edge:                     ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %do.end147
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %phi.cmp = icmp slt i32 %dec, 1
  br i1 %phi.cmp, label %for.end.slow_path_crit_edge, label %for.end.if.end152_crit_edge

for.end.if.end152_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

for.end.slow_path_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path

if.end152:                                        ; preds = %for.end.if.end152_crit_edge, %rht_ptr.exit.if.end152_crit_edge
  %nelems.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i39 = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i, i32 noundef 4) #12
  %53 = ptrtoint ptr %nelems.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %nelems.i, align 4
  %max_elems.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 2
  %55 = ptrtoint ptr %max_elems.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_elems.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp.i.not = icmp ult i32 %54, %56
  br i1 %cmp.i.not, label %if.end162, label %if.end152.out_unlock_crit_edge, !prof !101

if.end152.out_unlock_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end162:                                        ; preds = %if.end152
  %call.i.i.i41 = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i, i32 noundef 4) #12
  %57 = ptrtoint ptr %nelems.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %nelems.i, align 4
  %59 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %9, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp.i42 = icmp ugt i32 %58, %60
  br i1 %cmp.i42, label %rht_grow_above_100.exit, label %if.end162.if.end171_crit_edge

if.end162.if.end171_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171

rht_grow_above_100.exit:                          ; preds = %if.end162
  %max_size.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %61 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i43 = icmp eq i32 %62, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp4.i = icmp ult i32 %60, %62
  %spec.select.i = select i1 %tobool.not.i43, i1 true, i1 %cmp4.i
  br i1 %spec.select.i, label %rht_grow_above_100.exit.slow_path_crit_edge, label %rht_grow_above_100.exit.if.end171_crit_edge, !prof !106

rht_grow_above_100.exit.if.end171_crit_edge:      ; preds = %rht_grow_above_100.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171

rht_grow_above_100.exit.slow_path_crit_edge:      ; preds = %rht_grow_above_100.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path

if.end171:                                        ; preds = %rht_grow_above_100.exit.if.end171_crit_edge, %if.end162.if.end171_crit_edge
  %call.i44 = call i32 @lockdep_rht_bucket_is_held(ptr noundef %9, i32 noundef %and.i3.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i45 = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i48, label %if.end171.rht_ptr.exit56_crit_edge

if.end171.rht_ptr.exit56_crit_edge:               ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit56

land.lhs.true.i48:                                ; preds = %if.end171
  %call1.i46 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool2.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool2.not.i47, label %land.lhs.true.i48.rht_ptr.exit56_crit_edge, label %land.lhs.true3.i50

land.lhs.true.i48.rht_ptr.exit56_crit_edge:       ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit56

land.lhs.true3.i50:                               ; preds = %land.lhs.true.i48
  %.b7.i49 = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i49, label %land.lhs.true3.i50.rht_ptr.exit56_crit_edge, label %if.then.i51

land.lhs.true3.i50.rht_ptr.exit56_crit_edge:      ; preds = %land.lhs.true3.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit56

if.then.i51:                                      ; preds = %land.lhs.true3.i50
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 377, ptr noundef nonnull @.str.18) #12
  br label %rht_ptr.exit56

rht_ptr.exit56:                                   ; preds = %if.then.i51, %land.lhs.true3.i50.rht_ptr.exit56_crit_edge, %land.lhs.true.i48.rht_ptr.exit56_crit_edge, %if.end171.rht_ptr.exit56_crit_edge
  %63 = ptrtoint ptr %cond.i9 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cond.i9, align 4
  %65 = ptrtoint ptr %64 to i32
  %and.i.i52 = and i32 %65, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i52)
  %tobool.not.i.i53 = icmp eq i32 %and.i.i52, 0
  %cond.i.i55 = select i1 %tobool.not.i.i53, i32 %or.i.i, i32 %and.i.i52
  %66 = inttoptr i32 %cond.i.i55 to ptr
  %67 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %66, ptr %obj, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %nelems.i, i32 1, i32 3, i32 1) #12
  %68 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i, ptr %nelems.i, i32 1, ptr elementtype(i32) %nelems.i) #12, !srcloc !109
  call fastcc void @rht_assign_unlock(ptr noundef %9, ptr noundef nonnull %cond.i9, ptr noundef %obj)
  %call.i.i.i58 = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i, i32 noundef 4) #12
  %69 = ptrtoint ptr %nelems.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %nelems.i, align 4
  %71 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %9, align 128
  %div8.i = lshr i32 %72, 2
  %mul.i = mul nuw i32 %div8.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %mul.i)
  %cmp.i59 = icmp ugt i32 %70, %mul.i
  br i1 %cmp.i59, label %rht_grow_above_75.exit, label %rht_ptr.exit56.out_crit_edge

rht_ptr.exit56.out_crit_edge:                     ; preds = %rht_ptr.exit56
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

rht_grow_above_75.exit:                           ; preds = %rht_ptr.exit56
  %max_size.i60 = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %73 = ptrtoint ptr %max_size.i60 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_size.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i61 = icmp eq i32 %74, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp4.i62 = icmp ult i32 %72, %74
  %spec.select.i63 = select i1 %tobool.not.i61, i1 true, i1 %cmp4.i62
  br i1 %spec.select.i63, label %if.then207, label %rht_grow_above_75.exit.out_crit_edge

rht_grow_above_75.exit.out_crit_edge:             ; preds = %rht_grow_above_75.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then207:                                       ; preds = %rht_grow_above_75.exit
  call void @__sanitizer_cov_trace_pc() #14
  %run_work = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %75 = load ptr, ptr @system_wq, align 4
  %call.i.i65 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %75, ptr noundef %run_work) #12
  br label %out

out:                                              ; preds = %out_unlock, %if.then207, %rht_grow_above_75.exit.out_crit_edge, %rht_ptr.exit56.out_crit_edge, %rht_bucket_insert.exit.out_crit_edge
  %data.2 = phi ptr [ %data.3, %out_unlock ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.out_crit_edge ], [ null, %if.then207 ], [ null, %rht_grow_above_75.exit.out_crit_edge ], [ null, %rht_ptr.exit56.out_crit_edge ]
  %call.i66 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i66, label %out.rcu_read_unlock.exit76_crit_edge, label %land.lhs.true.i69

out.rcu_read_unlock.exit76_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit76

land.lhs.true.i69:                                ; preds = %out
  %call1.i67 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67)
  %tobool.not.i68 = icmp eq i32 %call1.i67, 0
  br i1 %tobool.not.i68, label %land.lhs.true.i69.rcu_read_unlock.exit76_crit_edge, label %land.lhs.true2.i71

land.lhs.true.i69.rcu_read_unlock.exit76_crit_edge: ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit76

land.lhs.true2.i71:                               ; preds = %land.lhs.true.i69
  %.b4.i70 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70, label %land.lhs.true2.i71.rcu_read_unlock.exit76_crit_edge, label %if.then.i72

land.lhs.true2.i71.rcu_read_unlock.exit76_crit_edge: ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit76

if.then.i72:                                      ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #12
  br label %rcu_read_unlock.exit76

rcu_read_unlock.exit76:                           ; preds = %if.then.i72, %land.lhs.true2.i71.rcu_read_unlock.exit76_crit_edge, %land.lhs.true.i69.rcu_read_unlock.exit76_crit_edge, %out.rcu_read_unlock.exit76_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !97
  %76 = call i32 @llvm.read_register.i32(metadata !83) #12
  %and.i.i.i.i.i73 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i.i.i73 to ptr
  %preempt_count.i.i.i.i74 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i.i.i74, align 4
  %sub.i.i.i75 = add i32 %79, -1
  store volatile i32 %sub.i.i.i75, ptr %preempt_count.i.i.i.i74, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup210

out_unlock:                                       ; preds = %if.end152.out_unlock_crit_edge, %cleanup
  %data.3 = phi ptr [ %add.ptr.i38, %cleanup ], [ inttoptr (i32 -7 to ptr), %if.end152.out_unlock_crit_edge ]
  call fastcc void @rht_unlock(ptr noundef %9, ptr noundef nonnull %cond.i9)
  br label %out

cleanup210:                                       ; preds = %rcu_read_unlock.exit76, %rcu_read_unlock.exit
  %retval.0 = phi ptr [ %call29, %rcu_read_unlock.exit ], [ %data.2, %rcu_read_unlock.exit76 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg) #12
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !83) #12
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !110
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !111

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !112
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !113
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !101

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !114
  %7 = tail call i32 @llvm.read_register.i32(metadata !83) #12
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !115
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !116
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = tail call i32 @llvm.read_register.i32(metadata !83) #12
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !117
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #12
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !106

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #12, !srcloc !118
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !119
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !120
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !121
  %3 = tail call i32 @llvm.read_register.i32(metadata !83) #12
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !122
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !123
  %2 = tail call i32 @llvm.read_register.i32(metadata !83) #12
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mesh_table_hash(ptr nocapture noundef readonly %addr, i32 noundef %len, i32 noundef %seed) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %addr, i32 2
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %add.ptr, align 1
  %add1.i = add i32 %seed, -559038733
  %add.i.i = add i32 %1, %add1.i
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i, i32 %add1.i, i32 14) #12
  %sub.i.i = sub i32 0, %or.i.i.i
  %xor3.i.i = xor i32 %add.i.i, %sub.i.i
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i, i32 %sub.i.i, i32 11) #12
  %sub5.i.i = sub i32 %xor3.i.i, %or.i1.i.i
  %xor6.i.i = xor i32 %sub5.i.i, %add1.i
  %or.i2.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i, i32 %sub5.i.i, i32 25) #12
  %sub8.i.i = sub i32 %xor6.i.i, %or.i2.i.i
  %xor9.i.i = xor i32 %sub8.i.i, %sub.i.i
  %or.i3.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i, i32 %sub8.i.i, i32 16) #12
  %sub11.i.i = sub i32 %xor9.i.i, %or.i3.i.i
  %xor12.i.i = xor i32 %sub11.i.i, %sub5.i.i
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i, i32 %sub11.i.i, i32 4) #12
  %sub14.i.i = sub i32 %xor12.i.i, %or.i4.i.i
  %xor15.i.i = xor i32 %sub14.i.i, %sub8.i.i
  %or.i5.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i, i32 %sub14.i.i, i32 14) #12
  %sub17.i.i = sub i32 %xor15.i.i, %or.i5.i.i
  %xor18.i.i = xor i32 %sub17.i.i, %sub11.i.i
  %or.i6.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i, i32 %sub17.i.i, i32 24) #12
  %sub20.i.i = sub i32 %xor18.i.i, %or.i6.i.i
  ret i32 %sub20.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mesh_path_free_rcu(ptr noundef %tbl, ptr noundef %mpath) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sdata1 = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 5
  %0 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata1, align 4
  %state_lock = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %state_lock) #12
  %flags = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 16
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 66
  store i32 %or, ptr %flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 17, i32 0, i32 0, i32 4
  %call.i.i16 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i16)
  %cmp.not.i = icmp eq i32 %call.i.i16, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !106

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 337, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %is_gate.i = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 22
  %5 = ptrtoint ptr %is_gate.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_gate.i, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool24.not.i = icmp eq i8 %6, 0
  br i1 %tobool24.not.i, label %if.end.i.mesh_gate_del.exit_crit_edge, label %if.end26.i

if.end.i.mesh_gate_del.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_gate_del.exit

if.end26.i:                                       ; preds = %if.end.i
  %7 = ptrtoint ptr %is_gate.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %is_gate.i, align 1
  %gates_lock.i = getelementptr inbounds %struct.mesh_table, ptr %tbl, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %gates_lock.i) #12
  %gate_list.i = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 4
  %8 = ptrtoint ptr %gate_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gate_list.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pprev2.i.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %9, ptr %11, align 4
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %if.end26.i.hlist_del_rcu.exit.i_crit_edge, label %do.body13.i.i.i

if.end26.i.hlist_del_rcu.exit.i_crit_edge:        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_del_rcu.exit.i

do.body13.i.i.i:                                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %pprev14.i.i.i, align 4
  br label %hlist_del_rcu.exit.i

hlist_del_rcu.exit.i:                             ; preds = %do.body13.i.i.i, %if.end26.i.hlist_del_rcu.exit.i_crit_edge
  %14 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %15 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sdata1, align 4
  %num_gates.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %16, i32 0, i32 57, i32 0, i32 28
  %17 = ptrtoint ptr %num_gates.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_gates.i, align 8
  %dec.i = add i32 %18, -1
  store i32 %dec.i, ptr %num_gates.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %gates_lock.i) #12
  %19 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sdata1, align 4
  %name.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %20, i32 0, i32 10
  %num_gates33.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %20, i32 0, i32 57, i32 0, i32 28
  %21 = ptrtoint ptr %num_gates33.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_gates33.i, align 8
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.25, ptr noundef %name.i, ptr noundef %mpath, i32 noundef %22) #12
  br label %mesh_gate_del.exit

mesh_gate_del.exit:                               ; preds = %hlist_del_rcu.exit.i, %if.end.i.mesh_gate_del.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #12
  %timer = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 7
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #12
  %mpaths = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mpaths, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %mpaths, i32 1, i32 3, i32 1) #12
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mpaths, ptr %mpaths, i32 1, ptr elementtype(i32) %mpaths) #12, !srcloc !105
  %entries = getelementptr inbounds %struct.mesh_table, ptr %tbl, i32 0, i32 5
  %call.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %entries, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %entries, i32 1, i32 3, i32 1) #12
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %entries, ptr %entries, i32 1, ptr elementtype(i32) %entries) #12, !srcloc !105
  %frame_queue.i = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 8
  %call2.i = tail call ptr @skb_dequeue(ptr noundef %frame_queue.i) #12
  %cmp.not3.i = icmp eq ptr %call2.i, null
  br i1 %cmp.not3.i, label %mesh_gate_del.exit.mesh_path_flush_pending.exit_crit_edge, label %mesh_gate_del.exit.while.body.i_crit_edge

mesh_gate_del.exit.while.body.i_crit_edge:        ; preds = %mesh_gate_del.exit
  br label %while.body.i

mesh_gate_del.exit.mesh_path_flush_pending.exit_crit_edge: ; preds = %mesh_gate_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_path_flush_pending.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %mesh_gate_del.exit.while.body.i_crit_edge
  %call4.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call2.i, %mesh_gate_del.exit.while.body.i_crit_edge ]
  %25 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdata1, align 4
  tail call void @kfree_skb_reason(ptr noundef nonnull %call4.i, i32 noundef 0) #12
  %dropped_frames_no_route.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %26, i32 0, i32 57, i32 0, i32 23, i32 4
  %27 = ptrtoint ptr %dropped_frames_no_route.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dropped_frames_no_route.i.i, align 4
  %inc.i.i = add i32 %28, 1
  store i32 %inc.i.i, ptr %dropped_frames_no_route.i.i, align 4
  %call.i = tail call ptr @skb_dequeue(ptr noundef %frame_queue.i) #12
  %cmp.not.i18 = icmp eq ptr %call.i, null
  br i1 %cmp.not.i18, label %while.body.i.mesh_path_flush_pending.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.mesh_path_flush_pending.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_path_flush_pending.exit

mesh_path_flush_pending.exit:                     ; preds = %while.body.i.mesh_path_flush_pending.exit_crit_edge, %mesh_gate_del.exit.mesh_path_flush_pending.exit_crit_edge
  %tobool.not = icmp eq ptr %mpath, null
  br i1 %tobool.not, label %mesh_path_flush_pending.exit.if.end_crit_edge, label %do.end

mesh_path_flush_pending.exit.if.end_crit_edge:    ; preds = %mesh_path_flush_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %mesh_path_flush_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  %rcu = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 9
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 144 to ptr)) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %mesh_path_flush_pending.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_free_and_destroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mesh_path_rht_free(ptr noundef %ptr, ptr noundef %tblptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mesh_path_free_rcu(ptr noundef %tblptr, ptr noundef %ptr)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone willreturn }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !16, !18, !20, !21, !22, !24, !26, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !82}
!llvm.named.register.sp = !{!83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mac80211/mesh_pathtbl.c", i32 321, i32 2}
!2 = !{ptr @mesh_plink_broken.bcast, !3, !"bcast", i1 false, i1 false}
!3 = !{!"../net/mac80211/mesh_pathtbl.c", i32 485, i32 18}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/mac80211/mesh_pathtbl.c", i32 489, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/mac80211/mesh_pathtbl.c", i32 680, i32 2}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/mac80211/mesh_pathtbl.c", i32 682, i32 4}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/mac80211/mesh_pathtbl.c", i32 687, i32 4}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../net/mac80211/mesh_pathtbl.c", i32 693, i32 2}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/mac80211/mesh_pathtbl.c", i32 694, i32 3}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../net/mac80211/mesh_pathtbl.c", i32 248, i32 2}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mesh_path_new.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../net/mac80211/mesh_pathtbl.c", i32 378, i32 2}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mesh_path_new.__key.14, !39, !"__key", i1 false, i1 false}
!39 = !{!"../net/mac80211/mesh_pathtbl.c", i32 379, i32 2}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @skb_queue_head_init.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!53 = !{ptr @mesh_rht_params, !54, !"mesh_rht_params", i1 false, i1 false}
!54 = !{!"../net/mac80211/mesh_pathtbl.c", i32 26, i32 39}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/mac80211/mesh_pathtbl.c", i32 347, i32 2}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/mac80211/mesh_pathtbl.c", i32 176, i32 4}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/mac80211/mesh_pathtbl.c", i32 194, i32 2}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../net/mac80211/mesh_pathtbl.c", i32 130, i32 13}
!77 = !{ptr @mesh_table_init.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../net/mac80211/mesh_pathtbl.c", i32 55, i32 2}
!79 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @mesh_table_init.__key.29, !81, !"__key", i1 false, i1 false}
!81 = !{!"../net/mac80211/mesh_pathtbl.c", i32 56, i32 2}
!82 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!83 = !{!"sp"}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i64 2158569122}
!94 = !{i64 2149683604}
!95 = !{i8 0, i8 2}
!96 = !{i64 2149785215}
!97 = !{i64 2149683870}
!98 = !{i64 2148386386}
!99 = !{i64 871209, i64 871234, i64 871256, i64 871272, i64 871284, i64 871304, i64 871328, i64 871344, i64 871356}
!100 = !{i64 2148386574}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{i64 2157549414, i64 2157549905, i64 2157549451, i64 2157549507, i64 2157549541, i64 2157549565, i64 2157549606, i64 2157549627, i64 2157549655, i64 2157549689}
!103 = !{i64 2157547621, i64 2157548112, i64 2157547658, i64 2157547714, i64 2157547748, i64 2157547772, i64 2157547813, i64 2157547834, i64 2157547862, i64 2157547896}
!104 = !{i64 2157569480}
!105 = !{i64 2148389432, i64 2148389458, i64 2148389487, i64 2148389521, i64 2148389552, i64 2148389575}
!106 = !{!"branch_weights", i32 1, i32 2000}
!107 = !{i64 2157502104}
!108 = !{i64 2157505538}
!109 = !{i64 2148386967, i64 2148386993, i64 2148387022, i64 2148387056, i64 2148387087, i64 2148387110}
!110 = !{i64 2149848726}
!111 = !{!"branch_weights", i32 2146410443, i32 1073205}
!112 = !{i64 2148395825, i64 2148395857, i64 2148395886, i64 2148395920, i64 2148395951, i64 2148395974}
!113 = !{i64 2148484906}
!114 = !{i64 2149848886}
!115 = !{i64 2149849163}
!116 = !{i64 2149849005}
!117 = !{i64 2149849368}
!118 = !{i64 2149850431, i64 2149850923, i64 2149850468, i64 2149850524, i64 2149850558, i64 2149850582, i64 2149850623, i64 2149850644, i64 2149850672, i64 2149850706}
!119 = !{i64 2148483793}
!120 = !{i64 2148394212, i64 2148394244, i64 2148394273, i64 2148394307, i64 2148394338, i64 2148394361}
!121 = !{i64 2149851826}
!122 = !{i64 2157495177}
!123 = !{i64 2157497476}
