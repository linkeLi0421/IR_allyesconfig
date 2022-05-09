; ModuleID = '/llk/IR_all_yes/net/mac80211/tkip.c_pt.bc'
source_filename = "../net/mac80211/tkip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ieee80211_tkip_add_iv\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_tkip_add_iv\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_tkip_add_iv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_tkip_add_iv:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_tkip_add_iv\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_tkip_add_iv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ieee80211_get_tkip_p1k_iv\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_get_tkip_p1k_iv\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_get_tkip_p1k_iv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_get_tkip_p1k_iv:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_get_tkip_p1k_iv\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_get_tkip_p1k_iv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ieee80211_get_tkip_rx_p1k\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_get_tkip_rx_p1k\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_get_tkip_rx_p1k\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_get_tkip_rx_p1k:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_get_tkip_rx_p1k\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_get_tkip_rx_p1k:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ieee80211_get_tkip_p2k\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_get_tkip_p2k\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_get_tkip_p2k\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_get_tkip_p2k:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_get_tkip_p2k\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_get_tkip_p2k:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%struct.atomic_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.142, %struct.anon.179, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.122, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.122 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.123 }
%union.anon.123 = type { %struct.cfg80211_bss_select_adjust }
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
%struct.hlist_node = type { ptr, ptr }
%union.anon.142 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
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
%struct.tkip_ctx = type { [5 x i16], i32, i32 }
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
%struct.ieee80211_key = type { ptr, ptr, ptr, %struct.list_head, i32, %union.anon.180, %struct.anon.187, i32, %struct.ieee80211_key_conf }
%union.anon.180 = type { %struct.anon.181 }
%struct.anon.181 = type { %struct.spinlock, %struct.tkip_ctx, [16 x %struct.tkip_ctx_rx], i32 }
%struct.tkip_ctx_rx = type { %struct.tkip_ctx, i32, i16 }
%struct.anon.187 = type { ptr, ptr, i32 }
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
%struct.sta_ampdu_mlme = type { %struct.mutex, [16 x ptr], [16 x i8], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], %struct.work_struct, [16 x ptr], [16 x ptr], [16 x i32], [16 x i8], i8 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_ieee80211_tkip_add_iv = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_tkip_add_iv = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_tkip_add_iv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_tkip_add_iv to i32), ptr @__kstrtab_ieee80211_tkip_add_iv, ptr @__kstrtabns_ieee80211_tkip_add_iv }, section "___ksymtab_gpl+ieee80211_tkip_add_iv", align 4
@__kstrtab_ieee80211_get_tkip_p1k_iv = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_get_tkip_p1k_iv = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_get_tkip_p1k_iv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_get_tkip_p1k_iv to i32), ptr @__kstrtab_ieee80211_get_tkip_p1k_iv, ptr @__kstrtabns_ieee80211_get_tkip_p1k_iv }, section "___ksymtab+ieee80211_get_tkip_p1k_iv", align 4
@__kstrtab_ieee80211_get_tkip_rx_p1k = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_get_tkip_rx_p1k = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_get_tkip_rx_p1k = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_get_tkip_rx_p1k to i32), ptr @__kstrtab_ieee80211_get_tkip_rx_p1k, ptr @__kstrtabns_ieee80211_get_tkip_rx_p1k }, section "___ksymtab+ieee80211_get_tkip_rx_p1k", align 4
@__kstrtab_ieee80211_get_tkip_p2k = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_get_tkip_p2k = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_get_tkip_p2k = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_get_tkip_p2k to i32), ptr @__kstrtab_ieee80211_get_tkip_p2k, ptr @__kstrtabns_ieee80211_get_tkip_p2k }, section "___ksymtab+ieee80211_get_tkip_p2k", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/mac80211/tkip.c\00", [44 x i8] zeroinitializer }, align 32
@tkip_sbox = internal constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 -14683, i16 -1916, i16 -4455, i16 -2419, i16 -243, i16 -10563, i16 -8527, i16 -28332, i16 24656, i16 515, i16 -12631, i16 22141, i16 -6375, i16 -19102, i16 19942, i16 -4966, i16 -28859, i16 8093, i16 -30400, i16 -1401, i16 -4331, i16 -19733, i16 -28983, i16 -1269, i16 16876, i16 -19609, i16 24573, i16 17898, i16 9151, i16 21495, i16 -7018, i16 -25765, i16 30146, i16 -7908, i16 15790, i16 19562, i16 27738, i16 32321, i16 -2814, i16 -31921, i16 26716, i16 20980, i16 -11980, i16 -1784, i16 -7533, i16 -21645, i16 25171, i16 10815, i16 2060, i16 -27310, i16 18021, i16 -25250, i16 12328, i16 14241, i16 2575, i16 12213, i16 3593, i16 9270, i16 7067, i16 -8387, i16 -13018, i16 20073, i16 32717, i16 -5473, i16 4635, i16 7582, i16 22644, i16 13358, i16 13869, i16 -9038, i16 -19218, i16 23547, i16 -23306, i16 30285, i16 -18591, i16 32206, i16 21115, i16 -8898, i16 24177, i16 5015, i16 -22795, i16 -18072, i16 0, i16 -16084, i16 16480, i16 -7393, i16 31176, i16 -18707, i16 -11074, i16 -29370, i16 26585, i16 29259, i16 -27426, i16 -26412, i16 -20248, i16 -31414, i16 -17557, i16 -15062, i16 20453, i16 -4842, i16 -31035, i16 -25897, i16 26197, i16 4500, i16 -30001, i16 -5872, i16 1030, i16 -383, i16 -24336, i16 30788, i16 9658, i16 19427, i16 -23821, i16 24062, i16 -32576, i16 1418, i16 16301, i16 8636, i16 28744, i16 -3836, i16 25567, i16 30657, i16 -20619, i16 16995, i16 8240, i16 -6886, i16 -754, i16 -16531, i16 -32436, i16 6164, i16 9781, i16 -15569, i16 -16671, i16 13730, i16 -30516, i16 11833, i16 -27817, i16 22002, i16 -894, i16 31303, i16 -14164, i16 -17689, i16 12843, i16 -6507, i16 -16224, i16 6552, i16 -24879, i16 -23681, i16 17510, i16 21630, i16 15275, i16 2947, i16 -29494, i16 -14551, i16 27603, i16 10300, i16 -22663, i16 -17182, i16 5661, i16 -21130, i16 -9413, i16 25686, i16 29774, i16 5150, i16 -27941, i16 3082, i16 18540, i16 -18204, i16 -24739, i16 -17042, i16 17391, i16 -15194, i16 14760, i16 12708, i16 -11465, i16 -3445, i16 -10958, i16 -29885, i16 28249, i16 -9545, i16 396, i16 -20124, i16 -25390, i16 18912, i16 -10060, i16 -21254, i16 -3321, i16 -12507, i16 -13649, i16 -2930, i16 18409, i16 4120, i16 28629, i16 -3960, i16 19055, i16 23666, i16 14372, i16 22513, i16 29639, i16 -26799, i16 -13533, i16 -24196, i16 -5988, i16 15905, i16 -26915, i16 25052, i16 3462, i16 3973, i16 -8048, i16 31810, i16 29124, i16 -13142, i16 -28456, i16 1541, i16 -2303, i16 7186, i16 -15709, i16 27231, i16 -20743, i16 27088, i16 6033, i16 -26280, i16 14887, i16 10169, i16 -9928, i16 -5357, i16 11187, i16 8755, i16 -11589, i16 -22160, i16 1929, i16 13223, i16 11702, i16 15394, i16 5522, i16 -14048, i16 -30903, i16 -21761, i16 20600, i16 -23174, i16 911, i16 23032, i16 2432, i16 6679, i16 26074, i16 -10447, i16 -31546, i16 -12104, i16 -32061, i16 10672, i16 23159, i16 7697, i16 31691, i16 -22276, i16 28118, i16 11322], [128 x i8] zeroinitializer }, align 32
@drv_update_tkip_key.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/mac80211/driver-ops.h\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_drv_update_tkip_key = external dso_local global %struct.tracepoint, align 4
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/mac80211/trace.h\00", [43 x i8] zeroinitializer }, align 32
@trace_drv_update_tkip_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@trace_drv_return_void.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 158, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [10 x i8] c"tkip_sbox\00", align 1
@___asan_gen_.10 = private constant [23 x i8] c"../net/mac80211/tkip.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 26, i32 18 }
@___asan_gen_.16 = private unnamed_addr constant [29 x i8] c"../net/mac80211/driver-ops.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 269, i32 7 }
@___asan_gen_.22 = private unnamed_addr constant [24 x i8] c"../net/mac80211/trace.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 619, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 108, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_ieee80211_get_tkip_p1k_iv, ptr @__ksymtab_ieee80211_get_tkip_p2k, ptr @__ksymtab_ieee80211_get_tkip_rx_p1k, ptr @__ksymtab_ieee80211_tkip_add_iv, ptr @.str, ptr @tkip_sbox, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tkip_sbox to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ieee80211_tkip_add_iv(ptr noundef writeonly %pos, ptr nocapture noundef readonly %keyconf, i64 noundef %pn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i64 %pn, 8
  %conv1.i = trunc i64 %0 to i8
  %incdec.ptr.i = getelementptr i8, ptr %pos, i32 1
  %1 = ptrtoint ptr %pos to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv1.i, ptr %pos, align 1
  %2 = and i8 %conv1.i, 95
  %conv4.i = or i8 %2, 32
  %incdec.ptr5.i = getelementptr i8, ptr %pos, i32 2
  %3 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv4.i, ptr %incdec.ptr.i, align 1
  %conv8.i = trunc i64 %pn to i8
  %incdec.ptr9.i = getelementptr i8, ptr %pos, i32 3
  %4 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv8.i, ptr %incdec.ptr5.i, align 1
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 5
  %5 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %keyidx, align 1
  %shl = shl i8 %6, 6
  %or = or i8 %shl, 32
  %incdec.ptr = getelementptr i8, ptr %pos, i32 4
  %7 = ptrtoint ptr %incdec.ptr9.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %or, ptr %incdec.ptr9.i, align 1
  %shr = lshr i64 %pn, 16
  %conv4 = trunc i64 %shr to i32
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv4) #9
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %incdec.ptr, align 1
  %add.ptr = getelementptr i8, ptr %pos, i32 8
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_get_tkip_p1k_iv(ptr noundef %keyconf, i32 noundef %iv32, ptr nocapture noundef writeonly %p1k) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr i8, ptr %keyconf, i32 -536
  tail call void @_raw_spin_lock_bh(ptr noundef %u) #9
  %sdata1.i = getelementptr i8, ptr %keyconf, i32 -556
  %0 = ptrtoint ptr %sdata1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata1.i, align 4
  %tx.i = getelementptr i8, ptr %keyconf, i32 -492
  %key2.i = getelementptr i8, ptr %keyconf, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr i8, ptr %keyconf, i32 -520
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !37

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 158, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %p1k_iv32.i = getelementptr i8, ptr %keyconf, i32 -480
  %3 = ptrtoint ptr %p1k_iv32.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p1k_iv32.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %iv32)
  %cmp27.not.i = icmp eq i32 %4, %iv32
  br i1 %cmp27.not.i, label %lor.lhs.false.i, label %if.end.i.if.then29.i_crit_edge

