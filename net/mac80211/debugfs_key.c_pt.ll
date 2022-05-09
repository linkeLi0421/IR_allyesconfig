; ModuleID = '/llk/IR_all_yes/net/mac80211/debugfs_key.c_pt.bc'
source_filename = "../net/mac80211/debugfs_key.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
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
%struct.ieee80211_key = type { ptr, ptr, ptr, %struct.list_head, i32, %union.anon.180, %struct.anon.187, i32, %struct.ieee80211_key_conf }
%union.anon.180 = type { %struct.anon.181 }
%struct.anon.181 = type { %struct.spinlock, %struct.tkip_ctx, [16 x %struct.tkip_ctx_rx], i32 }
%struct.tkip_ctx = type { [5 x i16], i32, i32 }
%struct.tkip_ctx_rx = type { %struct.tkip_ctx, i32, i16 }
%struct.anon.187 = type { ptr, ptr, i32 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.143, [17 x i16], %struct.anon.144, %struct.anon.145, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, ptr, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.ieee80211_sta_rx_stats = type { i32, i32, i32, i32, i32, i32, i8, [4 x i8], i32, %struct.u64_stats_sync, i64, [17 x i64] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.anon.143 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.144 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.145 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
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
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.142, %struct.anon.179, %struct.ieee80211_vif }
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
%union.anon.142 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.anon.179 = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@ieee80211_debugfs_key_add.keycount = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"../../netdev:%s/stations/%pM\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"station\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"keylen\00", [25 x i8] zeroinitializer }, align 32
@key_keylen_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @key_conf_keylen_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@key_flags_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @key_flags_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"keyidx\00", [25 x i8] zeroinitializer }, align 32
@key_keyidx_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @key_conf_keyidx_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hw_key_idx\00", [21 x i8] zeroinitializer }, align 32
@key_hw_key_idx_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @key_conf_hw_key_idx_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"algorithm\00", [22 x i8] zeroinitializer }, align 32
@key_algorithm_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @key_algorithm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tx_spec\00", [24 x i8] zeroinitializer }, align 32
@key_tx_spec_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @key_tx_spec_read, ptr @key_tx_spec_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rx_spec\00", [24 x i8] zeroinitializer }, align 32
@key_rx_spec_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @key_rx_spec_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"replays\00", [24 x i8] zeroinitializer }, align 32
@key_replays_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @key_replays_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"icverrors\00", [22 x i8] zeroinitializer }, align 32
@key_icverrors_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @key_icverrors_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mic_failures\00", [19 x i8] zeroinitializer }, align 32
@key_mic_failures_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @key_mic_failures_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"key\00", [28 x i8] zeroinitializer }, align 32
@key_key_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @key_key_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ifindex\00", [24 x i8] zeroinitializer }, align 32
@key_ifindex_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @key_ifindex_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/mac80211/debugfs_key.c\00", [37 x i8] zeroinitializer }, align 32
@ieee80211_debugfs_key_update_default.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"../keys/%d\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"default_unicast_key\00", [44 x i8] zeroinitializer }, align 32
@ieee80211_debugfs_key_update_default.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"default_multicast_key\00", [42 x i8] zeroinitializer }, align 32
@ieee80211_debugfs_key_add_mgmt_default.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"default_mgmt_key\00", [47 x i8] zeroinitializer }, align 32
@ieee80211_debugfs_key_add_beacon_default.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"default_beacon_key\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%.2x-%.2x-%.2x:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%08x %04x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%02x%02x%02x%02x%02x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077, i64 1027078, i64 1027080, i64 1027081, i64 1027082, i64 1027083, i64 1027084, i64 1027085]
@__sancov_gen_cov_switch_values.32 = internal global [13 x i64] [i64 11, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077, i64 1027078, i64 1027080, i64 1027081, i64 1027082, i64 1027083, i64 1027084, i64 1027085]
@__sancov_gen_cov_switch_values.33 = internal global [13 x i64] [i64 11, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077, i64 1027078, i64 1027080, i64 1027081, i64 1027082, i64 1027083, i64 1027084, i64 1027085]
@__sancov_gen_cov_switch_values.34 = internal global [10 x i64] [i64 8, i64 32, i64 1027076, i64 1027078, i64 1027080, i64 1027081, i64 1027082, i64 1027083, i64 1027084, i64 1027085]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 1027078, i64 1027083, i64 1027084, i64 1027085]
@___asan_gen_.36 = private unnamed_addr constant [9 x i8] c"keycount\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 329, i32 13 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 336, i32 15 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 344, i32 16 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 347, i32 27 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 350, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"key_keylen_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 351, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [14 x i8] c"key_flags_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 352, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [15 x i8] c"key_keyidx_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 63, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 353, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"key_hw_key_idx_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 64, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 354, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [18 x i8] c"key_algorithm_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 81, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 355, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [16 x i8] c"key_tx_spec_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 155, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 356, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"key_rx_spec_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 223, i32 1 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 357, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [16 x i8] c"key_replays_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 256, i32 1 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 358, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"key_icverrors_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 281, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 359, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [21 x i8] c"key_mic_failures_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 297, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 360, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [12 x i8] c"key_key_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 318, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 361, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [16 x i8] c"key_ifindex_ops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 67, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 381, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 387, i32 9 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 389, i32 16 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 391, i32 27 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 403, i32 27 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 421, i32 27 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 450, i32 27 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 62, i32 1 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 65, i32 1 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 77, i32 15 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 129, i32 37 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 133, i32 37 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 146, i32 37 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 235, i32 37 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 312, i32 40 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [30 x i8] c"../net/mac80211/debugfs_key.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 66, i32 1 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @ieee80211_debugfs_key_add.keycount, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @key_keylen_ops, ptr @.str.4, ptr @key_flags_ops, ptr @.str.5, ptr @key_keyidx_ops, ptr @.str.6, ptr @key_hw_key_idx_ops, ptr @.str.7, ptr @key_algorithm_ops, ptr @.str.8, ptr @key_tx_spec_ops, ptr @.str.9, ptr @key_rx_spec_ops, ptr @.str.10, ptr @key_replays_ops, ptr @.str.11, ptr @key_icverrors_ops, ptr @.str.12, ptr @key_mic_failures_ops, ptr @.str.13, ptr @key_key_ops, ptr @.str.14, ptr @key_ifindex_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_debugfs_key_add.keycount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_keylen_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_flags_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_keyidx_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_hw_key_idx_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_algorithm_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_tx_spec_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_rx_spec_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_replays_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_icverrors_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_mic_failures_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_key_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_ifindex_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_debugfs_key_add(ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf) #6
  %0 = call ptr @memset(ptr %buf, i32 255, i32 100)
  %1 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %key, align 8
  %keys = getelementptr inbounds %struct.ieee80211_local, ptr %2, i32 0, i32 136, i32 1
  %3 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %keys, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i32, ptr @ieee80211_debugfs_key_add.keycount, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str, i32 noundef %5)
  %6 = load i32, ptr @ieee80211_debugfs_key_add.keycount, align 4
  %cnt = getelementptr inbounds %struct.ieee80211_key, ptr %key, i32 0, i32 6, i32 2
  %7 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cnt, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr @ieee80211_debugfs_key_add.keycount, align 4
  %8 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %key, align 8
  %keys5 = getelementptr inbounds %struct.ieee80211_local, ptr %9, i32 0, i32 136, i32 1
  %10 = ptrtoint ptr %keys5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %keys5, align 4
  %call6 = call ptr @debugfs_create_dir(ptr noundef nonnull %buf, ptr noundef %11) #6
  %dir = getelementptr inbounds %struct.ieee80211_key, ptr %key, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call6, ptr %dir, align 4
  %sta8 = getelementptr inbounds %struct.ieee80211_key, ptr %key, i32 0, i32 2
  %13 = ptrtoint ptr %sta8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sta8, align 8
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %if.end.if.end21_crit_edge, label %if.then10

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %debugfs1 = getelementptr inbounds %struct.ieee80211_key, ptr %key, i32 0, i32 6
  %sdata = getelementptr inbounds %struct.sta_info, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sdata, align 4
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %16, i32 0, i32 10
  %addr = getelementptr inbounds %struct.sta_info, ptr %14, i32 0, i32 48, i32 1
  %call15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.1, ptr noundef %name, ptr noundef %addr)
  %17 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dir, align 4
  %call19 = call ptr @debugfs_create_symlink(ptr noundef nonnull @.str.2, ptr noundef %18, ptr noundef nonnull %buf) #6
  %19 = ptrtoint ptr %debugfs1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call19, ptr %debugfs1, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then10, %if.end.if.end21_crit_edge
  %20 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dir, align 4
  %call24 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 256, ptr noundef %21, ptr noundef %key, ptr noundef nonnull @key_keylen_ops) #6
  %22 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dir, align 4
  %call27 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 256, ptr noundef %23, ptr noundef %key, ptr noundef nonnull @key_flags_ops) #6
  %24 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dir, align 4
  %call30 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 256, ptr noundef %25, ptr noundef %key, ptr noundef nonnull @key_keyidx_ops) #6
  %26 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dir, align 4
  %call33 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 256, ptr noundef %27, ptr noundef %key, ptr noundef nonnull @key_hw_key_idx_ops) #6
  %28 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dir, align 4
  %call36 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 256, ptr noundef %29, ptr noundef %key, ptr noundef nonnull @key_algorithm_ops) #6
  %30 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dir, align 4
  %call39 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 384, ptr noundef %31, ptr noundef %key, ptr noundef nonnull @key_tx_spec_ops) #6
  %32 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dir, align 4
  %call42 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 256, ptr noundef %33, ptr noundef %key, ptr noundef nonnull @key_rx_spec_ops) #6
  %34 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dir, align 4
  %call45 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef %35, ptr noundef %key, ptr noundef nonnull @key_replays_ops) #6
  %36 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dir, align 4
  %call48 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 256, ptr noundef %37, ptr noundef %key, ptr noundef nonnull @key_icverrors_ops) #6
  %38 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dir, align 4
  %call51 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 256, ptr noundef %39, ptr noundef %key, ptr noundef nonnull @key_mic_failures_ops) #6
  %40 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dir, align 4
  %call54 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 256, ptr noundef %41, ptr noundef %key, ptr noundef nonnull @key_key_ops) #6
  %42 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dir, align 4
  %call57 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 256, ptr noundef %43, ptr noundef %key, ptr noundef nonnull @key_ifindex_ops) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_symlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_debugfs_key_remove(ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dir = getelementptr inbounds %struct.ieee80211_key, ptr %key, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dir, align 4
  tail call void @debugfs_remove(ptr noundef %1) #6
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dir, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_debugfs_key_update_default(ptr nocapture noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [50 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf) #6
  %0 = call ptr @memset(ptr %buf, i32 255, i32 50)
  %debugfs_dir = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 12
  %1 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %debugfs_dir, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %do.body.if.end18_crit_edge, label %land.rhs

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.rhs:                                         ; preds = %do.body
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %4 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local, align 4
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 65, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end18_crit_edge, !prof !102

land.rhs.if.end18_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 381, i32 noundef 9, ptr noundef null) #6
  br label %if.end18

if.end18:                                         ; preds = %do.end, %land.rhs.if.end18_crit_edge, %do.body.if.end18_crit_edge
  %default_unicast_key = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 58, i32 1
  %6 = ptrtoint ptr %default_unicast_key to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %default_unicast_key, align 4
  tail call void @debugfs_remove(ptr noundef %7) #6
  %8 = ptrtoint ptr %default_unicast_key to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %default_unicast_key, align 4
  %default_unicast_key29 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 15
  %9 = ptrtoint ptr %default_unicast_key29 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %default_unicast_key29, align 8
  %tobool30.not = icmp eq ptr %10, null
  br i1 %tobool30.not, label %if.end18.if.end56_crit_edge, label %do.body32

if.end18.if.end56_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

do.body32:                                        ; preds = %if.end18
  %local33 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %11 = ptrtoint ptr %local33 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %local33, align 4
  %dep_map35 = getelementptr inbounds %struct.ieee80211_local, ptr %12, i32 0, i32 65, i32 5
  %call.i112 = tail call i32 @lock_is_held_type(ptr noundef %dep_map35, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool37.not = icmp eq i32 %call.i112, 0
  br i1 %tobool37.not, label %land.lhs.true, label %do.body32.do.end45_crit_edge

do.body32.do.end45_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45

land.lhs.true:                                    ; preds = %do.body32
  %call38 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %land.lhs.true.do.end45_crit_edge, label %land.lhs.true40

land.lhs.true.do.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45

land.lhs.true40:                                  ; preds = %land.lhs.true
  %.b111 = load i1, ptr @ieee80211_debugfs_key_update_default.__warned, align 1
  br i1 %.b111, label %land.lhs.true40.do.end45_crit_edge, label %if.then42

land.lhs.true40.do.end45_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45

if.then42:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ieee80211_debugfs_key_update_default.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 388, ptr noundef nonnull @.str.16) #6
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %land.lhs.true40.do.end45_crit_edge, %land.lhs.true.do.end45_crit_edge, %do.body32.do.end45_crit_edge
  %13 = ptrtoint ptr %default_unicast_key29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %default_unicast_key29, align 8
  %cnt = getelementptr inbounds %struct.ieee80211_key, ptr %14, i32 0, i32 6, i32 2
  %15 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cnt, align 4
  %call49 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.17, i32 noundef %16)
  %17 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %debugfs_dir, align 8
  %call53 = call ptr @debugfs_create_symlink(ptr noundef nonnull @.str.18, ptr noundef %18, ptr noundef nonnull %buf) #6
  %19 = ptrtoint ptr %default_unicast_key to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call53, ptr %default_unicast_key, align 4
  br label %if.end56