if.end.i.if.then29.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %state.i = getelementptr i8, ptr %keyconf, i32 -476
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp28.i = icmp eq i32 %6, 0
  br i1 %cmp28.i, label %lor.lhs.false.i.if.then29.i_crit_edge, label %lor.lhs.false.i.ieee80211_compute_tkip_p1k.exit_crit_edge

lor.lhs.false.i.ieee80211_compute_tkip_p1k.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_compute_tkip_p1k.exit

lor.lhs.false.i.if.then29.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29.i

if.then29.i:                                      ; preds = %lor.lhs.false.i.if.then29.i_crit_edge, %if.end.i.if.then29.i_crit_edge
  %addr.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 59, i32 2
  tail call fastcc void @tkip_mixing_phase1(ptr noundef %key2.i, ptr noundef %tx.i, ptr noundef %addr.i, i32 noundef %iv32) #9
  br label %ieee80211_compute_tkip_p1k.exit

ieee80211_compute_tkip_p1k.exit:                  ; preds = %if.then29.i, %lor.lhs.false.i.ieee80211_compute_tkip_p1k.exit_crit_edge
  %7 = call ptr @memcpy(ptr %p1k, ptr %tx.i, i32 10)
  tail call void @_raw_spin_unlock_bh(ptr noundef %u) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_get_tkip_rx_p1k(ptr nocapture noundef readonly %keyconf, ptr nocapture noundef readonly %ta, i32 noundef %iv32, ptr nocapture noundef writeonly %p1k) #3 align 64 {