if.end56:                                         ; preds = %do.end45, %if.end18.if.end56_crit_edge
  %default_multicast_key = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 58, i32 2
  %20 = ptrtoint ptr %default_multicast_key to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %default_multicast_key, align 8
  call void @debugfs_remove(ptr noundef %21) #6
  %22 = ptrtoint ptr %default_multicast_key to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %default_multicast_key, align 8
  %default_multicast_key60 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 16
  %23 = ptrtoint ptr %default_multicast_key60 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %default_multicast_key60, align 4
  %tobool61.not = icmp eq ptr %24, null
  br i1 %tobool61.not, label %if.end56.cleanup_crit_edge, label %do.body63

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body63:                                        ; preds = %if.end56
  %local64 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %25 = ptrtoint ptr %local64 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %local64, align 4
  %dep_map66 = getelementptr inbounds %struct.ieee80211_local, ptr %26, i32 0, i32 65, i32 5
  %call.i113 = call i32 @lock_is_held_type(ptr noundef %dep_map66, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool68.not = icmp eq i32 %call.i113, 0
  br i1 %tobool68.not, label %land.lhs.true69, label %do.body63.do.end77_crit_edge

do.body63.do.end77_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end77

land.lhs.true69:                                  ; preds = %do.body63
  %call70 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %land.lhs.true69.do.end77_crit_edge, label %land.lhs.true72

land.lhs.true69.do.end77_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end77

land.lhs.true72:                                  ; preds = %land.lhs.true69
  %.b109110 = load i1, ptr @ieee80211_debugfs_key_update_default.__warned.19, align 1
  br i1 %.b109110, label %land.lhs.true72.do.end77_crit_edge, label %if.then74

land.lhs.true72.do.end77_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end77

if.then74:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ieee80211_debugfs_key_update_default.__warned.19, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 400, ptr noundef nonnull @.str.16) #6
  br label %do.end77