entry:
  %ctx = alloca %struct.tkip_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %key = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ctx) #9
  %0 = call ptr @memset(ptr %ctx, i32 255, i32 20)
  call fastcc void @tkip_mixing_phase1(ptr noundef %key, ptr noundef nonnull %ctx, ptr noundef %ta, i32 noundef %iv32)
  %1 = call ptr @memcpy(ptr %p1k, ptr %ctx, i32 10)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ctx) #9
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tkip_mixing_phase1(ptr nocapture noundef readonly %tk, ptr nocapture noundef %ctx, ptr nocapture noundef readonly %ta, i32 noundef %tsc_IV32) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %tsc_IV32 to i16
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %ctx, align 2
  %shr = lshr i32 %tsc_IV32, 16
  %conv2 = trunc i32 %shr to i16
  %arrayidx3 = getelementptr i16, ptr %ctx, i32 1
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv2, ptr %arrayidx3, align 2
  %2 = ptrtoint ptr %ta to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %ta, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #9
  %arrayidx4 = getelementptr i16, ptr %ctx, i32 2
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %arrayidx4, align 2
  %add.ptr5 = getelementptr i8, ptr %ta, i32 2
  %6 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %add.ptr5, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #9
  %arrayidx7 = getelementptr i16, ptr %ctx, i32 3
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %arrayidx7, align 2
  %add.ptr8 = getelementptr i8, ptr %ta, i32 4
  %10 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %add.ptr8, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #9
  %arrayidx10 = getelementptr i16, ptr %ctx, i32 4
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %arrayidx10, align 2
  %add.ptr27 = getelementptr i8, ptr %tk, i32 4
  %add.ptr41 = getelementptr i8, ptr %tk, i32 8
  %add.ptr55 = getelementptr i8, ptr %tk, i32 12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0138 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %and12 = shl nuw i32 %i.0138, 1
  %mul = and i32 %and12, 2
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx10, align 2
  %add.ptr16 = getelementptr i8, ptr %tk, i32 %mul
  %16 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %add.ptr16, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #9
  %xor113 = xor i16 %18, %15
  %conv.i = zext i16 %xor113 to i32
  %and.i = and i32 %conv.i, 255
  %arrayidx.i = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %and.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.i, align 2
  %21 = lshr i32 %conv.i, 8
  %arrayidx3.i = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx3.i, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #9
  %xor7.i = xor i16 %24, %20
  %25 = ptrtoint ptr %ctx to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ctx, align 2
  %add = add i16 %xor7.i, %26
  store i16 %add, ptr %ctx, align 2
  %add.ptr28 = getelementptr i8, ptr %add.ptr27, i32 %mul
  %27 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %add.ptr28, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #9
  %xor31114 = xor i16 %29, %add
  %conv.i118 = zext i16 %xor31114 to i32
  %and.i119 = and i32 %conv.i118, 255
  %arrayidx.i120 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %and.i119
  %30 = ptrtoint ptr %arrayidx.i120 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.i120, align 2
  %32 = lshr i32 %conv.i118, 8
  %arrayidx3.i121 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx3.i121 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx3.i121, align 2
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #9
  %xor7.i122 = xor i16 %35, %31
  %36 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx3, align 2
  %add37 = add i16 %xor7.i122, %37
  store i16 %add37, ptr %arrayidx3, align 2
  %add.ptr42 = getelementptr i8, ptr %add.ptr41, i32 %mul
  %38 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %add.ptr42, align 1
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #9
  %xor45115 = xor i16 %40, %add37
  %conv.i123 = zext i16 %xor45115 to i32
  %and.i124 = and i32 %conv.i123, 255
  %arrayidx.i125 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %and.i124
  %41 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx.i125, align 2
  %43 = lshr i32 %conv.i123, 8
  %arrayidx3.i126 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx3.i126 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx3.i126, align 2
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #9
  %xor7.i127 = xor i16 %46, %42
  %47 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx4, align 2
  %add51 = add i16 %xor7.i127, %48
  store i16 %add51, ptr %arrayidx4, align 2
  %add.ptr56 = getelementptr i8, ptr %add.ptr55, i32 %mul
  %49 = ptrtoint ptr %add.ptr56 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %add.ptr56, align 1
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #9
  %xor59116 = xor i16 %51, %add51
  %conv.i128 = zext i16 %xor59116 to i32
  %and.i129 = and i32 %conv.i128, 255
  %arrayidx.i130 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %and.i129
  %52 = ptrtoint ptr %arrayidx.i130 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx.i130, align 2
  %54 = lshr i32 %conv.i128, 8
  %arrayidx3.i131 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx3.i131 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx3.i131, align 2
  %57 = tail call i16 @llvm.bswap.i16(i16 %56) #9
  %xor7.i132 = xor i16 %57, %53
  %58 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx7, align 2
  %add65 = add i16 %xor7.i132, %59
  store i16 %add65, ptr %arrayidx7, align 2
  %60 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %add.ptr16, align 1
  %62 = tail call i16 @llvm.bswap.i16(i16 %61) #9
  %xor73117 = xor i16 %62, %add65
  %conv.i133 = zext i16 %xor73117 to i32
  %and.i134 = and i32 %conv.i133, 255
  %arrayidx.i135 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %and.i134
  %63 = ptrtoint ptr %arrayidx.i135 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx.i135, align 2
  %65 = lshr i32 %conv.i133, 8
  %arrayidx3.i136 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx3.i136 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx3.i136, align 2
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #9
  %xor7.i137 = xor i16 %68, %64
  %69 = trunc i32 %i.0138 to i16
  %70 = add i16 %15, %69
  %conv81 = add i16 %70, %xor7.i137
  %71 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv81, ptr %arrayidx10, align 2
  %inc = add nuw nsw i32 %i.0138, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.tkip_ctx, ptr %ctx, i32 0, i32 2
  %72 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %state, align 4
  %p1k_iv32 = getelementptr inbounds %struct.tkip_ctx, ptr %ctx, i32 0, i32 1
  %73 = ptrtoint ptr %p1k_iv32 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %tsc_IV32, ptr %p1k_iv32, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_get_tkip_p2k(ptr noundef %keyconf, ptr nocapture noundef readonly %skb, ptr nocapture noundef writeonly %p2k) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr i8, ptr %keyconf, i32 -536
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %call = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %3) #12
  %add.ptr3 = getelementptr i8, ptr %1, i32 %call
  %arrayidx4 = getelementptr i8, ptr %add.ptr3, i32 4
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %arrayidx4, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  %arrayidx6 = getelementptr i8, ptr %add.ptr3, i32 2
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx6, align 1
  %9 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr3, align 1
  tail call void @_raw_spin_lock(ptr noundef %u) #9
  %sdata1.i = getelementptr i8, ptr %keyconf, i32 -556
  %11 = ptrtoint ptr %sdata1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdata1.i, align 4
  %tx.i = getelementptr i8, ptr %keyconf, i32 -492
  %key2.i = getelementptr i8, ptr %keyconf, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr i8, ptr %keyconf, i32 -520
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !37

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 158, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %p1k_iv32.i = getelementptr i8, ptr %keyconf, i32 -480
  %14 = ptrtoint ptr %p1k_iv32.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %p1k_iv32.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %6)
  %cmp27.not.i = icmp eq i32 %15, %6
  br i1 %cmp27.not.i, label %lor.lhs.false.i, label %if.end.i.if.then29.i_crit_edge