do.end77:                                         ; preds = %if.then74, %land.lhs.true72.do.end77_crit_edge, %land.lhs.true69.do.end77_crit_edge, %do.body63.do.end77_crit_edge
  %27 = ptrtoint ptr %default_multicast_key60 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %default_multicast_key60, align 4
  %cnt82 = getelementptr inbounds %struct.ieee80211_key, ptr %28, i32 0, i32 6, i32 2
  %29 = ptrtoint ptr %cnt82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cnt82, align 4
  %call83 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.17, i32 noundef %30)
  %31 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %debugfs_dir, align 8
  %call87 = call ptr @debugfs_create_symlink(ptr noundef nonnull @.str.20, ptr noundef %32, ptr noundef nonnull %buf) #6
  %33 = ptrtoint ptr %default_multicast_key to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call87, ptr %default_multicast_key, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %if.end56.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_debugfs_key_add_mgmt_default(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [50 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf) #6
  %0 = call ptr @memset(ptr %buf, i32 255, i32 50)
  %debugfs_dir = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 12
  %1 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %debugfs_dir, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %3 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %local, align 4
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 65, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b25 = load i1, ptr @ieee80211_debugfs_key_add_mgmt_default.__warned, align 1
  br i1 %.b25, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ieee80211_debugfs_key_add_mgmt_default.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 417, ptr noundef nonnull @.str.16) #6
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %default_mgmt_key = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 17
  %5 = ptrtoint ptr %default_mgmt_key to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %default_mgmt_key, align 8
  %tobool8.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %cnt = getelementptr inbounds %struct.ieee80211_key, ptr %6, i32 0, i32 6, i32 2
  %7 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cnt, align 4
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.17, i32 noundef %8)
  %9 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %debugfs_dir, align 8
  %call14 = call ptr @debugfs_create_symlink(ptr noundef nonnull @.str.21, ptr noundef %10, ptr noundef nonnull %buf) #6
  %default_mgmt_key16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 58, i32 3
  %11 = ptrtoint ptr %default_mgmt_key16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call14, ptr %default_mgmt_key16, align 4
  br label %cleanup

if.else:                                          ; preds = %do.end
  %tobool.not.i = icmp eq ptr %sdata, null
  br i1 %tobool.not.i, label %if.else.cleanup_crit_edge, label %if.end.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %default_mgmt_key.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 58, i32 3
  %12 = ptrtoint ptr %default_mgmt_key.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %default_mgmt_key.i, align 4
  tail call void @debugfs_remove(ptr noundef %13) #6
  %14 = ptrtoint ptr %default_mgmt_key.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %default_mgmt_key.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.else.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_debugfs_key_remove_mgmt_default(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sdata, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %default_mgmt_key = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 58, i32 3
  %0 = ptrtoint ptr %default_mgmt_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %default_mgmt_key, align 4
  tail call void @debugfs_remove(ptr noundef %1) #6
  %2 = ptrtoint ptr %default_mgmt_key to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %default_mgmt_key, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_debugfs_key_add_beacon_default(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [50 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf) #6
  %0 = call ptr @memset(ptr %buf, i32 255, i32 50)
  %debugfs_dir = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 12
  %1 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %debugfs_dir, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %3 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %local, align 4
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 65, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b25 = load i1, ptr @ieee80211_debugfs_key_add_beacon_default.__warned, align 1
  br i1 %.b25, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ieee80211_debugfs_key_add_beacon_default.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 446, ptr noundef nonnull @.str.16) #6
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %default_beacon_key = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 18
  %5 = ptrtoint ptr %default_beacon_key to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %default_beacon_key, align 4
  %tobool8.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %cnt = getelementptr inbounds %struct.ieee80211_key, ptr %6, i32 0, i32 6, i32 2
  %7 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cnt, align 4
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.17, i32 noundef %8)
  %9 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %debugfs_dir, align 8
  %call14 = call ptr @debugfs_create_symlink(ptr noundef nonnull @.str.22, ptr noundef %10, ptr noundef nonnull %buf) #6
  %default_beacon_key16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 58, i32 4
  %11 = ptrtoint ptr %default_beacon_key16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call14, ptr %default_beacon_key16, align 8
  br label %cleanup

if.else:                                          ; preds = %do.end
  %tobool.not.i = icmp eq ptr %sdata, null
  br i1 %tobool.not.i, label %if.else.cleanup_crit_edge, label %if.end.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %default_beacon_key.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 58, i32 4
  %12 = ptrtoint ptr %default_beacon_key.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %default_beacon_key.i, align 8
  tail call void @debugfs_remove(ptr noundef %13) #6
  %14 = ptrtoint ptr %default_beacon_key.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %default_beacon_key.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.else.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_debugfs_key_remove_beacon_default(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sdata, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %default_beacon_key = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 58, i32 4
  %0 = ptrtoint ptr %default_beacon_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %default_beacon_key, align 8
  tail call void @debugfs_remove(ptr noundef %1) #6
  %2 = ptrtoint ptr %default_beacon_key to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %default_beacon_key, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_debugfs_key_sta_del(ptr nocapture noundef %key, ptr nocapture noundef readnone %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs = getelementptr inbounds %struct.ieee80211_key, ptr %key, i32 0, i32 6
  %0 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %1) #6
  %2 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %debugfs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @key_conf_keylen_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %keylen = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 8, i32 7
  %2 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %keylen, align 2
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @mac80211_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.23, i32 noundef %conv) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mac80211_format_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @key_flags_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %flags = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @mac80211_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.24, i32 noundef %3) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @key_conf_keyidx_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %keyidx = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 8, i32 5
  %2 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %keyidx, align 1
  %conv = sext i8 %3 to i32
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @mac80211_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.23, i32 noundef %conv) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @key_conf_hw_key_idx_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 8, i32 4
  %2 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_key_idx, align 2
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @mac80211_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.23, i32 noundef %conv) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @key_algorithm_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [15 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %buf) #6
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = call ptr @memset(ptr %buf, i32 255, i32 15)
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %cipher = getelementptr inbounds %struct.ieee80211_key, ptr %2, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cipher, align 8
  %shr = lshr i32 %4, 24
  %shr1 = lshr i32 %4, 16
  %and = and i32 %shr1, 255
  %shr2 = lshr i32 %4, 8
  %and3 = and i32 %shr2, 255
  %and4 = and i32 %4, 255
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.25, i32 noundef %shr, i32 noundef %and, i32 noundef %and3, i32 noundef %and4)
  %call7 = call i32 @strlen(ptr noundef nonnull %buf) #9
  %call8 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call7) #6
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %buf) #6
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @key_tx_spec_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #6
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = call ptr @memset(ptr %buf, i32 255, i32 20)
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %conf = getelementptr inbounds %struct.ieee80211_key, ptr %2, i32 0, i32 8
  %cipher = getelementptr inbounds %struct.ieee80211_key, ptr %2, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cipher, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 1027073, label %entry.sw.bb_crit_edge
    i32 1027077, label %entry.sw.bb_crit_edge48
    i32 1027074, label %sw.bb1
    i32 1027076, label %entry.sw.bb9_crit_edge
    i32 1027082, label %entry.sw.bb9_crit_edge49
    i32 1027078, label %entry.sw.bb9_crit_edge50
    i32 1027085, label %entry.sw.bb9_crit_edge51
    i32 1027083, label %entry.sw.bb9_crit_edge52
    i32 1027084, label %entry.sw.bb9_crit_edge53
    i32 1027080, label %entry.sw.bb9_crit_edge54
    i32 1027081, label %entry.sw.bb9_crit_edge55
  ]

entry.sw.bb9_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

entry.sw.bb9_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

entry.sw.bb9_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

entry.sw.bb9_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

entry.sw.bb9_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

entry.sw.bb9_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

entry.sw.bb9_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