if.end.i.if.then29.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %state.i = getelementptr i8, ptr %keyconf, i32 -476
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp28.i = icmp eq i32 %17, 0
  br i1 %cmp28.i, label %lor.lhs.false.i.if.then29.i_crit_edge, label %lor.lhs.false.i.ieee80211_compute_tkip_p1k.exit_crit_edge

lor.lhs.false.i.ieee80211_compute_tkip_p1k.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_compute_tkip_p1k.exit

lor.lhs.false.i.if.then29.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29.i

if.then29.i:                                      ; preds = %lor.lhs.false.i.if.then29.i_crit_edge, %if.end.i.if.then29.i_crit_edge
  %addr.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 59, i32 2
  tail call fastcc void @tkip_mixing_phase1(ptr noundef %key2.i, ptr noundef %tx.i, ptr noundef %addr.i, i32 noundef %6) #9
  br label %ieee80211_compute_tkip_p1k.exit

ieee80211_compute_tkip_p1k.exit:                  ; preds = %if.then29.i, %lor.lhs.false.i.ieee80211_compute_tkip_p1k.exit_crit_edge
  %conv8 = zext i8 %10 to i16
  %shl = shl nuw i16 %conv8, 8
  %conv = zext i8 %8 to i16
  %or = or i16 %shl, %conv
  tail call fastcc void @tkip_mixing_phase2(ptr noundef %key2.i, ptr noundef %tx.i, i16 noundef zeroext %or, ptr noundef %p2k)
  tail call void @_raw_spin_unlock(ptr noundef %u) #9
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tkip_mixing_phase2(ptr nocapture noundef readonly %tk, ptr nocapture noundef readonly %ctx, i16 noundef zeroext %tsc_IV16, ptr nocapture noundef writeonly %rc4key) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ctx, align 2
  %arrayidx3 = getelementptr i16, ptr %ctx, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx3, align 2
  %arrayidx5 = getelementptr i16, ptr %ctx, i32 2
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx5, align 2
  %arrayidx7 = getelementptr i16, ptr %ctx, i32 3
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx7, align 2
  %arrayidx9 = getelementptr i16, ptr %ctx, i32 4
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx9, align 2
  %add = add i16 %9, %tsc_IV16
  %10 = ptrtoint ptr %tk to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %tk, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #9
  %xor173 = xor i16 %12, %add
  %conv.i = zext i16 %xor173 to i32
  %and.i = and i32 %conv.i, 255
  %arrayidx.i = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %and.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.i, align 2
  %15 = lshr i32 %conv.i, 8
  %arrayidx3.i = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx3.i, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #9
  %xor7.i = xor i16 %18, %14
  %add23 = add i16 %xor7.i, %1
  %add.ptr27 = getelementptr i8, ptr %tk, i32 2
  %19 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %add.ptr27, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #9
  %xor30174 = xor i16 %add23, %21
  %conv.i182 = zext i16 %xor30174 to i32
  %and.i183 = and i32 %conv.i182, 255
  %arrayidx.i184 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %and.i183
  %22 = ptrtoint ptr %arrayidx.i184 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i184, align 2
  %24 = lshr i32 %conv.i182, 8
  %arrayidx3.i185 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx3.i185 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx3.i185, align 2
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #9
  %xor7.i186 = xor i16 %27, %23
  %add36 = add i16 %xor7.i186, %3
  %add.ptr40 = getelementptr i8, ptr %tk, i32 4
  %28 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %add.ptr40, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #9
  %xor43175 = xor i16 %add36, %30
  %conv.i187 = zext i16 %xor43175 to i32
  %and.i188 = and i32 %conv.i187, 255
  %arrayidx.i189 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %and.i188
  %31 = ptrtoint ptr %arrayidx.i189 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx.i189, align 2
  %33 = lshr i32 %conv.i187, 8
  %arrayidx3.i190 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx3.i190 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx3.i190, align 2
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #9
  %xor7.i191 = xor i16 %36, %32
  %add49 = add i16 %xor7.i191, %5
  %add.ptr53 = getelementptr i8, ptr %tk, i32 6
  %37 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %add.ptr53, align 1
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #9
  %xor56176 = xor i16 %add49, %39
  %conv.i192 = zext i16 %xor56176 to i32
  %and.i193 = and i32 %conv.i192, 255
  %arrayidx.i194 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %and.i193
  %40 = ptrtoint ptr %arrayidx.i194 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.i194, align 2
  %42 = lshr i32 %conv.i192, 8
  %arrayidx3.i195 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx3.i195 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx3.i195, align 2
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #9
  %xor7.i196 = xor i16 %45, %41
  %add62 = add i16 %xor7.i196, %7
  %add.ptr66 = getelementptr i8, ptr %tk, i32 8
  %46 = ptrtoint ptr %add.ptr66 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %add.ptr66, align 1
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #9
  %xor69177 = xor i16 %add62, %48
  %conv.i197 = zext i16 %xor69177 to i32
  %and.i198 = and i32 %conv.i197, 255
  %arrayidx.i199 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %and.i198
  %49 = ptrtoint ptr %arrayidx.i199 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx.i199, align 2
  %51 = lshr i32 %conv.i197, 8
  %arrayidx3.i200 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx3.i200 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx3.i200, align 2
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #9
  %xor7.i201 = xor i16 %54, %50
  %add75 = add i16 %xor7.i201, %9
  %add.ptr79 = getelementptr i8, ptr %tk, i32 10
  %55 = ptrtoint ptr %add.ptr79 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %add.ptr79, align 1
  %57 = tail call i16 @llvm.bswap.i16(i16 %56) #9
  %xor82178 = xor i16 %add75, %57
  %conv.i202 = zext i16 %xor82178 to i32
  %and.i203 = and i32 %conv.i202, 255
  %arrayidx.i204 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %and.i203
  %58 = ptrtoint ptr %arrayidx.i204 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx.i204, align 2
  %60 = lshr i32 %conv.i202, 8
  %arrayidx3.i205 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx3.i205 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx3.i205, align 2
  %63 = tail call i16 @llvm.bswap.i16(i16 %62) #9
  %xor7.i206 = xor i16 %63, %59
  %add88 = add i16 %xor7.i206, %add
  %add.ptr92 = getelementptr i8, ptr %tk, i32 12
  %64 = ptrtoint ptr %add.ptr92 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %add.ptr92, align 1
  %66 = tail call i16 @llvm.bswap.i16(i16 %65) #9
  %xor95179 = xor i16 %add88, %66
  %or.i = tail call i16 @llvm.fshl.i16(i16 %xor95179, i16 %xor95179, i16 15) #9
  %add101 = add i16 %or.i, %add23
  %add.ptr105 = getelementptr i8, ptr %tk, i32 14
  %67 = ptrtoint ptr %add.ptr105 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %add.ptr105, align 1
  %69 = tail call i16 @llvm.bswap.i16(i16 %68) #9
  %xor108180 = xor i16 %add101, %69
  %or.i207 = tail call i16 @llvm.fshl.i16(i16 %xor108180, i16 %xor108180, i16 15) #9
  %add114 = add i16 %or.i207, %add36
  %or.i208 = tail call i16 @llvm.fshl.i16(i16 %add114, i16 %add114, i16 15) #9
  %add121 = add i16 %or.i208, %add49
  %or.i209 = tail call i16 @llvm.fshl.i16(i16 %add121, i16 %add121, i16 15) #9
  %add128 = add i16 %or.i209, %add62
  %or.i210 = tail call i16 @llvm.fshl.i16(i16 %add128, i16 %add128, i16 15) #9
  %add135 = add i16 %or.i210, %add75
  %or.i211 = tail call i16 @llvm.fshl.i16(i16 %add135, i16 %add135, i16 15) #9
  %add142 = add i16 %or.i211, %add88
  %70 = lshr i16 %tsc_IV16, 8
  %conv1.i = trunc i16 %70 to i8
  %incdec.ptr.i = getelementptr i8, ptr %rc4key, i32 1
  %71 = ptrtoint ptr %rc4key to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv1.i, ptr %rc4key, align 1
  %72 = and i8 %conv1.i, 95
  %conv4.i = or i8 %72, 32
  %incdec.ptr5.i = getelementptr i8, ptr %rc4key, i32 2
  %73 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv4.i, ptr %incdec.ptr.i, align 1
  %conv8.i = trunc i16 %tsc_IV16 to i8
  %incdec.ptr9.i = getelementptr i8, ptr %rc4key, i32 3
  %74 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv8.i, ptr %incdec.ptr5.i, align 1
  %75 = ptrtoint ptr %tk to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %tk, align 1
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #9
  %xor149181 = xor i16 %add142, %77
  %78 = lshr i16 %xor149181, 1
  %conv150 = trunc i16 %78 to i8
  %incdec.ptr = getelementptr i8, ptr %rc4key, i32 4
  %79 = ptrtoint ptr %incdec.ptr9.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv150, ptr %incdec.ptr9.i, align 1
  %80 = tail call i16 @llvm.bswap.i16(i16 %add101) #9
  %81 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_storeN_noabort(i32 %81, i32 2)
  store i16 %80, ptr %incdec.ptr, align 1
  %add.ptr153.1 = getelementptr i8, ptr %rc4key, i32 6
  %82 = tail call i16 @llvm.bswap.i16(i16 %add114) #9
  %83 = ptrtoint ptr %add.ptr153.1 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 %82, ptr %add.ptr153.1, align 1
  %add.ptr153.2 = getelementptr i8, ptr %rc4key, i32 8
  %84 = tail call i16 @llvm.bswap.i16(i16 %add121) #9
  %85 = ptrtoint ptr %add.ptr153.2 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 2)
  store i16 %84, ptr %add.ptr153.2, align 1
  %add.ptr153.3 = getelementptr i8, ptr %rc4key, i32 10
  %86 = tail call i16 @llvm.bswap.i16(i16 %add128) #9
  %87 = ptrtoint ptr %add.ptr153.3 to i32
  call void @__asan_storeN_noabort(i32 %87, i32 2)
  store i16 %86, ptr %add.ptr153.3, align 1
  %add.ptr153.4 = getelementptr i8, ptr %rc4key, i32 12
  %88 = tail call i16 @llvm.bswap.i16(i16 %add135) #9
  %89 = ptrtoint ptr %add.ptr153.4 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 %88, ptr %add.ptr153.4, align 1
  %add.ptr153.5 = getelementptr i8, ptr %rc4key, i32 14
  %90 = tail call i16 @llvm.bswap.i16(i16 %add142) #9
  %91 = ptrtoint ptr %add.ptr153.5 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 2)
  store i16 %90, ptr %add.ptr153.5, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_tkip_encrypt_data(ptr noundef %ctx, ptr noundef %key, ptr nocapture noundef readonly %skb, ptr noundef %payload, i32 noundef %payload_len) local_unnamed_addr #1 align 64 {
entry:
  %rc4key = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rc4key) #9
  %conf = getelementptr inbounds %struct.ieee80211_key, ptr %key, i32 0, i32 8
  %0 = call ptr @memset(ptr %rc4key, i32 255, i32 16)
  call void @ieee80211_get_tkip_p2k(ptr noundef %conf, ptr noundef %skb, ptr noundef nonnull %rc4key)
  %call = call i32 @ieee80211_wep_encrypt_data(ptr noundef %ctx, ptr noundef nonnull %rc4key, i32 noundef 16, ptr noundef %payload, i32 noundef %payload_len) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rc4key) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wep_encrypt_data(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_tkip_decrypt_data(ptr noundef %ctx, ptr noundef %key, ptr noundef %payload, i32 noundef %payload_len, ptr nocapture noundef readonly %ta, ptr nocapture noundef readnone %ra, i32 noundef %only_iv, i32 noundef %queue, ptr nocapture noundef writeonly %out_iv32, ptr nocapture noundef writeonly %out_iv16) local_unnamed_addr #1 align 64 {
entry:
  %rc4key = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rc4key) #9
  %conf = getelementptr inbounds %struct.ieee80211_key, ptr %key, i32 0, i32 8
  %key1 = getelementptr inbounds %struct.ieee80211_key, ptr %key, i32 0, i32 8, i32 8
  %arrayidx2 = getelementptr %struct.ieee80211_key, ptr %key, i32 0, i32 5, i32 0, i32 2, i32 %queue
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %payload_len)
  %cmp = icmp ult i32 %payload_len, 12
  %0 = call ptr @memset(ptr %rc4key, i32 255, i32 16)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %payload, align 1
  %conv = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx4 = getelementptr i8, ptr %payload, i32 2
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %4 to i32
  %or = or i32 %shl, %conv5
  %arrayidx6 = getelementptr i8, ptr %payload, i32 3
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx6, align 1
  %add.ptr = getelementptr i8, ptr %payload, i32 4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %add.ptr, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  %add.ptr7 = getelementptr i8, ptr %payload, i32 8
  %conv8 = zext i8 %6 to i32
  %and = and i32 %conv8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %10 = lshr i32 %conv8, 6
  %keyidx = getelementptr inbounds %struct.ieee80211_key, ptr %key, i32 0, i32 8, i32 5
  %11 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %keyidx, align 1
  %conv13 = sext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv13)
  %cmp14.not = icmp eq i32 %10, %conv13
  br i1 %cmp14.not, label %if.end17, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %iv3218 = getelementptr %struct.ieee80211_key, ptr %key, i32 0, i32 5, i32 0, i32 2, i32 %queue, i32 1
  %13 = ptrtoint ptr %iv3218 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iv3218, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %14)
  %cmp19 = icmp ult i32 %9, %14
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %lor.lhs.false

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %14)
  %cmp22 = icmp eq i32 %9, %14
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false.if.end45_crit_edge