entry.sw.bb_crit_edge48:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge48
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.26) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %conf, i32 noundef 8) #6
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %conf) #6
  %shr = lshr i64 %call.i, 16
  %conv = trunc i64 %shr to i32
  %conv6 = trunc i64 %call.i to i32
  %conv7 = and i32 %conv6, 65535
  %call8 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.27, i32 noundef %conv, i32 noundef %conv7) #6
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge49, %entry.sw.bb9_crit_edge50, %entry.sw.bb9_crit_edge51, %entry.sw.bb9_crit_edge52, %entry.sw.bb9_crit_edge53, %entry.sw.bb9_crit_edge54, %entry.sw.bb9_crit_edge55
  %call.i.i46 = tail call zeroext i1 @__kasan_check_read(ptr noundef %conf, i32 noundef 8) #6
  %call.i47 = tail call i64 @generic_atomic64_read(ptr noundef %conf) #6
  %shr14 = lshr i64 %call.i47, 40
  %conv15 = trunc i64 %shr14 to i32
  %conv16 = and i32 %conv15, 255
  %shr17 = lshr i64 %call.i47, 32
  %conv18 = trunc i64 %shr17 to i32
  %conv19 = and i32 %conv18, 255
  %6 = trunc i64 %call.i47 to i32
  %7 = lshr i32 %6, 24
  %8 = lshr i32 %6, 16
  %conv25 = and i32 %8, 255
  %9 = lshr i32 %6, 8
  %conv28 = and i32 %9, 255
  %conv30 = and i32 %6, 255
  %call31 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.28, i32 noundef %conv16, i32 noundef %conv19, i32 noundef %7, i32 noundef %conv25, i32 noundef %conv28, i32 noundef %conv30) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb1, %sw.bb
  %len.0 = phi i32 [ %call31, %sw.bb9 ], [ %call8, %sw.bb1 ], [ %call, %sw.bb ]
  %call33 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %len.0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @key_tx_spec_write(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %pn = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pn) #6
  %2 = ptrtoint ptr %pn to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %pn, align 8, !annotation !103
  %conf = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 8
  %cipher = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cipher, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %4, label %sw.default [
    i32 1027073, label %entry.cleanup_crit_edge
    i32 1027077, label %entry.cleanup_crit_edge11
    i32 1027074, label %sw.bb1
    i32 1027076, label %entry.sw.bb2_crit_edge
    i32 1027082, label %entry.sw.bb2_crit_edge12
    i32 1027078, label %entry.sw.bb2_crit_edge13
    i32 1027085, label %entry.sw.bb2_crit_edge14
    i32 1027083, label %entry.sw.bb2_crit_edge15
    i32 1027084, label %entry.sw.bb2_crit_edge16
    i32 1027080, label %entry.sw.bb2_crit_edge17
    i32 1027081, label %entry.sw.bb2_crit_edge18
  ]

entry.sw.bb2_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.cleanup_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge12, %entry.sw.bb2_crit_edge13, %entry.sw.bb2_crit_edge14, %entry.sw.bb2_crit_edge15, %entry.sw.bb2_crit_edge16, %entry.sw.bb2_crit_edge17, %entry.sw.bb2_crit_edge18
  %call.i = call i32 @kstrtoull_from_user(ptr noundef %userbuf, i32 noundef %count, i32 noundef 16, ptr noundef nonnull %pn) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb2
  %6 = ptrtoint ptr %pn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710655, i64 %7)
  %cmp = icmp ugt i64 %7, 281474976710655
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %conf, i32 noundef 8) #6
  call void @generic_atomic64_set(ptr noundef %conf, i64 noundef %7) #6
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end4, %if.end.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb1, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge11
  %retval.0 = phi i32 [ 0, %sw.default ], [ %count, %if.end4 ], [ -95, %sw.bb1 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge11 ], [ %call.i, %sw.bb2.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pn) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @key_rx_spec_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [225 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 225, ptr nonnull %buf) #6
  %2 = call ptr @memset(ptr %buf, i32 255, i32 225)
  %cipher = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cipher, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 1027073, label %entry.sw.bb_crit_edge
    i32 1027077, label %entry.sw.bb_crit_edge208
    i32 1027074, label %for.cond.preheader
    i32 1027076, label %entry.sw.bb13_crit_edge
    i32 1027082, label %entry.sw.bb13_crit_edge209
    i32 1027078, label %entry.sw.bb47_crit_edge
    i32 1027085, label %entry.sw.bb47_crit_edge210
    i32 1027083, label %entry.sw.bb74_crit_edge
    i32 1027084, label %entry.sw.bb74_crit_edge211
    i32 1027080, label %entry.sw.bb101_crit_edge
    i32 1027081, label %entry.sw.bb101_crit_edge212
  ]

entry.sw.bb101_crit_edge212:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb101

entry.sw.bb101_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb101

entry.sw.bb74_crit_edge211:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb74

entry.sw.bb74_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb74

entry.sw.bb47_crit_edge210:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

entry.sw.bb47_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

entry.sw.bb13_crit_edge209:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13

entry.sw.bb13_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13