lor.lhs.false.if.end45_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

land.lhs.true:                                    ; preds = %lor.lhs.false
  %iv1624 = getelementptr %struct.ieee80211_key, ptr %key, i32 0, i32 5, i32 0, i32 2, i32 %queue, i32 2
  %15 = ptrtoint ptr %iv1624 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %iv1624, align 4
  %conv25 = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv25)
  %cmp26 = icmp ult i32 %or, %conv25
  br i1 %cmp26, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false28

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false28:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv25)
  %cmp31 = icmp eq i32 %or, %conv25
  br i1 %cmp31, label %land.lhs.true33, label %lor.lhs.false28.if.end45_crit_edge

lor.lhs.false28.if.end45_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

land.lhs.true33:                                  ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool35.not = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool39.not = icmp eq i16 %16, 0
  %or.cond = select i1 %tobool35.not, i1 %tobool39.not, i1 false
  br i1 %or.cond, label %lor.lhs.false40, label %land.lhs.true33.cleanup_crit_edge

land.lhs.true33.cleanup_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false40:                                  ; preds = %land.lhs.true33
  %state = getelementptr inbounds %struct.tkip_ctx, ptr %arrayidx2, i32 0, i32 2
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp42.not = icmp eq i32 %18, 0
  br i1 %cmp42.not, label %lor.lhs.false40.if.end45_crit_edge, label %lor.lhs.false40.cleanup_crit_edge

lor.lhs.false40.cleanup_crit_edge:                ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false40.if.end45_crit_edge:               ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.end45:                                         ; preds = %lor.lhs.false40.if.end45_crit_edge, %lor.lhs.false28.if.end45_crit_edge, %lor.lhs.false.if.end45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %only_iv)
  %tobool46.not = icmp eq i32 %only_iv, 0
  %state52 = getelementptr inbounds %struct.tkip_ctx, ptr %arrayidx2, i32 0, i32 2
  br i1 %tobool46.not, label %if.end50, label %done.thread

done.thread:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %state52 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %state52, align 4
  %.pre = trunc i32 %or to i16
  br label %if.then92

if.end50:                                         ; preds = %if.end45
  %20 = ptrtoint ptr %state52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp53 = icmp eq i32 %21, 0
  %cmp22.not = xor i1 %cmp22, true
  %brmerge = select i1 %cmp53, i1 true, i1 %cmp22.not
  br i1 %brmerge, label %if.then59, label %if.end50.if.end61_crit_edge

if.end50.if.end61_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then59:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tkip_mixing_phase1(ptr noundef %key1, ptr noundef %arrayidx2, ptr noundef %ta, i32 noundef %9)
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end50.if.end61_crit_edge
  %22 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %key, align 8
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %update_tkip_key = getelementptr inbounds %struct.ieee80211_ops, ptr %25, i32 0, i32 18
  %26 = ptrtoint ptr %update_tkip_key to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %update_tkip_key, align 4
  %tobool62.not = icmp eq ptr %27, null
  br i1 %tobool62.not, label %if.end61.done_crit_edge, label %land.lhs.true63

if.end61.done_crit_edge:                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

land.lhs.true63:                                  ; preds = %if.end61
  %flags = getelementptr inbounds %struct.ieee80211_key, ptr %key, i32 0, i32 4
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %and64 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %land.lhs.true63.done_crit_edge, label %land.lhs.true66

land.lhs.true63.done_crit_edge:                   ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

land.lhs.true66:                                  ; preds = %land.lhs.true63
  %30 = ptrtoint ptr %state52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp69.not = icmp eq i32 %31, 2
  br i1 %cmp69.not, label %land.lhs.true66.done_crit_edge, label %if.then71

land.lhs.true66.done_crit_edge:                   ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then71:                                        ; preds = %land.lhs.true66
  %sdata72 = getelementptr inbounds %struct.ieee80211_key, ptr %key, i32 0, i32 1
  %32 = ptrtoint ptr %sdata72 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sdata72, align 4
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %33, i32 0, i32 59
  %34 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp73 = icmp eq i32 %35, 4
  br i1 %cmp73, label %if.then75, label %if.then71.if.end78_crit_edge

if.then71.if.end78_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then75:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  %bss = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %33, i32 0, i32 49
  %36 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bss, align 4
  %add.ptr77 = getelementptr i8, ptr %37, i32 -2552
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.then71.if.end78_crit_edge
  %sdata.0 = phi ptr [ %add.ptr77, %if.then75 ], [ %33, %if.then71.if.end78_crit_edge ]
  %sta = getelementptr inbounds %struct.ieee80211_key, ptr %key, i32 0, i32 2
  %38 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sta, align 8
  tail call fastcc void @drv_update_tkip_key(ptr noundef %23, ptr noundef %sdata.0, ptr noundef %conf, ptr noundef %39, i32 noundef %9, ptr noundef %arrayidx2)
  %40 = ptrtoint ptr %state52 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %state52, align 4
  br label %done

done:                                             ; preds = %if.end78, %land.lhs.true66.done_crit_edge, %land.lhs.true63.done_crit_edge, %if.end61.done_crit_edge
  %conv86 = trunc i32 %or to i16
  call fastcc void @tkip_mixing_phase2(ptr noundef %key1, ptr noundef %arrayidx2, i16 noundef zeroext %conv86, ptr noundef nonnull %rc4key)
  %sub = add i32 %payload_len, -12
  %call89 = call i32 @ieee80211_wep_decrypt_data(ptr noundef %ctx, ptr noundef nonnull %rc4key, i32 noundef 16, ptr noundef %add.ptr7, i32 noundef %sub) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp eq i32 %call89, 0
  br i1 %cmp90, label %done.if.then92_crit_edge, label %done.cleanup_crit_edge

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

done.if.then92_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then92

if.then92:                                        ; preds = %done.if.then92_crit_edge, %done.thread
  %conv93.pre-phi = phi i16 [ %.pre, %done.thread ], [ %conv86, %done.if.then92_crit_edge ]
  %41 = ptrtoint ptr %out_iv32 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %9, ptr %out_iv32, align 4
  %42 = ptrtoint ptr %out_iv16 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv93.pre-phi, ptr %out_iv16, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then92, %done.cleanup_crit_edge, %lor.lhs.false40.cleanup_crit_edge, %land.lhs.true33.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -2, %if.end10.cleanup_crit_edge ], [ -3, %lor.lhs.false40.cleanup_crit_edge ], [ -3, %land.lhs.true33.cleanup_crit_edge ], [ -3, %land.lhs.true.cleanup_crit_edge ], [ -3, %if.end17.cleanup_crit_edge ], [ 0, %if.then92 ], [ %call89, %done.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rc4key) #9
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drv_update_tkip_key(ptr noundef %local, ptr noundef %sdata, ptr noundef %conf, ptr noundef %sta, i32 noundef %iv32, ptr noundef %phase1key) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tobool.not = icmp eq ptr %sta, null
  %sta1 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48
  %spec.select = select i1 %tobool.not, ptr null, ptr %sta1
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %0 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.i = icmp eq i32 %1, 4
  br i1 %cmp.i, label %if.then.i, label %entry.get_bss_sdata.exit_crit_edge