entry.sw.bb_crit_edge208:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %add.ptr = getelementptr inbounds i8, ptr %buf, i32 225
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  br label %for.body

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge208
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 225, ptr noundef nonnull @.str.26) #6
  br label %sw.epilog

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.0205 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %p.0204 = phi ptr [ %buf, %for.cond.preheader ], [ %add.ptr8, %for.body.for.body_crit_edge ]
  %sub.ptr.rhs.cast = ptrtoint ptr %p.0204 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %iv32 = getelementptr %struct.ieee80211_key, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 %i.0205, i32 1
  %6 = ptrtoint ptr %iv32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iv32, align 4
  %iv16 = getelementptr %struct.ieee80211_key, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 %i.0205, i32 2
  %8 = ptrtoint ptr %iv16 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %iv16, align 4
  %conv = zext i16 %9 to i32
  %call7 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.0204, i32 noundef %sub.ptr.sub, ptr noundef nonnull @.str.27, i32 noundef %7, i32 noundef %conv) #6
  %add.ptr8 = getelementptr i8, ptr %p.0204, i32 %call7
  %inc = add nuw nsw i32 %i.0205, 1
  %exitcond207.not = icmp eq i32 %inc, 16
  br i1 %exitcond207.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %sub.ptr.lhs.cast10 = ptrtoint ptr %add.ptr8 to i32
  %sub.ptr.rhs.cast11 = ptrtoint ptr %buf to i32
  %sub.ptr.sub12 = sub i32 %sub.ptr.lhs.cast10, %sub.ptr.rhs.cast11
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry.sw.bb13_crit_edge, %entry.sw.bb13_crit_edge209
  %u18 = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 5
  %add.ptr22 = getelementptr inbounds i8, ptr %buf, i32 225
  %sub.ptr.lhs.cast23 = ptrtoint ptr %add.ptr22 to i32
  br label %for.body17

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %sw.bb13
  %i.1203 = phi i32 [ 0, %sw.bb13 ], [ %inc41, %for.body17.for.body17_crit_edge ]
  %p.1202 = phi ptr [ %buf, %sw.bb13 ], [ %add.ptr39, %for.body17.for.body17_crit_edge ]
  %arrayidx19 = getelementptr [17 x [6 x i8]], ptr %u18, i32 0, i32 %i.1203
  %sub.ptr.rhs.cast24 = ptrtoint ptr %p.1202 to i32
  %sub.ptr.sub25 = sub i32 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  %10 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx19, align 1
  %conv27 = zext i8 %11 to i32
  %arrayidx28 = getelementptr i8, ptr %arrayidx19, i32 1
  %12 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %13 to i32
  %arrayidx30 = getelementptr i8, ptr %arrayidx19, i32 2
  %14 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %15 to i32
  %arrayidx32 = getelementptr i8, ptr %arrayidx19, i32 3
  %16 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %17 to i32
  %arrayidx34 = getelementptr i8, ptr %arrayidx19, i32 4
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %19 to i32
  %arrayidx36 = getelementptr i8, ptr %arrayidx19, i32 5
  %20 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %21 to i32
  %call38 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.1202, i32 noundef %sub.ptr.sub25, ptr noundef nonnull @.str.28, i32 noundef %conv27, i32 noundef %conv29, i32 noundef %conv31, i32 noundef %conv33, i32 noundef %conv35, i32 noundef %conv37) #6
  %add.ptr39 = getelementptr i8, ptr %p.1202, i32 %call38
  %inc41 = add nuw nsw i32 %i.1203, 1
  %exitcond206.not = icmp eq i32 %inc41, 17
  br i1 %exitcond206.not, label %for.end42, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body17

for.end42:                                        ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #8
  %sub.ptr.lhs.cast44 = ptrtoint ptr %add.ptr39 to i32
  %sub.ptr.rhs.cast45 = ptrtoint ptr %buf to i32
  %sub.ptr.sub46 = sub i32 %sub.ptr.lhs.cast44, %sub.ptr.rhs.cast45
  br label %sw.epilog

sw.bb47:                                          ; preds = %entry.sw.bb47_crit_edge, %entry.sw.bb47_crit_edge210
  %u48 = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %u48 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %u48, align 1
  %conv57 = zext i8 %23 to i32
  %arrayidx58 = getelementptr i8, ptr %u48, i32 1
  %24 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %25 to i32
  %arrayidx60 = getelementptr i8, ptr %u48, i32 2
  %26 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %27 to i32
  %arrayidx62 = getelementptr i8, ptr %u48, i32 3
  %28 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %29 to i32
  %arrayidx64 = getelementptr %struct.ieee80211_key, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %31 to i32
  %arrayidx66 = getelementptr i8, ptr %u48, i32 5
  %32 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %33 to i32
  %call68 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 225, ptr noundef nonnull @.str.28, i32 noundef %conv57, i32 noundef %conv59, i32 noundef %conv61, i32 noundef %conv63, i32 noundef %conv65, i32 noundef %conv67) #6
  br label %sw.epilog

sw.bb74:                                          ; preds = %entry.sw.bb74_crit_edge, %entry.sw.bb74_crit_edge211
  %u75 = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %u75 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %u75, align 1
  %conv84 = zext i8 %35 to i32
  %arrayidx85 = getelementptr i8, ptr %u75, i32 1
  %36 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %37 to i32
  %arrayidx87 = getelementptr i8, ptr %u75, i32 2
  %38 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx87, align 1
  %conv88 = zext i8 %39 to i32
  %arrayidx89 = getelementptr i8, ptr %u75, i32 3
  %40 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx89, align 1
  %conv90 = zext i8 %41 to i32
  %arrayidx91 = getelementptr %struct.ieee80211_key, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx91, align 1
  %conv92 = zext i8 %43 to i32
  %arrayidx93 = getelementptr i8, ptr %u75, i32 5
  %44 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %45 to i32
  %call95 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 225, ptr noundef nonnull @.str.28, i32 noundef %conv84, i32 noundef %conv86, i32 noundef %conv88, i32 noundef %conv90, i32 noundef %conv92, i32 noundef %conv94) #6
  br label %sw.epilog

sw.bb101:                                         ; preds = %entry.sw.bb101_crit_edge, %entry.sw.bb101_crit_edge212
  %u106 = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 5
  %add.ptr111 = getelementptr inbounds i8, ptr %buf, i32 225
  %sub.ptr.lhs.cast112 = ptrtoint ptr %add.ptr111 to i32
  br label %for.body105