entry.get_bss_sdata.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_bss_sdata.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bss.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 49
  %2 = ptrtoint ptr %bss.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bss.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -2552
  br label %get_bss_sdata.exit

get_bss_sdata.exit:                               ; preds = %if.then.i, %entry.get_bss_sdata.exit_crit_edge
  %sdata.addr.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %sdata, %entry.get_bss_sdata.exit_crit_edge ]
  %flags = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.addr.0.i, i32 0, i32 8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.rhs, label %if.end52

land.rhs:                                         ; preds = %get_bss_sdata.exit
  %.b76 = load i1, ptr @drv_update_tkip_key.__already_done, align 1
  br i1 %.b76, label %land.rhs.cleanup_crit_edge, label %cleanup.critedge, !prof !38

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end52:                                         ; preds = %get_bss_sdata.exit
  tail call fastcc void @trace_drv_update_tkip_key(ptr noundef %local, ptr noundef %sdata.addr.0.i, ptr noundef %conf, ptr noundef %spec.select, i32 noundef %iv32)
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %update_tkip_key = getelementptr inbounds %struct.ieee80211_ops, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %update_tkip_key to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %update_tkip_key, align 4
  %tobool53.not = icmp eq ptr %9, null
  br i1 %tobool53.not, label %if.end52.if.end57_crit_edge, label %if.then54

if.end52.if.end57_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.addr.0.i, i32 0, i32 59
  tail call void %9(ptr noundef %local, ptr noundef %vif, ptr noundef %conf, ptr noundef %spec.select, i32 noundef %iv32, ptr noundef %phase1key) #9
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end52.if.end57_crit_edge
  tail call fastcc void @trace_drv_return_void(ptr noundef %local)
  br label %cleanup

cleanup.critedge:                                 ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @drv_update_tkip_key.__already_done, align 1
  %dev.c = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.addr.0.i, i32 0, i32 6
  %10 = ptrtoint ptr %dev.c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.c, align 8
  %tobool21.not.c = icmp eq ptr %11, null
  %name23.c = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.addr.0.i, i32 0, i32 10
  %cond.c = select i1 %tobool21.not.c, ptr %name23.c, ptr %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 269, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %cond.c, i32 noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %if.end57, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wep_decrypt_data(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_update_tkip_key(ptr noundef %local, ptr noundef %sdata, ptr noundef %conf, ptr noundef %sta, i32 noundef %iv32) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_update_tkip_key, i32 0, i32 1), ptr blockaddress(@trace_drv_update_tkip_key, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !39

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !27) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !38

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !27) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !40
  %call42 = tail call i32 @__traceiter_drv_update_tkip_key(ptr noundef null, ptr noundef %local, ptr noundef %sdata, ptr noundef %conf, ptr noundef %sta, i32 noundef %iv32) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !41
  %13 = tail call i32 @llvm.read_register.i32(metadata !27) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !27) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !38

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !27) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_update_tkip_key, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_update_tkip_key, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_drv_update_tkip_key.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_drv_update_tkip_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.4) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !43
  %31 = tail call i32 @llvm.read_register.i32(metadata !27) #9
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
define internal fastcc void @trace_drv_return_void(ptr noundef %local) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), ptr blockaddress(@trace_drv_return_void, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !39

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !27) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !38

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !27) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !44
  %call42 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %local) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !45
  %13 = tail call i32 @llvm.read_register.i32(metadata !27) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !27) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !38

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !27) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !42
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 205, ptr noundef nonnull @.str.4) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !43
  %31 = tail call i32 @llvm.read_register.i32(metadata !27) #9
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
declare dso_local i32 @__traceiter_drv_update_tkip_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !26}
!llvm.named.register.sp = !{!27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__ksymtab_ieee80211_tkip_add_iv, !1, !"__ksymtab_ieee80211_tkip_add_iv", i1 false, i1 false}
!1 = !{!"../net/mac80211/tkip.c", i32 150, i32 1}
!2 = !{ptr @__ksymtab_ieee80211_get_tkip_p1k_iv, !3, !"__ksymtab_ieee80211_get_tkip_p1k_iv", i1 false, i1 false}
!3 = !{!"../net/mac80211/tkip.c", i32 183, i32 1}
!4 = !{ptr @__ksymtab_ieee80211_get_tkip_rx_p1k, !5, !"__ksymtab_ieee80211_get_tkip_rx_p1k", i1 false, i1 false}
!5 = !{!"../net/mac80211/tkip.c", i32 194, i32 1}
!6 = !{ptr @__ksymtab_ieee80211_get_tkip_p2k, !7, !"__ksymtab_ieee80211_get_tkip_p2k", i1 false, i1 false}
!7 = !{!"../net/mac80211/tkip.c", i32 213, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/mac80211/tkip.c", i32 158, i32 2}
!10 = !{ptr @tkip_sbox, !11, !"tkip_sbox", i1 false, i1 false}
!11 = !{!"../net/mac80211/tkip.c", i32 26, i32 18}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../net/mac80211/driver-ops.h", i32 269, i32 7}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../net/mac80211/trace.h", i32 619, i32 1}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../net/mac80211/trace.h", i32 202, i32 1}
!26 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!27 = !{!"sp"}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2148700829, i64 2148700834, i64 2148700847, i64 2148700891, i64 2148700925, i64 2148700946}
!40 = !{i64 2159120189}
!41 = !{i64 2159120448}
!42 = !{i64 2149605957}
!43 = !{i64 2149606993}
!44 = !{i64 2158710696}
!45 = !{i64 2158710899}