for.body105:                                      ; preds = %for.body105.for.body105_crit_edge, %sw.bb101
  %i.2201 = phi i32 [ 0, %sw.bb101 ], [ %inc130, %for.body105.for.body105_crit_edge ]
  %p.2200 = phi ptr [ %buf, %sw.bb101 ], [ %add.ptr128, %for.body105.for.body105_crit_edge ]
  %arrayidx108 = getelementptr [17 x [6 x i8]], ptr %u106, i32 0, i32 %i.2201
  %sub.ptr.rhs.cast113 = ptrtoint ptr %p.2200 to i32
  %sub.ptr.sub114 = sub i32 %sub.ptr.lhs.cast112, %sub.ptr.rhs.cast113
  %46 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx108, align 1
  %conv116 = zext i8 %47 to i32
  %arrayidx117 = getelementptr i8, ptr %arrayidx108, i32 1
  %48 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx117, align 1
  %conv118 = zext i8 %49 to i32
  %arrayidx119 = getelementptr i8, ptr %arrayidx108, i32 2
  %50 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx119, align 1
  %conv120 = zext i8 %51 to i32
  %arrayidx121 = getelementptr i8, ptr %arrayidx108, i32 3
  %52 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %53 to i32
  %arrayidx123 = getelementptr i8, ptr %arrayidx108, i32 4
  %54 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %55 to i32
  %arrayidx125 = getelementptr i8, ptr %arrayidx108, i32 5
  %56 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx125, align 1
  %conv126 = zext i8 %57 to i32
  %call127 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.2200, i32 noundef %sub.ptr.sub114, ptr noundef nonnull @.str.28, i32 noundef %conv116, i32 noundef %conv118, i32 noundef %conv120, i32 noundef %conv122, i32 noundef %conv124, i32 noundef %conv126) #6
  %add.ptr128 = getelementptr i8, ptr %p.2200, i32 %call127
  %inc130 = add nuw nsw i32 %i.2201, 1
  %exitcond.not = icmp eq i32 %inc130, 17
  br i1 %exitcond.not, label %for.end131, label %for.body105.for.body105_crit_edge

for.body105.for.body105_crit_edge:                ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body105

for.end131:                                       ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #8
  %sub.ptr.lhs.cast133 = ptrtoint ptr %add.ptr128 to i32
  %sub.ptr.rhs.cast134 = ptrtoint ptr %buf to i32
  %sub.ptr.sub135 = sub i32 %sub.ptr.lhs.cast133, %sub.ptr.rhs.cast134
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end131, %sw.bb74, %sw.bb47, %for.end42, %for.end, %sw.bb
  %len.0 = phi i32 [ %sub.ptr.sub135, %for.end131 ], [ %call95, %sw.bb74 ], [ %call68, %sw.bb47 ], [ %sub.ptr.sub46, %for.end42 ], [ %sub.ptr.sub12, %for.end ], [ %call, %sw.bb ]
  %call137 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %len.0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call137, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 225, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @key_replays_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #6
  %cipher = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 8, i32 1
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  %3 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cipher, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 1027076, label %entry.sw.bb_crit_edge
    i32 1027082, label %entry.sw.bb_crit_edge24
    i32 1027078, label %entry.sw.bb1_crit_edge
    i32 1027085, label %entry.sw.bb1_crit_edge25
    i32 1027083, label %entry.sw.bb6_crit_edge
    i32 1027084, label %entry.sw.bb6_crit_edge26
    i32 1027080, label %entry.sw.bb11_crit_edge
    i32 1027081, label %entry.sw.bb11_crit_edge27
  ]

entry.sw.bb11_crit_edge27:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11

entry.sw.bb11_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11

entry.sw.bb6_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

entry.sw.bb1_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb_crit_edge24:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge24
  %replays = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 1, i32 0, i32 2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge25
  %replays4 = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 3
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge26
  %replays9 = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 3
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry.sw.bb11_crit_edge, %entry.sw.bb11_crit_edge27
  %replays14 = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 1, i32 0, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb6, %sw.bb1, %sw.bb
  %replays14.sink = phi ptr [ %replays14, %sw.bb11 ], [ %replays9, %sw.bb6 ], [ %replays4, %sw.bb1 ], [ %replays, %sw.bb ]
  %6 = ptrtoint ptr %replays14.sink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %replays14.sink, align 4
  %call15 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.29, i32 noundef %7) #6
  %call17 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call15) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @key_icverrors_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #6
  %cipher = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 8, i32 1
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  %3 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cipher, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 1027078, label %entry.sw.epilog_crit_edge
    i32 1027085, label %entry.sw.epilog_crit_edge12
    i32 1027083, label %entry.sw.epilog_crit_edge13
    i32 1027084, label %entry.sw.epilog_crit_edge14
  ]

entry.sw.epilog_crit_edge14:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge13:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge12:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge12, %entry.sw.epilog_crit_edge13, %entry.sw.epilog_crit_edge14
  %icverrors4 = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 4
  %6 = ptrtoint ptr %icverrors4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %icverrors4, align 8
  %call5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.29, i32 noundef %7) #6
  %call7 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call5) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @key_mic_failures_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #6
  %cipher = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 8, i32 1
  %2 = call ptr @memset(ptr %buf, i32 255, i32 20)
  %3 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cipher, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %4)
  %cmp.not = icmp eq i32 %4, 1027074
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mic_failures = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 5, i32 0, i32 3
  %5 = ptrtoint ptr %mic_failures to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mic_failures, align 8
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.29, i32 noundef %6) #6
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @key_key_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %keylen = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 8, i32 7
  %2 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %keylen, align 2
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %add = add nuw nsw i32 %mul, 2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #10
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %keylen, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp44.not = icmp eq i8 %5, 0
  br i1 %cmp44.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %add
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %p.046 = phi ptr [ %call9.i, %for.body.lr.ph ], [ %add.ptr9, %for.body.for.body_crit_edge ]
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %sub.ptr.rhs.cast = ptrtoint ptr %p.046 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %arrayidx = getelementptr %struct.ieee80211_key, ptr %1, i32 0, i32 8, i32 8, i32 %i.045
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %7 to i32
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.046, i32 noundef %sub.ptr.sub, ptr noundef nonnull @.str.30, i32 noundef %conv7) #6
  %add.ptr9 = getelementptr i8, ptr %p.046, i32 %call8
  %inc = add nuw nsw i32 %i.045, 1
  %8 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %keylen, align 2
  %conv3 = zext i8 %9 to i32
  %cmp = icmp ult i32 %inc, %conv3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %p.0.lcssa = phi ptr [ %call9.i, %for.cond.preheader.for.end_crit_edge ], [ %add.ptr9, %for.body.for.end_crit_edge ]
  %add.ptr10 = getelementptr i8, ptr %call9.i, i32 %add
  %sub.ptr.lhs.cast11 = ptrtoint ptr %add.ptr10 to i32
  %sub.ptr.rhs.cast12 = ptrtoint ptr %p.0.lcssa to i32
  %sub.ptr.sub13 = sub i32 %sub.ptr.lhs.cast11, %sub.ptr.rhs.cast12
  %call14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.0.lcssa, i32 noundef %sub.ptr.sub13, ptr noundef nonnull @.str.26) #6
  %add.ptr15 = getelementptr i8, ptr %p.0.lcssa, i32 %call14
  %sub.ptr.lhs.cast16 = ptrtoint ptr %add.ptr15 to i32
  %sub.ptr.rhs.cast17 = ptrtoint ptr %call9.i to i32
  %sub.ptr.sub18 = sub i32 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast17
  %call19 = tail call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call9.i, i32 noundef %sub.ptr.sub18) #6
  tail call void @kfree(ptr noundef nonnull %call9.i) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @key_ifindex_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %sdata = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdata, align 4
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 10
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @mac80211_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.31, ptr noundef %name) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @ieee80211_debugfs_key_add.keycount, !1, !"keycount", i1 false, i1 false}
!1 = !{!"../net/mac80211/debugfs_key.c", i32 329, i32 13}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/mac80211/debugfs_key.c", i32 336, i32 15}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/mac80211/debugfs_key.c", i32 344, i32 16}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/mac80211/debugfs_key.c", i32 347, i32 27}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/mac80211/debugfs_key.c", i32 350, i32 2}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/mac80211/debugfs_key.c", i32 351, i32 2}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/mac80211/debugfs_key.c", i32 352, i32 2}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/mac80211/debugfs_key.c", i32 353, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/mac80211/debugfs_key.c", i32 354, i32 2}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/mac80211/debugfs_key.c", i32 355, i32 2}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/mac80211/debugfs_key.c", i32 356, i32 2}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/mac80211/debugfs_key.c", i32 357, i32 2}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/mac80211/debugfs_key.c", i32 358, i32 2}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/mac80211/debugfs_key.c", i32 359, i32 2}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/mac80211/debugfs_key.c", i32 360, i32 2}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/mac80211/debugfs_key.c", i32 361, i32 2}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/mac80211/debugfs_key.c", i32 381, i32 2}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../net/mac80211/debugfs_key.c", i32 387, i32 9}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/mac80211/debugfs_key.c", i32 389, i32 16}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/mac80211/debugfs_key.c", i32 391, i32 27}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../net/mac80211/debugfs_key.c", i32 399, i32 9}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/mac80211/debugfs_key.c", i32 403, i32 27}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../net/mac80211/debugfs_key.c", i32 416, i32 8}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/mac80211/debugfs_key.c", i32 421, i32 27}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../net/mac80211/debugfs_key.c", i32 445, i32 8}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/mac80211/debugfs_key.c", i32 450, i32 27}
!53 = !{ptr @key_keylen_ops, !54, !"key_keylen_ops", i1 false, i1 false}
!54 = !{!"../net/mac80211/debugfs_key.c", i32 62, i32 1}
!55 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @key_flags_ops, !57, !"key_flags_ops", i1 false, i1 false}
!57 = !{!"../net/mac80211/debugfs_key.c", i32 65, i32 1}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @key_keyidx_ops, !60, !"key_keyidx_ops", i1 false, i1 false}
!60 = !{!"../net/mac80211/debugfs_key.c", i32 63, i32 1}
!61 = !{ptr @key_hw_key_idx_ops, !62, !"key_hw_key_idx_ops", i1 false, i1 false}
!62 = !{!"../net/mac80211/debugfs_key.c", i32 64, i32 1}
!63 = !{ptr @key_algorithm_ops, !64, !"key_algorithm_ops", i1 false, i1 false}
!64 = !{!"../net/mac80211/debugfs_key.c", i32 81, i32 1}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/mac80211/debugfs_key.c", i32 77, i32 15}
!67 = !{ptr @key_tx_spec_ops, !68, !"key_tx_spec_ops", i1 false, i1 false}
!68 = !{!"../net/mac80211/debugfs_key.c", i32 155, i32 1}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/mac80211/debugfs_key.c", i32 129, i32 37}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/mac80211/debugfs_key.c", i32 133, i32 37}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/mac80211/debugfs_key.c", i32 146, i32 37}
!75 = !{ptr @key_rx_spec_ops, !76, !"key_rx_spec_ops", i1 false, i1 false}
!76 = !{!"../net/mac80211/debugfs_key.c", i32 223, i32 1}
!77 = !{ptr @key_replays_ops, !78, !"key_replays_ops", i1 false, i1 false}
!78 = !{!"../net/mac80211/debugfs_key.c", i32 256, i32 1}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/mac80211/debugfs_key.c", i32 235, i32 37}
!81 = !{ptr @key_icverrors_ops, !82, !"key_icverrors_ops", i1 false, i1 false}
!82 = !{!"../net/mac80211/debugfs_key.c", i32 281, i32 1}
!83 = !{ptr @key_mic_failures_ops, !84, !"key_mic_failures_ops", i1 false, i1 false}
!84 = !{!"../net/mac80211/debugfs_key.c", i32 297, i32 1}
!85 = !{ptr @key_key_ops, !86, !"key_key_ops", i1 false, i1 false}
!86 = !{!"../net/mac80211/debugfs_key.c", i32 318, i32 1}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/mac80211/debugfs_key.c", i32 312, i32 40}
!89 = !{ptr @key_ifindex_ops, !90, !"key_ifindex_ops", i1 false, i1 false}
!90 = !{!"../net/mac80211/debugfs_key.c", i32 67, i32 1}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/mac80211/debugfs_key.c", i32 66, i32 1}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"branch_weights", i32 1, i32 2000}
!103 = !{!"auto-init"}
