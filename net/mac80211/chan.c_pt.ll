; ModuleID = '/llk/IR_all_yes/net/mac80211/chan.c_pt.bc'
source_filename = "../net/mac80211/chan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ieee80211_iter_chan_contexts_atomic\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_iter_chan_contexts_atomic\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_iter_chan_contexts_atomic\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_iter_chan_contexts_atomic:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_iter_chan_contexts_atomic\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_iter_chan_contexts_atomic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%struct.atomic_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
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
%struct.ieee80211_chanctx = type { %struct.list_head, %struct.callback_head, %struct.list_head, %struct.list_head, i32, ptr, i32, i8, %struct.ieee80211_chanctx_conf }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_chanctx_conf = type { %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i8, [0 x i8] }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.160, %struct.anon.194, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.122, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
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
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%union.anon.160 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.anon.194 = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.anon.127 = type { i64, i64, i8 }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.148, [17 x i16], %struct.anon.149, %struct.anon.150, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, ptr, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.ieee80211_sta_rx_stats = type { i32, i32, i32, i32, i32, i32, i8, [4 x i8], i32, %struct.u64_stats_sync, i64, [17 x i64] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.anon.148 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.149 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.150 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.124 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ieee80211_vif_chanctx_switch = type { ptr, ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/mac80211/chan.c\00", [44 x i8] zeroinitializer }, align 32
@ieee80211_is_radar_required.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@ieee80211_recalc_chanctx_chantype.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_recalc_chanctx_chantype.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_recalc_chanctx_chantype.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_recalc_chanctx_chantype.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_recalc_smps_chanctx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_recalc_smps_chanctx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_recalc_smps_chanctx.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid SMPS mode %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ieee80211_recalc_smps_chanctx.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ieee80211_vif_use_reserved_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 1779, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"depending in-place reservation failed (err=%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ieee80211_vif_use_reserved_context\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ieee80211_vif_use_reserved_context._entry_ptr = internal global ptr @ieee80211_vif_use_reserved_context._entry, section ".printk_index", align 4
@ieee80211_vif_change_bandwidth.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@ieee80211_vif_vlan_copy_chanctx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_iter_chan_contexts_atomic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_ieee80211_iter_chan_contexts_atomic = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_iter_chan_contexts_atomic = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_iter_chan_contexts_atomic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_iter_chan_contexts_atomic to i32), ptr @__kstrtab_ieee80211_iter_chan_contexts_atomic, ptr @__kstrtabns_ieee80211_iter_chan_contexts_atomic }, section "___ksymtab_gpl+ieee80211_iter_chan_contexts_atomic", align 4
@ieee80211_get_chanctx_max_required_bw.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_get_chanctx_max_required_bw.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_get_chanctx_max_required_bw.__warned.13 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_get_max_required_bw.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_chan_bw_change.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/mac80211/driver-ops.h\00", [38 x i8] zeroinitializer }, align 32
@drv_change_chanctx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_change_chanctx = external dso_local global %struct.tracepoint, align 4
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/mac80211/trace.h\00", [43 x i8] zeroinitializer }, align 32
@trace_drv_change_chanctx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@trace_drv_return_void.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__ieee80211_vif_copy_chanctx_to_vlans.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_free_chanctx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_remove_chanctx = external dso_local global %struct.tracepoint, align 4
@trace_drv_remove_chanctx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_vif_get_chanctx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_drv_add_chanctx = external dso_local global %struct.tracepoint, align 4
@trace_drv_add_chanctx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_drv_return_int = external dso_local global %struct.tracepoint, align 4
@trace_drv_return_int.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__ieee80211_vif_release_channel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_assign_vif_chanctx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@drv_unassign_vif_chanctx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@drv_unassign_vif_chanctx.__already_done.21 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_unassign_vif_chanctx = external dso_local global %struct.tracepoint, align 4
@trace_drv_unassign_vif_chanctx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@drv_assign_vif_chanctx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_assign_vif_chanctx.__already_done.22 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_assign_vif_chanctx = external dso_local global %struct.tracepoint, align 4
@trace_drv_assign_vif_chanctx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_chanctx_radar_required.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_vif_use_reserved_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str, i32 1431, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"channel context reservation cannot be finalized because some interfaces aren't switching\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ieee80211_vif_use_reserved_switch\00", [62 x i8] zeroinitializer }, align 32
@ieee80211_vif_use_reserved_switch._entry_ptr = internal global ptr @ieee80211_vif_use_reserved_switch._entry, section ".printk_index", align 4
@.str.25 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: failed to finalize (re-)assign reservation (err=%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.26 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 7, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 10]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.30 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.31 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.32 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.33 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 504, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 507, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 850, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 872, i32 10 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1777, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1812, i32 9 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 908, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [24 x i8] c"../net/mac80211/trace.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 1551, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 108, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 695, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 723, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [29 x i8] c"../net/mac80211/driver-ops.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 945, i32 7 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1430, i32 5 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [23 x i8] c"../net/mac80211/chan.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1581, i32 5 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab_ieee80211_iter_chan_contexts_atomic, ptr @ieee80211_vif_use_reserved_context._entry, ptr @ieee80211_vif_use_reserved_context._entry_ptr, ptr @ieee80211_vif_use_reserved_switch._entry, ptr @ieee80211_vif_use_reserved_switch._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_vif_use_reserved_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_vif_use_reserved_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_chanctx_refcount(ptr noundef %local, ptr noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 89, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !123

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 21, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %assigned_vifs.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.end.i
  %num.0.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %.pn.in.i = phi ptr [ %assigned_vifs.i, %if.end.i ], [ %.pn.i, %for.cond.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp26.not.i = icmp eq ptr %.pn.i, %assigned_vifs.i
  %inc.i = add i32 %num.0.i, 1
  br i1 %cmp26.not.i, label %ieee80211_chanctx_num_assigned.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

ieee80211_chanctx_num_assigned.exit:              ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i4 = icmp eq i32 %2, 0
  br i1 %tobool.not.i4, label %ieee80211_chanctx_num_assigned.exit.if.end.i10_crit_edge, label %land.rhs.i8

ieee80211_chanctx_num_assigned.exit.if.end.i10_crit_edge: ; preds = %ieee80211_chanctx_num_assigned.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i10

land.rhs.i8:                                      ; preds = %ieee80211_chanctx_num_assigned.exit
  %dep_map.i5 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 89, i32 5
  %call.i.i6 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i5, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i6)
  %cmp.not.i7 = icmp eq i32 %call.i.i6, 0
  br i1 %cmp.not.i7, label %do.end.i9, label %land.rhs.i8.if.end.i10_crit_edge, !prof !123

land.rhs.i8.if.end.i10_crit_edge:                 ; preds = %land.rhs.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i10

do.end.i9:                                        ; preds = %land.rhs.i8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 35, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i10

if.end.i10:                                       ; preds = %do.end.i9, %land.rhs.i8.if.end.i10_crit_edge, %ieee80211_chanctx_num_assigned.exit.if.end.i10_crit_edge
  %reserved_vifs.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 3
  br label %for.cond.i16

for.cond.i16:                                     ; preds = %for.cond.i16.for.cond.i16_crit_edge, %if.end.i10
  %num.0.i11 = phi i32 [ 0, %if.end.i10 ], [ %inc.i15, %for.cond.i16.for.cond.i16_crit_edge ]
  %.pn.in.i12 = phi ptr [ %reserved_vifs.i, %if.end.i10 ], [ %.pn.i13, %for.cond.i16.for.cond.i16_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i12 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i13 = load ptr, ptr %.pn.in.i12, align 4
  %cmp26.not.i14 = icmp eq ptr %.pn.i13, %reserved_vifs.i
  %inc.i15 = add i32 %num.0.i11, 1
  br i1 %cmp26.not.i14, label %ieee80211_chanctx_num_reserved.exit, label %for.cond.i16.for.cond.i16_crit_edge

for.cond.i16.for.cond.i16_crit_edge:              ; preds = %for.cond.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i16

ieee80211_chanctx_num_reserved.exit:              ; preds = %for.cond.i16
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %num.0.i11, %num.0.i
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_recalc_chanctx_min_def(ptr noundef %local, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_ieee80211_recalc_chanctx_min_def(ptr noundef %local, ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @ieee80211_chan_bw_change(ptr noundef %local, ptr noundef %ctx, i1 noundef zeroext true)
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 908) #8
  tail call fastcc void @trace_drv_change_chanctx(ptr noundef %local, ptr noundef %ctx, i32 noundef %call) #8
  %ops.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %change_chanctx.i = getelementptr inbounds %struct.ieee80211_ops, ptr %1, i32 0, i32 74
  %2 = ptrtoint ptr %change_chanctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %change_chanctx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.drv_change_chanctx.exit_crit_edge, label %if.then.i

if.end.drv_change_chanctx.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %drv_change_chanctx.exit

if.then.i:                                        ; preds = %if.end
  %driver_present.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 7
  %4 = ptrtoint ptr %driver_present.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %driver_present.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not.i = icmp eq i8 %5, 0
  br i1 %tobool3.not.i, label %land.rhs.i, label %if.then.i.if.end35.i_crit_edge

if.then.i.if.end35.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b55.i = load i1, ptr @drv_change_chanctx.__already_done, align 1
  br i1 %.b55.i, label %land.rhs.i.if.end35.i_crit_edge, label %if.then12.i, !prof !125

land.rhs.i.if.end35.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.then12.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @drv_change_chanctx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 912, i32 noundef 9, ptr noundef null) #8
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then12.i, %land.rhs.i.if.end35.i_crit_edge, %if.then.i.if.end35.i_crit_edge
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %change_chanctx44.i = getelementptr inbounds %struct.ieee80211_ops, ptr %7, i32 0, i32 74
  %8 = ptrtoint ptr %change_chanctx44.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %change_chanctx44.i, align 4
  %conf.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 8
  tail call void %9(ptr noundef %local, ptr noundef %conf.i, i32 noundef %call) #8
  br label %drv_change_chanctx.exit

drv_change_chanctx.exit:                          ; preds = %if.end35.i, %if.end.drv_change_chanctx.exit_crit_edge
  tail call fastcc void @trace_drv_return_void(ptr noundef %local) #8
  tail call fastcc void @ieee80211_chan_bw_change(ptr noundef %local, ptr noundef %ctx, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %drv_change_chanctx.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ieee80211_recalc_chanctx_min_def(ptr noundef %local, ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  %min_def = alloca %struct.cfg80211_chan_def, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %min_def) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 89, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !123

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 318, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %conf = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 8
  %width = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 8, i32 0, i32 1
  %1 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %width, align 4
  %.off = add i32 %2, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %.off)
  %switch = icmp ult i32 %.off, 7
  br i1 %switch, label %if.end.if.then57_crit_edge, label %lor.lhs.false54

if.end.if.then57_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

lor.lhs.false54:                                  ; preds = %if.end
  %radar_enabled = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 8, i32 4
  %3 = ptrtoint ptr %radar_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %radar_enabled, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool56.not = icmp eq i8 %4, 0
  br i1 %tobool56.not, label %if.end62, label %lor.lhs.false54.if.then57_crit_edge

lor.lhs.false54.if.then57_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

if.then57:                                        ; preds = %lor.lhs.false54.if.then57_crit_edge, %if.end.if.then57_crit_edge
  %min_def59 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 8, i32 1
  %5 = call ptr @memcpy(ptr %min_def59, ptr %conf, i32 28)
  br label %cleanup

if.end62:                                         ; preds = %lor.lhs.false54
  %6 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !126
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %if.end62.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end62.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end62
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end62.rcu_read_lock.exit.i_crit_edge
  %call.i97 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool.not.i = icmp eq i32 %call.i97, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b158.i = load i1, ptr @ieee80211_get_chanctx_max_required_bw.__warned, align 1
  br i1 %.b158.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_get_chanctx_max_required_bw.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 254, ptr noundef nonnull @.str.1) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %interfaces.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 62
  %10 = ptrtoint ptr %interfaces.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %sdata.0168.i = load volatile ptr, ptr %interfaces.i, align 8
  %cmp.not169.i = icmp eq ptr %sdata.0168.i, %interfaces.i
  br i1 %cmp.not169.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %sdata.0171.i = phi ptr [ %sdata.0.i, %cleanup.i.for.body.i_crit_edge ], [ %sdata.0168.i, %do.end.i.for.body.i_crit_edge ]
  %max_bw.0170.i = phi i32 [ %max_bw.1.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %do.end.i.for.body.i_crit_edge ]
  %vif10.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0171.i, i32 0, i32 59
  %state.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0171.i, i32 0, i32 9
  %11 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end13.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end13.i:                                       ; preds = %for.body.i
  %chanctx_conf.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0171.i, i32 0, i32 59, i32 9
  %13 = ptrtoint ptr %chanctx_conf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %chanctx_conf.i, align 4
  %cmp20.not.i = icmp eq ptr %14, %conf
  br i1 %cmp20.not.i, label %if.end22.i, label %if.end13.i.cleanup.i_crit_edge

if.end13.i.cleanup.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end22.i:                                       ; preds = %if.end13.i
  %15 = ptrtoint ptr %vif10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vif10.i, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %if.end22.i.sw.epilog.i_crit_edge [
    i32 3, label %if.end22.i.sw.bb.i_crit_edge
    i32 4, label %if.end22.i.sw.bb.i_crit_edge106
    i32 2, label %sw.bb24.i
    i32 10, label %if.end22.i.cleanup.i_crit_edge
    i32 12, label %if.end22.i.cleanup.i_crit_edge107
    i32 1, label %if.end22.i.sw.bb30.i_crit_edge
    i32 7, label %if.end22.i.sw.bb30.i_crit_edge108
    i32 11, label %if.end22.i.sw.bb30.i_crit_edge109
    i32 5, label %if.end22.i.land.end.i_crit_edge
    i32 0, label %if.end22.i.land.end.i_crit_edge110
    i32 13, label %if.end22.i.land.end.i_crit_edge111
    i32 6, label %if.end22.i.land.end.i_crit_edge112
    i32 8, label %if.end22.i.land.end.i_crit_edge113
    i32 9, label %if.end22.i.land.end.i_crit_edge114
  ]

if.end22.i.land.end.i_crit_edge114:               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i

if.end22.i.land.end.i_crit_edge113:               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i

if.end22.i.land.end.i_crit_edge112:               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i

if.end22.i.land.end.i_crit_edge111:               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i

if.end22.i.land.end.i_crit_edge110:               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i

if.end22.i.land.end.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i

if.end22.i.sw.bb30.i_crit_edge109:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30.i

if.end22.i.sw.bb30.i_crit_edge108:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30.i

if.end22.i.sw.bb30.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30.i

if.end22.i.cleanup.i_crit_edge107:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end22.i.cleanup.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end22.i.sw.bb.i_crit_edge106:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end22.i.sw.bb.i_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end22.i.sw.epilog.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end22.i.sw.bb.i_crit_edge, %if.end22.i.sw.bb.i_crit_edge106
  %call23.i = tail call fastcc i32 @ieee80211_get_max_required_bw(ptr noundef %sdata.0171.i) #8
  br label %sw.epilog.i

sw.bb24.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %width25.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0171.i, i32 0, i32 59, i32 1, i32 32, i32 1
  %18 = ptrtoint ptr %width25.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width25.i, align 4
  %call26.i = tail call fastcc i32 @ieee80211_get_max_required_bw(ptr noundef %sdata.0171.i) #8
  %20 = tail call i32 @llvm.umax.i32(i32 %19, i32 %call26.i) #8
  br label %sw.epilog.i

sw.bb30.i:                                        ; preds = %if.end22.i.sw.bb30.i_crit_edge, %if.end22.i.sw.bb30.i_crit_edge108, %if.end22.i.sw.bb30.i_crit_edge109
  %width33.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0171.i, i32 0, i32 59, i32 1, i32 32, i32 1
  %21 = ptrtoint ptr %width33.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %width33.i, align 4
  br label %sw.epilog.i

land.end.i:                                       ; preds = %if.end22.i.land.end.i_crit_edge, %if.end22.i.land.end.i_crit_edge110, %if.end22.i.land.end.i_crit_edge111, %if.end22.i.land.end.i_crit_edge112, %if.end22.i.land.end.i_crit_edge113, %if.end22.i.land.end.i_crit_edge114
  %.b154157.i = load i1, ptr @ieee80211_get_chanctx_max_required_bw.__already_done, align 1
  br i1 %.b154157.i, label %land.end.i.sw.epilog.i_crit_edge, label %if.then40.i, !prof !125

land.end.i.sw.epilog.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then40.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_get_chanctx_max_required_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 292, i32 noundef 9, ptr noundef null) #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then40.i, %land.end.i.sw.epilog.i_crit_edge, %sw.bb30.i, %sw.bb24.i, %sw.bb.i, %if.end22.i.sw.epilog.i_crit_edge
  %width.0.i = phi i32 [ 0, %if.end22.i.sw.epilog.i_crit_edge ], [ %22, %sw.bb30.i ], [ %20, %sw.bb24.i ], [ %call23.i, %sw.bb.i ], [ 0, %if.then40.i ], [ 0, %land.end.i.sw.epilog.i_crit_edge ]
  %23 = tail call i32 @llvm.umax.i32(i32 %max_bw.0170.i, i32 %width.0.i) #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %sw.epilog.i, %if.end22.i.cleanup.i_crit_edge, %if.end22.i.cleanup.i_crit_edge107, %if.end13.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %max_bw.1.i = phi i32 [ %23, %sw.epilog.i ], [ %max_bw.0170.i, %for.body.i.cleanup.i_crit_edge ], [ %max_bw.0170.i, %if.end13.i.cleanup.i_crit_edge ], [ %max_bw.0170.i, %if.end22.i.cleanup.i_crit_edge ], [ %max_bw.0170.i, %if.end22.i.cleanup.i_crit_edge107 ]
  %24 = ptrtoint ptr %sdata.0171.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %sdata.0.i = load volatile ptr, ptr %sdata.0171.i, align 8
  %cmp.not.i = icmp eq ptr %sdata.0.i, %interfaces.i
  br i1 %cmp.not.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %max_bw.0.lcssa.i = phi i32 [ 0, %do.end.i.for.end.i_crit_edge ], [ %max_bw.1.i, %cleanup.i.for.end.i_crit_edge ]
  %monitor_sdata.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 147
  %25 = ptrtoint ptr %monitor_sdata.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %monitor_sdata.i, align 4
  %call95.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %tobool96.not.i = icmp eq i32 %call95.i, 0
  br i1 %tobool96.not.i, label %land.lhs.true97.i, label %for.end.i.do.end105.i_crit_edge

for.end.i.do.end105.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end105.i

land.lhs.true97.i:                                ; preds = %for.end.i
  %call98.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %tobool99.not.i = icmp eq i32 %call98.i, 0
  br i1 %tobool99.not.i, label %land.lhs.true97.i.do.end105.i_crit_edge, label %land.lhs.true100.i

land.lhs.true97.i.do.end105.i_crit_edge:          ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end105.i

land.lhs.true100.i:                               ; preds = %land.lhs.true97.i
  %.b155156.i = load i1, ptr @ieee80211_get_chanctx_max_required_bw.__warned.13, align 1
  br i1 %.b155156.i, label %land.lhs.true100.i.do.end105.i_crit_edge, label %if.then102.i

land.lhs.true100.i.do.end105.i_crit_edge:         ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end105.i

if.then102.i:                                     ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_get_chanctx_max_required_bw.__warned.13, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 298, ptr noundef nonnull @.str.7) #8
  br label %do.end105.i

do.end105.i:                                      ; preds = %if.then102.i, %land.lhs.true100.i.do.end105.i_crit_edge, %land.lhs.true97.i.do.end105.i_crit_edge, %for.end.i.do.end105.i_crit_edge
  %tobool107.not.i = icmp eq ptr %26, null
  br i1 %tobool107.not.i, label %do.end105.i.if.end125.i_crit_edge, label %land.lhs.true108.i

do.end105.i.if.end125.i_crit_edge:                ; preds = %do.end105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125.i

land.lhs.true108.i:                               ; preds = %do.end105.i
  %chanctx_conf114.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %26, i32 0, i32 59, i32 9
  %27 = ptrtoint ptr %chanctx_conf114.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %chanctx_conf114.i, align 4
  %cmp116.i = icmp eq ptr %28, %conf
  br i1 %cmp116.i, label %if.then117.i, label %land.lhs.true108.i.if.end125.i_crit_edge

land.lhs.true108.i.if.end125.i_crit_edge:         ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125.i

if.then117.i:                                     ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %width, align 4
  %31 = tail call i32 @llvm.umax.i32(i32 %max_bw.0.lcssa.i, i32 %30) #8
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.then117.i, %land.lhs.true108.i.if.end125.i_crit_edge, %do.end105.i.if.end125.i_crit_edge
  %max_bw.2.i = phi i32 [ %31, %if.then117.i ], [ %max_bw.0.lcssa.i, %land.lhs.true108.i.if.end125.i_crit_edge ], [ %max_bw.0.lcssa.i, %do.end105.i.if.end125.i_crit_edge ]
  %call.i159.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i159.i, label %if.end125.i.ieee80211_get_chanctx_max_required_bw.exit_crit_edge, label %land.lhs.true.i162.i

if.end125.i.ieee80211_get_chanctx_max_required_bw.exit_crit_edge: ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_get_chanctx_max_required_bw.exit

land.lhs.true.i162.i:                             ; preds = %if.end125.i
  %call1.i160.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i160.i)
  %tobool.not.i161.i = icmp eq i32 %call1.i160.i, 0
  br i1 %tobool.not.i161.i, label %land.lhs.true.i162.i.ieee80211_get_chanctx_max_required_bw.exit_crit_edge, label %land.lhs.true2.i164.i

land.lhs.true.i162.i.ieee80211_get_chanctx_max_required_bw.exit_crit_edge: ; preds = %land.lhs.true.i162.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_get_chanctx_max_required_bw.exit

land.lhs.true2.i164.i:                            ; preds = %land.lhs.true.i162.i
  %.b4.i163.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i163.i, label %land.lhs.true2.i164.i.ieee80211_get_chanctx_max_required_bw.exit_crit_edge, label %if.then.i165.i

land.lhs.true2.i164.i.ieee80211_get_chanctx_max_required_bw.exit_crit_edge: ; preds = %land.lhs.true2.i164.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_get_chanctx_max_required_bw.exit

if.then.i165.i:                                   ; preds = %land.lhs.true2.i164.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #8
  br label %ieee80211_get_chanctx_max_required_bw.exit

ieee80211_get_chanctx_max_required_bw.exit:       ; preds = %if.then.i165.i, %land.lhs.true2.i164.i.ieee80211_get_chanctx_max_required_bw.exit_crit_edge, %land.lhs.true.i162.i.ieee80211_get_chanctx_max_required_bw.exit_crit_edge, %if.end125.i.ieee80211_get_chanctx_max_required_bw.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !127
  %32 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i.i166.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i166.i to ptr
  %preempt_count.i.i.i.i167.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i167.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i167.i, align 4
  %sub.i.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i167.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %36 = call ptr @memcpy(ptr %min_def, ptr %conf, i32 28)
  %width67 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %min_def, i32 0, i32 1
  %37 = ptrtoint ptr %width67 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %width67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %max_bw.2.i)
  %cmp68100 = icmp ugt i32 %38, %max_bw.2.i
  br i1 %cmp68100, label %ieee80211_get_chanctx_max_required_bw.exit.while.body_crit_edge, label %ieee80211_get_chanctx_max_required_bw.exit.while.end_crit_edge

ieee80211_get_chanctx_max_required_bw.exit.while.end_crit_edge: ; preds = %ieee80211_get_chanctx_max_required_bw.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

ieee80211_get_chanctx_max_required_bw.exit.while.body_crit_edge: ; preds = %ieee80211_get_chanctx_max_required_bw.exit
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %ieee80211_get_chanctx_max_required_bw.exit.while.body_crit_edge
  %call69 = call i32 @ieee80211_chandef_downgrade(ptr noundef nonnull %min_def) #8
  %39 = ptrtoint ptr %width67 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %width67, align 4
  %cmp68 = icmp ugt i32 %40, %max_bw.2.i
  br i1 %cmp68, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %ieee80211_get_chanctx_max_required_bw.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %38, %ieee80211_get_chanctx_max_required_bw.exit.while.end_crit_edge ], [ %40, %while.body.while.end_crit_edge ]
  %min_def71 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 8, i32 1
  %41 = ptrtoint ptr %min_def71 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %min_def71, align 4
  %43 = ptrtoint ptr %min_def to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %min_def, align 4
  %cmp.i = icmp eq ptr %42, %44
  br i1 %cmp.i, label %land.lhs.true.i98, label %while.end.if.end74_crit_edge

while.end.if.end74_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

land.lhs.true.i98:                                ; preds = %while.end
  %width.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 8, i32 1, i32 1
  %45 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %.lcssa)
  %cmp3.i = icmp eq i32 %46, %.lcssa
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true.i98.if.end74_crit_edge

land.lhs.true.i98.if.end74_crit_edge:             ; preds = %land.lhs.true.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i98
  %center_freq1.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 8, i32 1, i32 2
  %47 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %center_freq1.i, align 4
  %center_freq15.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %min_def, i32 0, i32 2
  %49 = ptrtoint ptr %center_freq15.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %center_freq15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp6.i = icmp eq i32 %48, %50
  br i1 %cmp6.i, label %land.lhs.true7.i, label %land.lhs.true4.i.if.end74_crit_edge

land.lhs.true4.i.if.end74_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %freq1_offset.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 8, i32 1, i32 5
  %51 = ptrtoint ptr %freq1_offset.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %freq1_offset.i, align 4
  %freq1_offset8.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %min_def, i32 0, i32 5
  %53 = ptrtoint ptr %freq1_offset8.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %freq1_offset8.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %54)
  %cmp10.i = icmp eq i16 %52, %54
  br i1 %cmp10.i, label %cfg80211_chandef_identical.exit, label %land.lhs.true7.i.if.end74_crit_edge

land.lhs.true7.i.if.end74_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

cfg80211_chandef_identical.exit:                  ; preds = %land.lhs.true7.i
  %center_freq2.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 8, i32 1, i32 3
  %55 = ptrtoint ptr %center_freq2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %center_freq2.i, align 4
  %center_freq212.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %min_def, i32 0, i32 3
  %57 = ptrtoint ptr %center_freq212.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %center_freq212.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp13.i = icmp eq i32 %56, %58
  br i1 %cmp13.i, label %cfg80211_chandef_identical.exit.cleanup_crit_edge, label %cfg80211_chandef_identical.exit.if.end74_crit_edge

cfg80211_chandef_identical.exit.if.end74_crit_edge: ; preds = %cfg80211_chandef_identical.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

cfg80211_chandef_identical.exit.cleanup_crit_edge: ; preds = %cfg80211_chandef_identical.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end74:                                         ; preds = %cfg80211_chandef_identical.exit.if.end74_crit_edge, %land.lhs.true7.i.if.end74_crit_edge, %land.lhs.true4.i.if.end74_crit_edge, %land.lhs.true.i98.if.end74_crit_edge, %while.end.if.end74_crit_edge
  %59 = call ptr @memcpy(ptr %min_def71, ptr %min_def, i32 28)
  %driver_present = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 7
  %60 = ptrtoint ptr %driver_present to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %driver_present, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool77.not = icmp eq i8 %61, 0
  %. = select i1 %tobool77.not, i32 0, i32 16
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %cfg80211_chandef_identical.exit.cleanup_crit_edge, %if.then57
  %retval.0 = phi i32 [ 0, %if.then57 ], [ 0, %cfg80211_chandef_identical.exit.cleanup_crit_edge ], [ %., %if.end74 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %min_def) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_chan_bw_change(ptr noundef %local, ptr noundef readonly %ctx, i1 noundef zeroext %narrowed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 1
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %conf = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 8
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %arrayidx = getelementptr %struct.wiphy, ptr %1, i32 0, i32 53, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !126
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b61 = load i1, ptr @ieee80211_chan_bw_change.__warned, align 1
  br i1 %.b61, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_chan_bw_change.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 363, ptr noundef nonnull @.str.1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %sta_list = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 49
  %12 = ptrtoint ptr %sta_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %sta.071 = load volatile ptr, ptr %sta_list, align 4
  %cmp.not72 = icmp eq ptr %sta.071, %sta_list
  br i1 %cmp.not72, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %do.end.for.body_crit_edge
  %sta.073 = phi ptr [ %sta.0, %cleanup.for.body_crit_edge ], [ %sta.071, %do.end.for.body_crit_edge ]
  %sdata = getelementptr inbounds %struct.sta_info, ptr %sta.073, i32 0, i32 6
  %13 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdata, align 4
  %state.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.body.cleanup_crit_edge, label %if.end12

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %for.body
  %chanctx_conf = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 59, i32 9
  %17 = ptrtoint ptr %chanctx_conf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %chanctx_conf, align 4
  %cmp20.not = icmp eq ptr %18, %conf
  br i1 %cmp20.not, label %if.end22, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  %call23 = tail call i32 @ieee80211_sta_cur_vht_bw(ptr noundef %sta.073) #8
  %bandwidth = getelementptr inbounds %struct.sta_info, ptr %sta.073, i32 0, i32 48, i32 14
  %19 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bandwidth, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call23, i32 %20)
  %cmp25 = icmp eq i32 %call23, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %call23, i32 %20)
  %cmp30 = icmp ult i32 %call23, %20
  %cmp32 = xor i1 %cmp30, %narrowed
  %or.cond = or i1 %cmp25, %cmp32
  br i1 %or.cond, label %if.end22.cleanup_crit_edge, label %if.end35

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call23, ptr %bandwidth, align 8
  tail call void @rate_control_rate_update(ptr noundef %local, ptr noundef %7, ptr noundef %sta.073, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end22.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %22 = ptrtoint ptr %sta.073 to i32
  call void @__asan_load4_noabort(i32 %22)
  %sta.0 = load volatile ptr, ptr %sta.073, align 4
  %cmp.not = icmp eq ptr %sta.0, %sta_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i62 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i62, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i65

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i65:                                ; preds = %for.end
  %call1.i63 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool.not.i64, label %land.lhs.true.i65.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i67

land.lhs.true.i65.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i67:                               ; preds = %land.lhs.true.i65
  %.b4.i66 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i66, label %land.lhs.true2.i67.rcu_read_unlock.exit_crit_edge, label %if.then.i68

land.lhs.true2.i67.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i68:                                      ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i68, %land.lhs.true2.i67.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i65.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !127
  %23 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i.i69 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i69 to ptr
  %preempt_count.i.i.i.i70 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i70, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i70, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ieee80211_is_radar_required(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66, i32 5
  %call.i60 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp.not = icmp eq i32 %call.i60, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !123

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 504, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !126
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call25 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end34_crit_edge

rcu_read_lock.exit.do.end34_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true.do.end34_crit_edge, label %land.lhs.true29

land.lhs.true.do.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

land.lhs.true29:                                  ; preds = %land.lhs.true
  %.b59 = load i1, ptr @ieee80211_is_radar_required.__warned, align 1
  br i1 %.b59, label %land.lhs.true29.do.end34_crit_edge, label %if.then31

land.lhs.true29.do.end34_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_is_radar_required.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 507, ptr noundef nonnull @.str.1) #8
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %land.lhs.true29.do.end34_crit_edge, %land.lhs.true.do.end34_crit_edge, %rcu_read_lock.exit.do.end34_crit_edge
  %interfaces = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 62
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end34
  %sdata.0.in = phi ptr [ %interfaces, %do.end34 ], [ %sdata.0, %for.body.for.cond_crit_edge ]
  %5 = ptrtoint ptr %sdata.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %sdata.0 = load volatile ptr, ptr %sdata.0.in, align 8
  %cmp41.not = icmp eq ptr %sdata.0, %interfaces
  br i1 %cmp41.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %radar_required = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0, i32 0, i32 47
  %6 = ptrtoint ptr %radar_required to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %radar_required, align 4, !range !124
  %tobool42.not = icmp eq i8 %7, 0
  br i1 %tobool42.not, label %for.body.for.cond_crit_edge, label %if.then43

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then43:                                        ; preds = %for.body
  %call.i61 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i61, label %if.then43.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i64

if.then43.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i64:                                ; preds = %if.then43
  %call1.i62 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i62)
  %tobool.not.i63 = icmp eq i32 %call1.i62, 0
  br i1 %tobool.not.i63, label %land.lhs.true.i64.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i66

land.lhs.true.i64.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i66:                               ; preds = %land.lhs.true.i64
  %.b4.i65 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i65, label %land.lhs.true2.i66.rcu_read_unlock.exit_crit_edge, label %if.then.i67

land.lhs.true2.i66.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i67:                                      ; preds = %land.lhs.true2.i66
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i67, %land.lhs.true2.i66.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i64.rcu_read_unlock.exit_crit_edge, %if.then43.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !127
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %call.i70 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i70, label %for.end.rcu_read_unlock.exit80_crit_edge, label %land.lhs.true.i73

for.end.rcu_read_unlock.exit80_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit80

land.lhs.true.i73:                                ; preds = %for.end
  %call1.i71 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71)
  %tobool.not.i72 = icmp eq i32 %call1.i71, 0
  br i1 %tobool.not.i72, label %land.lhs.true.i73.rcu_read_unlock.exit80_crit_edge, label %land.lhs.true2.i75

land.lhs.true.i73.rcu_read_unlock.exit80_crit_edge: ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit80

land.lhs.true2.i75:                               ; preds = %land.lhs.true.i73
  %.b4.i74 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i74, label %land.lhs.true2.i75.rcu_read_unlock.exit80_crit_edge, label %if.then.i76

land.lhs.true2.i75.rcu_read_unlock.exit80_crit_edge: ; preds = %land.lhs.true2.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit80

if.then.i76:                                      ; preds = %land.lhs.true2.i75
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #8
  br label %rcu_read_unlock.exit80

rcu_read_unlock.exit80:                           ; preds = %if.then.i76, %land.lhs.true2.i75.rcu_read_unlock.exit80_crit_edge, %land.lhs.true.i73.rcu_read_unlock.exit80_crit_edge, %for.end.rcu_read_unlock.exit80_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !127
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit80, %rcu_read_unlock.exit
  %8 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i.i77 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i77 to ptr
  %preempt_count.i.i.i.i78 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i78, align 4
  %sub.i.i.i79 = add i32 %11, -1
  store volatile i32 %sub.i.i.i79, ptr %preempt_count.i.i.i.i78, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %12 = xor i1 %cmp41.not, true
  ret i1 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_recalc_chanctx_chantype(ptr noundef %local, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conf1 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 89, i32 5
  %call.i284 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i284)
  %cmp.not = icmp eq i32 %call.i284, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !123

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 682, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !126
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call26 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end35_crit_edge

rcu_read_lock.exit.do.end35_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call28 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true.do.end35_crit_edge, label %land.lhs.true30

land.lhs.true.do.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

land.lhs.true30:                                  ; preds = %land.lhs.true
  %.b281 = load i1, ptr @ieee80211_recalc_chanctx_chantype.__warned, align 1
  br i1 %.b281, label %land.lhs.true30.do.end35_crit_edge, label %if.then32

land.lhs.true30.do.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_recalc_chanctx_chantype.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 685, ptr noundef nonnull @.str.1) #8
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %land.lhs.true30.do.end35_crit_edge, %land.lhs.true.do.end35_crit_edge, %rcu_read_lock.exit.do.end35_crit_edge
  %interfaces = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 62
  %5 = ptrtoint ptr %interfaces to i32
  call void @__asan_load4_noabort(i32 %5)
  %sdata.0300 = load volatile ptr, ptr %interfaces, align 8
  %cmp42.not301 = icmp eq ptr %sdata.0300, %interfaces
  br i1 %cmp42.not301, label %do.end35.do.body132_crit_edge, label %do.end35.for.body_crit_edge

do.end35.for.body_crit_edge:                      ; preds = %do.end35
  br label %for.body

do.end35.do.body132_crit_edge:                    ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body132

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end35.for.body_crit_edge
  %sdata.0303 = phi ptr [ %sdata.0, %for.inc.for.body_crit_edge ], [ %sdata.0300, %do.end35.for.body_crit_edge ]
  %compat.0302 = phi ptr [ %compat.2, %for.inc.for.body_crit_edge ], [ null, %do.end35.for.body_crit_edge ]
  %state.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0303, i32 0, i32 9
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.end45

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end45:                                         ; preds = %for.body
  %chanctx_conf = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0303, i32 0, i32 59, i32 9
  %8 = ptrtoint ptr %chanctx_conf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %chanctx_conf, align 4
  %cmp51.not = icmp eq ptr %9, %conf1
  br i1 %cmp51.not, label %if.end53, label %if.end45.for.inc_crit_edge

if.end45.for.inc_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end53:                                         ; preds = %if.end45
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0303, i32 0, i32 59
  %10 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp55 = icmp eq i32 %11, 4
  br i1 %cmp55, label %if.end53.for.inc_crit_edge, label %if.end57

if.end53.for.inc_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end57:                                         ; preds = %if.end53
  %tobool58.not = icmp eq ptr %compat.0302, null
  %chandef = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0303, i32 0, i32 59, i32 1, i32 32
  %spec.select = select i1 %tobool58.not, ptr %chandef, ptr %compat.0302
  %call65 = tail call ptr @cfg80211_chandef_compatible(ptr noundef %chandef, ptr noundef %spec.select) #8
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %land.rhs74, label %if.end57.for.inc_crit_edge

if.end57.for.inc_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.rhs74:                                       ; preds = %if.end57
  %.b275280 = load i1, ptr @ieee80211_recalc_chanctx_chantype.__already_done, align 1
  br i1 %.b275280, label %land.rhs74.do.body132_crit_edge, label %if.then85, !prof !125

land.rhs74.do.body132_crit_edge:                  ; preds = %land.rhs74
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body132

if.then85:                                        ; preds = %land.rhs74
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_recalc_chanctx_chantype.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 699, i32 noundef 9, ptr noundef null) #8
  br label %do.body132

for.inc:                                          ; preds = %if.end57.for.inc_crit_edge, %if.end53.for.inc_crit_edge, %if.end45.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %compat.2 = phi ptr [ %compat.0302, %if.end45.for.inc_crit_edge ], [ %compat.0302, %if.end53.for.inc_crit_edge ], [ %compat.0302, %for.body.for.inc_crit_edge ], [ %call65, %if.end57.for.inc_crit_edge ]
  %12 = ptrtoint ptr %sdata.0303 to i32
  call void @__asan_load4_noabort(i32 %12)
  %sdata.0 = load volatile ptr, ptr %sdata.0303, align 8
  %cmp42.not = icmp eq ptr %sdata.0, %interfaces
  br i1 %cmp42.not, label %for.inc.do.body132_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.body132_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body132

do.body132:                                       ; preds = %for.inc.do.body132_crit_edge, %if.then85, %land.rhs74.do.body132_crit_edge, %do.end35.do.body132_crit_edge
  %compat.3 = phi ptr [ null, %if.then85 ], [ null, %land.rhs74.do.body132_crit_edge ], [ null, %do.end35.do.body132_crit_edge ], [ %compat.2, %for.inc.do.body132_crit_edge ]
  %call133 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %land.lhs.true135, label %do.body132.do.end143_crit_edge

do.body132.do.end143_crit_edge:                   ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end143

land.lhs.true135:                                 ; preds = %do.body132
  %call136 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %land.lhs.true135.do.end143_crit_edge, label %land.lhs.true138

land.lhs.true135.do.end143_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end143

land.lhs.true138:                                 ; preds = %land.lhs.true135
  %.b276279 = load i1, ptr @ieee80211_recalc_chanctx_chantype.__warned.2, align 1
  br i1 %.b276279, label %land.lhs.true138.do.end143_crit_edge, label %if.then140

land.lhs.true138.do.end143_crit_edge:             ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end143

if.then140:                                       ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_recalc_chanctx_chantype.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 704, ptr noundef nonnull @.str.1) #8
  br label %do.end143

do.end143:                                        ; preds = %if.then140, %land.lhs.true138.do.end143_crit_edge, %land.lhs.true135.do.end143_crit_edge, %do.body132.do.end143_crit_edge
  %sta_list = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 49
  %13 = ptrtoint ptr %sta_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %sta.0304 = load volatile ptr, ptr %sta_list, align 4
  %cmp155.not305 = icmp eq ptr %sta.0304, %sta_list
  br i1 %cmp155.not305, label %do.end143.for.end238_crit_edge, label %do.end143.for.body156_crit_edge

do.end143.for.body156_crit_edge:                  ; preds = %do.end143
  br label %for.body156

do.end143.for.end238_crit_edge:                   ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end238

for.body156:                                      ; preds = %for.inc228.for.body156_crit_edge, %do.end143.for.body156_crit_edge
  %sta.0307 = phi ptr [ %sta.0, %for.inc228.for.body156_crit_edge ], [ %sta.0304, %do.end143.for.body156_crit_edge ]
  %compat.4306 = phi ptr [ %compat.5, %for.inc228.for.body156_crit_edge ], [ %compat.3, %do.end143.for.body156_crit_edge ]
  %uploaded = getelementptr inbounds %struct.sta_info, ptr %sta.0307, i32 0, i32 22
  %14 = ptrtoint ptr %uploaded to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %uploaded, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool157.not = icmp eq i8 %15, 0
  br i1 %tobool157.not, label %for.body156.for.inc228_crit_edge, label %lor.lhs.false

for.body156.for.inc228_crit_edge:                 ; preds = %for.body156
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc228

lor.lhs.false:                                    ; preds = %for.body156
  %_flags.i = getelementptr inbounds %struct.sta_info, ptr %sta.0307, i32 0, i32 24
  %16 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %_flags.i, align 4
  %18 = and i32 %17, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool159.not = icmp eq i32 %18, 0
  br i1 %tobool159.not, label %lor.lhs.false.for.inc228_crit_edge, label %lor.lhs.false160

lor.lhs.false.for.inc228_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc228

lor.lhs.false160:                                 ; preds = %lor.lhs.false
  %19 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %_flags.i, align 4
  %21 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool162.not = icmp eq i32 %21, 0
  br i1 %tobool162.not, label %lor.lhs.false160.for.inc228_crit_edge, label %lor.lhs.false163

lor.lhs.false160.for.inc228_crit_edge:            ; preds = %lor.lhs.false160
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc228

lor.lhs.false163:                                 ; preds = %lor.lhs.false160
  %tdls_chandef = getelementptr inbounds %struct.sta_info, ptr %sta.0307, i32 0, i32 46
  %22 = ptrtoint ptr %tdls_chandef to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tdls_chandef, align 8
  %tobool164.not = icmp eq ptr %23, null
  br i1 %tobool164.not, label %lor.lhs.false163.for.inc228_crit_edge, label %if.end166

lor.lhs.false163.for.inc228_crit_edge:            ; preds = %lor.lhs.false163
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc228

if.end166:                                        ; preds = %lor.lhs.false163
  %call168 = tail call ptr @cfg80211_chandef_compatible(ptr noundef %tdls_chandef, ptr noundef %compat.4306) #8
  %tobool170.not = icmp eq ptr %call168, null
  br i1 %tobool170.not, label %land.rhs179, label %if.end166.for.inc228_crit_edge

if.end166.for.inc228_crit_edge:                   ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc228

land.rhs179:                                      ; preds = %if.end166
  %.b277278 = load i1, ptr @ieee80211_recalc_chanctx_chantype.__already_done.3, align 1
  br i1 %.b277278, label %land.rhs179.for.end238_crit_edge, label %if.then190, !prof !125

land.rhs179.for.end238_crit_edge:                 ; preds = %land.rhs179
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end238

if.then190:                                       ; preds = %land.rhs179
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_recalc_chanctx_chantype.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 713, i32 noundef 9, ptr noundef null) #8
  br label %for.end238

for.inc228:                                       ; preds = %if.end166.for.inc228_crit_edge, %lor.lhs.false163.for.inc228_crit_edge, %lor.lhs.false160.for.inc228_crit_edge, %lor.lhs.false.for.inc228_crit_edge, %for.body156.for.inc228_crit_edge
  %compat.5 = phi ptr [ %compat.4306, %lor.lhs.false163.for.inc228_crit_edge ], [ %compat.4306, %lor.lhs.false160.for.inc228_crit_edge ], [ %compat.4306, %lor.lhs.false.for.inc228_crit_edge ], [ %compat.4306, %for.body156.for.inc228_crit_edge ], [ %call168, %if.end166.for.inc228_crit_edge ]
  %24 = ptrtoint ptr %sta.0307 to i32
  call void @__asan_load4_noabort(i32 %24)
  %sta.0 = load volatile ptr, ptr %sta.0307, align 4
  %cmp155.not = icmp eq ptr %sta.0, %sta_list
  br i1 %cmp155.not, label %for.inc228.for.end238_crit_edge, label %for.inc228.for.body156_crit_edge

for.inc228.for.body156_crit_edge:                 ; preds = %for.inc228
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body156

for.inc228.for.end238_crit_edge:                  ; preds = %for.inc228
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end238

for.end238:                                       ; preds = %for.inc228.for.end238_crit_edge, %if.then190, %land.rhs179.for.end238_crit_edge, %do.end143.for.end238_crit_edge
  %compat.6 = phi ptr [ null, %if.then190 ], [ null, %land.rhs179.for.end238_crit_edge ], [ %compat.3, %do.end143.for.end238_crit_edge ], [ %compat.5, %for.inc228.for.end238_crit_edge ]
  %call.i289 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i289, label %for.end238.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i292

for.end238.rcu_read_unlock.exit_crit_edge:        ; preds = %for.end238
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i292:                               ; preds = %for.end238
  %call1.i290 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i290)
  %tobool.not.i291 = icmp eq i32 %call1.i290, 0
  br i1 %tobool.not.i291, label %land.lhs.true.i292.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i294

land.lhs.true.i292.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i292
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i294:                              ; preds = %land.lhs.true.i292
  %.b4.i293 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i293, label %land.lhs.true2.i294.rcu_read_unlock.exit_crit_edge, label %if.then.i295

land.lhs.true2.i294.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i294
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i295:                                     ; preds = %land.lhs.true2.i294
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i295, %land.lhs.true2.i294.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i292.rcu_read_unlock.exit_crit_edge, %for.end238.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !127
  %25 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i.i296 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i296 to ptr
  %preempt_count.i.i.i.i297 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i297, align 4
  %sub.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i297, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %tobool239.not = icmp eq ptr %compat.6, null
  br i1 %tobool239.not, label %rcu_read_unlock.exit.cleanup_crit_edge, label %if.end241

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end241:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ieee80211_change_chanctx(ptr noundef %local, ptr noundef %ctx, ptr noundef %ctx, ptr noundef nonnull %compat.6)
  br label %cleanup

cleanup:                                          ; preds = %if.end241, %rcu_read_unlock.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_chandef_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_change_chanctx(ptr noundef %local, ptr noundef %ctx, ptr noundef %old_ctx, ptr noundef %chandef) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %switch = icmp ult i32 %1, 6
  br i1 %switch, label %entry.sw.epilog_crit_edge, label %do.end

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 430, i32 noundef 9, ptr noundef null) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %entry.sw.epilog_crit_edge
  tail call fastcc void @ieee80211_chan_bw_change(ptr noundef %local, ptr noundef %old_ctx, i1 noundef zeroext true)
  %conf = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 8
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conf, align 4
  %4 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef, align 4
  %cmp.i = icmp eq ptr %3, %5
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.epilog.if.end16_crit_edge

sw.epilog.if.end16_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true.i:                                  ; preds = %sw.epilog
  %width.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 8, i32 0, i32 1
  %6 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width.i, align 4
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp3.i = icmp eq i32 %7, %9
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true.i.if.end16_crit_edge

land.lhs.true.i.if.end16_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %center_freq1.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 8, i32 0, i32 2
  %10 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %center_freq1.i, align 4
  %center_freq15.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 2
  %12 = ptrtoint ptr %center_freq15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %center_freq15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp6.i = icmp eq i32 %11, %13
  br i1 %cmp6.i, label %land.lhs.true7.i, label %land.lhs.true4.i.if.end16_crit_edge

land.lhs.true4.i.if.end16_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %freq1_offset.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 8, i32 0, i32 5
  %14 = ptrtoint ptr %freq1_offset.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %freq1_offset.i, align 4
  %freq1_offset8.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 5
  %16 = ptrtoint ptr %freq1_offset8.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %freq1_offset8.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp10.i = icmp eq i16 %15, %17
  br i1 %cmp10.i, label %cfg80211_chandef_identical.exit, label %land.lhs.true7.i.if.end16_crit_edge

land.lhs.true7.i.if.end16_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

cfg80211_chandef_identical.exit:                  ; preds = %land.lhs.true7.i
  %center_freq2.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 8, i32 0, i32 3
  %18 = ptrtoint ptr %center_freq2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %center_freq2.i, align 4
  %center_freq212.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 3
  %20 = ptrtoint ptr %center_freq212.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %center_freq212.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp13.i = icmp eq i32 %19, %21
  br i1 %cmp13.i, label %if.then15, label %cfg80211_chandef_identical.exit.if.end16_crit_edge

cfg80211_chandef_identical.exit.if.end16_crit_edge: ; preds = %cfg80211_chandef_identical.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %cfg80211_chandef_identical.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_recalc_chanctx_min_def(ptr noundef %local, ptr noundef %ctx)
  br label %cleanup

if.end16:                                         ; preds = %cfg80211_chandef_identical.exit.if.end16_crit_edge, %land.lhs.true7.i.if.end16_crit_edge, %land.lhs.true4.i.if.end16_crit_edge, %land.lhs.true.i.if.end16_crit_edge, %sw.epilog.if.end16_crit_edge
  %call20 = tail call ptr @cfg80211_chandef_compatible(ptr noundef %conf, ptr noundef %chandef) #8
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %do.end39, label %if.end16.if.end45_crit_edge, !prof !123

if.end16.if.end45_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

do.end39:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 444, i32 noundef 9, ptr noundef null) #8
  br label %if.end45

if.end45:                                         ; preds = %do.end39, %if.end16.if.end45_crit_edge
  %22 = call ptr @memcpy(ptr %conf, ptr %chandef, i32 28)
  %call55 = tail call fastcc i32 @_ieee80211_recalc_chanctx_min_def(ptr noundef %local, ptr noundef %ctx)
  %or = or i32 %call55, 1
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 908) #8
  tail call fastcc void @trace_drv_change_chanctx(ptr noundef %local, ptr noundef %ctx, i32 noundef %or) #8
  %ops.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %change_chanctx.i = getelementptr inbounds %struct.ieee80211_ops, ptr %24, i32 0, i32 74
  %25 = ptrtoint ptr %change_chanctx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %change_chanctx.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end45.drv_change_chanctx.exit_crit_edge, label %if.then.i

if.end45.drv_change_chanctx.exit_crit_edge:       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %drv_change_chanctx.exit

if.then.i:                                        ; preds = %if.end45
  %driver_present.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 7
  %27 = ptrtoint ptr %driver_present.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %driver_present.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool3.not.i = icmp eq i8 %28, 0
  br i1 %tobool3.not.i, label %land.rhs.i79, label %if.then.i.if.end35.i_crit_edge

if.then.i.if.end35.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

land.rhs.i79:                                     ; preds = %if.then.i
  %.b55.i = load i1, ptr @drv_change_chanctx.__already_done, align 1
  br i1 %.b55.i, label %land.rhs.i79.if.end35.i_crit_edge, label %if.then12.i, !prof !125

land.rhs.i79.if.end35.i_crit_edge:                ; preds = %land.rhs.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.then12.i:                                      ; preds = %land.rhs.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @drv_change_chanctx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 912, i32 noundef 9, ptr noundef null) #8
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then12.i, %land.rhs.i79.if.end35.i_crit_edge, %if.then.i.if.end35.i_crit_edge
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i, align 4
  %change_chanctx44.i = getelementptr inbounds %struct.ieee80211_ops, ptr %30, i32 0, i32 74
  %31 = ptrtoint ptr %change_chanctx44.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %change_chanctx44.i, align 4
  tail call void %32(ptr noundef %local, ptr noundef %conf, i32 noundef %or) #8
  br label %drv_change_chanctx.exit

drv_change_chanctx.exit:                          ; preds = %if.end35.i, %if.end45.drv_change_chanctx.exit_crit_edge
  tail call fastcc void @trace_drv_return_void(ptr noundef %local) #8
  %use_chanctx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 26
  %33 = ptrtoint ptr %use_chanctx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %use_chanctx, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool56.not = icmp eq i8 %34, 0
  br i1 %tobool56.not, label %if.then57, label %drv_change_chanctx.exit.if.end59_crit_edge

drv_change_chanctx.exit.if.end59_crit_edge:       ; preds = %drv_change_chanctx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then57:                                        ; preds = %drv_change_chanctx.exit
  call void @__sanitizer_cov_trace_pc() #10
  %_oper_chandef = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 86
  %35 = call ptr @memcpy(ptr %_oper_chandef, ptr %chandef, i32 28)
  %call58 = tail call i32 @ieee80211_hw_config(ptr noundef %local, i32 noundef 0) #8
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %drv_change_chanctx.exit.if.end59_crit_edge
  tail call fastcc void @ieee80211_chan_bw_change(ptr noundef %local, ptr noundef %old_ctx, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.then15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_recalc_smps_chanctx(ptr noundef %local, ptr noundef %chanctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 89, i32 5
  %call.i315 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i315)
  %cmp.not = icmp eq i32 %call.i315, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !123

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 813, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !126
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call25 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end34_crit_edge

rcu_read_lock.exit.do.end34_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true.do.end34_crit_edge, label %land.lhs.true29

land.lhs.true.do.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

land.lhs.true29:                                  ; preds = %land.lhs.true
  %.b314 = load i1, ptr @ieee80211_recalc_smps_chanctx.__warned, align 1
  br i1 %.b314, label %land.lhs.true29.do.end34_crit_edge, label %if.then31

land.lhs.true29.do.end34_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_recalc_smps_chanctx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 819, ptr noundef nonnull @.str.1) #8
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %land.lhs.true29.do.end34_crit_edge, %land.lhs.true.do.end34_crit_edge, %rcu_read_lock.exit.do.end34_crit_edge
  %interfaces = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 62
  %5 = ptrtoint ptr %interfaces to i32
  call void @__asan_load4_noabort(i32 %5)
  %sdata.0327 = load volatile ptr, ptr %interfaces, align 8
  %cmp41.not328 = icmp eq ptr %sdata.0327, %interfaces
  br i1 %cmp41.not328, label %do.end34.for.end_crit_edge, label %for.body.lr.ph

do.end34.for.end_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end34
  %conf = getelementptr inbounds %struct.ieee80211_chanctx, ptr %chanctx, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %sdata.0331 = phi ptr [ %sdata.0327, %for.body.lr.ph ], [ %sdata.0, %cleanup.for.body_crit_edge ]
  %rx_chains_static.0330 = phi i8 [ 1, %for.body.lr.ph ], [ %rx_chains_static.1, %cleanup.for.body_crit_edge ]
  %rx_chains_dynamic.0329 = phi i8 [ 1, %for.body.lr.ph ], [ %rx_chains_dynamic.1, %cleanup.for.body_crit_edge ]
  %state.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0331, i32 0, i32 9
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.body.cleanup_crit_edge, label %if.end44

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44:                                         ; preds = %for.body
  %chanctx_conf = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0331, i32 0, i32 59, i32 9
  %8 = ptrtoint ptr %chanctx_conf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %chanctx_conf, align 4
  %cmp50.not = icmp eq ptr %9, %conf
  br i1 %cmp50.not, label %if.end52, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52:                                         ; preds = %if.end44
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0331, i32 0, i32 59
  %10 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vif, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %11, label %land.end65 [
    i32 10, label %if.end52.cleanup_crit_edge
    i32 12, label %if.end52.cleanup_crit_edge333
    i32 2, label %sw.bb54
    i32 4, label %if.end52.cleanup_crit_edge334
    i32 3, label %if.end52.sw.epilog_crit_edge
    i32 1, label %if.end52.sw.epilog_crit_edge335
    i32 7, label %if.end52.sw.epilog_crit_edge336
    i32 11, label %if.end52.sw.epilog_crit_edge337
  ]

if.end52.sw.epilog_crit_edge337:                  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end52.sw.epilog_crit_edge336:                  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end52.sw.epilog_crit_edge335:                  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end52.sw.epilog_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end52.cleanup_crit_edge334:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52.cleanup_crit_edge333:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb54:                                          ; preds = %if.end52
  %associated = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0331, i32 0, i32 57, i32 0, i32 24, i32 28
  %13 = ptrtoint ptr %associated to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %associated, align 8
  %tobool55.not = icmp eq ptr %14, null
  br i1 %tobool55.not, label %sw.bb54.cleanup_crit_edge, label %sw.bb54.sw.epilog_crit_edge

sw.bb54.sw.epilog_crit_edge:                      ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb54.cleanup_crit_edge:                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.end65:                                       ; preds = %if.end52
  %.b308313 = load i1, ptr @ieee80211_recalc_smps_chanctx.__already_done, align 1
  br i1 %.b308313, label %land.end65.sw.epilog_crit_edge, label %if.then72, !prof !125

land.end65.sw.epilog_crit_edge:                   ; preds = %land.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then72:                                        ; preds = %land.end65
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_recalc_smps_chanctx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 845, i32 noundef 9, ptr noundef null) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then72, %land.end65.sw.epilog_crit_edge, %sw.bb54.sw.epilog_crit_edge, %if.end52.sw.epilog_crit_edge, %if.end52.sw.epilog_crit_edge335, %if.end52.sw.epilog_crit_edge336, %if.end52.sw.epilog_crit_edge337
  %smps_mode = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0331, i32 0, i32 44
  %15 = ptrtoint ptr %smps_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %smps_mode, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %16, label %land.end114 [
    i32 1, label %sw.epilog.sw.bb157_crit_edge
    i32 3, label %sw.bb159
    i32 2, label %sw.epilog.sw.epilog162_crit_edge
  ]

sw.epilog.sw.epilog162_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog162

sw.epilog.sw.bb157_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb157

land.end114:                                      ; preds = %sw.epilog
  %.b309312 = load i1, ptr @ieee80211_recalc_smps_chanctx.__already_done.4, align 1
  br i1 %.b309312, label %land.end114.sw.bb157_crit_edge, label %if.then121, !prof !125

land.end114.sw.bb157_crit_edge:                   ; preds = %land.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb157

if.then121:                                       ; preds = %land.end114
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_recalc_smps_chanctx.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 851, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %16) #8
  br label %sw.bb157

sw.bb157:                                         ; preds = %if.then121, %land.end114.sw.bb157_crit_edge, %sw.epilog.sw.bb157_crit_edge
  %needed_rx_chains = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0331, i32 0, i32 43
  %18 = ptrtoint ptr %needed_rx_chains to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %needed_rx_chains, align 4
  br label %sw.epilog162

sw.bb159:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %needed_rx_chains160 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0331, i32 0, i32 43
  %20 = ptrtoint ptr %needed_rx_chains160 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %needed_rx_chains160, align 4
  br label %sw.epilog162

sw.epilog162:                                     ; preds = %sw.bb159, %sw.bb157, %sw.epilog.sw.epilog162_crit_edge
  %needed_dynamic.0 = phi i8 [ %19, %sw.bb157 ], [ %21, %sw.bb159 ], [ 1, %sw.epilog.sw.epilog162_crit_edge ]
  %needed_static.0 = phi i8 [ %19, %sw.bb157 ], [ 1, %sw.bb159 ], [ 1, %sw.epilog.sw.epilog162_crit_edge ]
  %22 = tail call i8 @llvm.umax.i8(i8 %rx_chains_static.0330, i8 %needed_static.0)
  %23 = tail call i8 @llvm.umax.i8(i8 %rx_chains_dynamic.0329, i8 %needed_dynamic.0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog162, %sw.bb54.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end52.cleanup_crit_edge333, %if.end52.cleanup_crit_edge334, %if.end44.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %rx_chains_dynamic.1 = phi i8 [ %23, %sw.epilog162 ], [ %rx_chains_dynamic.0329, %for.body.cleanup_crit_edge ], [ %rx_chains_dynamic.0329, %if.end44.cleanup_crit_edge ], [ %rx_chains_dynamic.0329, %if.end52.cleanup_crit_edge ], [ %rx_chains_dynamic.0329, %if.end52.cleanup_crit_edge333 ], [ %rx_chains_dynamic.0329, %sw.bb54.cleanup_crit_edge ], [ %rx_chains_dynamic.0329, %if.end52.cleanup_crit_edge334 ]
  %rx_chains_static.1 = phi i8 [ %22, %sw.epilog162 ], [ %rx_chains_static.0330, %for.body.cleanup_crit_edge ], [ %rx_chains_static.0330, %if.end44.cleanup_crit_edge ], [ %rx_chains_static.0330, %if.end52.cleanup_crit_edge ], [ %rx_chains_static.0330, %if.end52.cleanup_crit_edge333 ], [ %rx_chains_static.0330, %sw.bb54.cleanup_crit_edge ], [ %rx_chains_static.0330, %if.end52.cleanup_crit_edge334 ]
  %24 = ptrtoint ptr %sdata.0331 to i32
  call void @__asan_load4_noabort(i32 %24)
  %sdata.0 = load volatile ptr, ptr %sdata.0331, align 8
  %cmp41.not = icmp eq ptr %sdata.0, %interfaces
  br i1 %cmp41.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.end34.for.end_crit_edge
  %rx_chains_dynamic.0.lcssa = phi i8 [ 1, %do.end34.for.end_crit_edge ], [ %rx_chains_dynamic.1, %cleanup.for.end_crit_edge ]
  %rx_chains_static.0.lcssa = phi i8 [ 1, %do.end34.for.end_crit_edge ], [ %rx_chains_static.1, %cleanup.for.end_crit_edge ]
  %monitor_sdata = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 147
  %25 = ptrtoint ptr %monitor_sdata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %monitor_sdata, align 4
  %call197 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %land.lhs.true199, label %for.end.do.end207_crit_edge

for.end.do.end207_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end207

land.lhs.true199:                                 ; preds = %for.end
  %call200 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %land.lhs.true199.do.end207_crit_edge, label %land.lhs.true202

land.lhs.true199.do.end207_crit_edge:             ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end207

land.lhs.true202:                                 ; preds = %land.lhs.true199
  %.b310311 = load i1, ptr @ieee80211_recalc_smps_chanctx.__warned.6, align 1
  br i1 %.b310311, label %land.lhs.true202.do.end207_crit_edge, label %if.then204

land.lhs.true202.do.end207_crit_edge:             ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end207

if.then204:                                       ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_recalc_smps_chanctx.__warned.6, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 872, ptr noundef nonnull @.str.7) #8
  br label %do.end207

do.end207:                                        ; preds = %if.then204, %land.lhs.true202.do.end207_crit_edge, %land.lhs.true199.do.end207_crit_edge, %for.end.do.end207_crit_edge
  %tobool209.not = icmp eq ptr %26, null
  br i1 %tobool209.not, label %do.end207.if.end222_crit_edge, label %land.lhs.true210

do.end207.if.end222_crit_edge:                    ; preds = %do.end207
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end222

land.lhs.true210:                                 ; preds = %do.end207
  %chanctx_conf216 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %26, i32 0, i32 59, i32 9
  %27 = ptrtoint ptr %chanctx_conf216 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %chanctx_conf216, align 4
  %conf218 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %chanctx, i32 0, i32 8
  %cmp219 = icmp eq ptr %28, %conf218
  br i1 %cmp219, label %if.then221, label %land.lhs.true210.if.end222_crit_edge

land.lhs.true210.if.end222_crit_edge:             ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end222

if.then221:                                       ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #10
  %rx_chains = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 39
  %29 = ptrtoint ptr %rx_chains to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rx_chains, align 4
  br label %if.end222

if.end222:                                        ; preds = %if.then221, %land.lhs.true210.if.end222_crit_edge, %do.end207.if.end222_crit_edge
  %rx_chains_dynamic.2 = phi i8 [ %30, %if.then221 ], [ %rx_chains_dynamic.0.lcssa, %land.lhs.true210.if.end222_crit_edge ], [ %rx_chains_dynamic.0.lcssa, %do.end207.if.end222_crit_edge ]
  %rx_chains_static.2 = phi i8 [ %30, %if.then221 ], [ %rx_chains_static.0.lcssa, %land.lhs.true210.if.end222_crit_edge ], [ %rx_chains_static.0.lcssa, %do.end207.if.end222_crit_edge ]
  %call.i316 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i316, label %if.end222.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i319

if.end222.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i319:                               ; preds = %if.end222
  %call1.i317 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i317)
  %tobool.not.i318 = icmp eq i32 %call1.i317, 0
  br i1 %tobool.not.i318, label %land.lhs.true.i319.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i321

land.lhs.true.i319.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i319
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i321:                              ; preds = %land.lhs.true.i319
  %.b4.i320 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i320, label %land.lhs.true2.i321.rcu_read_unlock.exit_crit_edge, label %if.then.i322

land.lhs.true2.i321.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i321
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i322:                                     ; preds = %land.lhs.true2.i321
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i322, %land.lhs.true2.i321.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i319.rcu_read_unlock.exit_crit_edge, %if.end222.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !127
  %31 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i.i323 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i323 to ptr
  %preempt_count.i.i.i.i324 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i324 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i324, align 4
  %sub.i.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i324, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %use_chanctx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 26
  %35 = ptrtoint ptr %use_chanctx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %use_chanctx, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool223.not = icmp eq i8 %36, 0
  br i1 %tobool223.not, label %if.then224, label %rcu_read_unlock.exit.if.end240_crit_edge

rcu_read_unlock.exit.if.end240_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end240

if.then224:                                       ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rx_chains_static.2)
  %cmp226 = icmp ugt i8 %rx_chains_static.2, 1
  br i1 %cmp226, label %if.then228, label %if.else

if.then228:                                       ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #10
  %smps_mode229 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 134
  %37 = ptrtoint ptr %smps_mode229 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %smps_mode229, align 8
  br label %if.end238

if.else:                                          ; preds = %if.then224
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rx_chains_dynamic.2)
  %cmp231 = icmp ugt i8 %rx_chains_dynamic.2, 1
  %smps_mode234 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 134
  br i1 %cmp231, label %if.then233, label %if.else235

if.then233:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %smps_mode234 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %smps_mode234, align 8
  br label %if.end238

if.else235:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %smps_mode234 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %smps_mode234, align 8
  br label %if.end238

if.end238:                                        ; preds = %if.else235, %if.then233, %if.then228
  %call239 = tail call i32 @ieee80211_hw_config(ptr noundef %local, i32 noundef 0) #8
  br label %if.end240

if.end240:                                        ; preds = %if.end238, %rcu_read_unlock.exit.if.end240_crit_edge
  %rx_chains_static243 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %chanctx, i32 0, i32 8, i32 2
  %40 = ptrtoint ptr %rx_chains_static243 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %rx_chains_static243, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %rx_chains_static.2, i8 %41)
  %cmp245 = icmp eq i8 %rx_chains_static.2, %41
  br i1 %cmp245, label %land.lhs.true247, label %if.end240.if.end255_crit_edge

if.end240.if.end255_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end255

land.lhs.true247:                                 ; preds = %if.end240
  %rx_chains_dynamic250 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %chanctx, i32 0, i32 8, i32 3
  %42 = ptrtoint ptr %rx_chains_dynamic250 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %rx_chains_dynamic250, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %rx_chains_dynamic.2, i8 %43)
  %cmp252 = icmp eq i8 %rx_chains_dynamic.2, %43
  br i1 %cmp252, label %land.lhs.true247.cleanup260_crit_edge, label %land.lhs.true247.if.end255_crit_edge

land.lhs.true247.if.end255_crit_edge:             ; preds = %land.lhs.true247
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end255

land.lhs.true247.cleanup260_crit_edge:            ; preds = %land.lhs.true247
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup260

if.end255:                                        ; preds = %land.lhs.true247.if.end255_crit_edge, %if.end240.if.end255_crit_edge
  %44 = ptrtoint ptr %rx_chains_static243 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %rx_chains_static.2, ptr %rx_chains_static243, align 4
  %rx_chains_dynamic259 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %chanctx, i32 0, i32 8, i32 3
  %45 = ptrtoint ptr %rx_chains_dynamic259 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %rx_chains_dynamic.2, ptr %rx_chains_dynamic259, align 1
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 908) #8
  tail call fastcc void @trace_drv_change_chanctx(ptr noundef %local, ptr noundef %chanctx, i32 noundef 2) #8
  %ops.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %46 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i, align 4
  %change_chanctx.i = getelementptr inbounds %struct.ieee80211_ops, ptr %47, i32 0, i32 74
  %48 = ptrtoint ptr %change_chanctx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %change_chanctx.i, align 4
  %tobool.not.i325 = icmp eq ptr %49, null
  br i1 %tobool.not.i325, label %if.end255.drv_change_chanctx.exit_crit_edge, label %if.then.i326

if.end255.drv_change_chanctx.exit_crit_edge:      ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #10
  br label %drv_change_chanctx.exit

if.then.i326:                                     ; preds = %if.end255
  %driver_present.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %chanctx, i32 0, i32 7
  %50 = ptrtoint ptr %driver_present.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %driver_present.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool3.not.i = icmp eq i8 %51, 0
  br i1 %tobool3.not.i, label %land.rhs.i, label %if.then.i326.if.end35.i_crit_edge

if.then.i326.if.end35.i_crit_edge:                ; preds = %if.then.i326
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

land.rhs.i:                                       ; preds = %if.then.i326
  %.b55.i = load i1, ptr @drv_change_chanctx.__already_done, align 1
  br i1 %.b55.i, label %land.rhs.i.if.end35.i_crit_edge, label %if.then12.i, !prof !125

land.rhs.i.if.end35.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.then12.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @drv_change_chanctx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 912, i32 noundef 9, ptr noundef null) #8
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then12.i, %land.rhs.i.if.end35.i_crit_edge, %if.then.i326.if.end35.i_crit_edge
  %52 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i, align 4
  %change_chanctx44.i = getelementptr inbounds %struct.ieee80211_ops, ptr %53, i32 0, i32 74
  %54 = ptrtoint ptr %change_chanctx44.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %change_chanctx44.i, align 4
  %conf.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %chanctx, i32 0, i32 8
  tail call void %55(ptr noundef %local, ptr noundef %conf.i, i32 noundef 2) #8
  br label %drv_change_chanctx.exit

drv_change_chanctx.exit:                          ; preds = %if.end35.i, %if.end255.drv_change_chanctx.exit_crit_edge
  tail call fastcc void @trace_drv_return_void(ptr noundef %local) #8
  br label %cleanup260

cleanup260:                                       ; preds = %drv_change_chanctx.exit, %land.lhs.true247.cleanup260_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_hw_config(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_vif_copy_chanctx_to_vlans(ptr noundef %sdata, i1 noundef zeroext %clear) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %chanctx_mtx = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %chanctx_mtx, i32 noundef 0) #8
  tail call fastcc void @__ieee80211_vif_copy_chanctx_to_vlans(ptr noundef %sdata, i1 noundef zeroext %clear)
  tail call void @mutex_unlock(ptr noundef %chanctx_mtx) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ieee80211_vif_copy_chanctx_to_vlans(ptr noundef readonly %sdata, i1 noundef zeroext %clear) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %do.body23, label %do.end, !prof !125

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 906, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

do.body23:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool25.not = icmp eq i32 %4, 0
  br i1 %tobool25.not, label %do.body23.if.end50_crit_edge, label %land.rhs

do.body23.if.end50_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

land.rhs:                                         ; preds = %do.body23
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 66, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp26.not = icmp eq i32 %call.i, 0
  br i1 %cmp26.not, label %do.end44, label %land.rhs.if.end50_crit_edge, !prof !123

land.rhs.if.end50_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end44:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 909, i32 noundef 9, ptr noundef null) #8
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %land.rhs.if.end50_crit_edge, %do.body23.if.end50_crit_edge
  %dep_map61 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89, i32 5
  %call.i178 = tail call i32 @lock_is_held_type(ptr noundef %dep_map61, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %tobool63.not = icmp eq i32 %call.i178, 0
  br i1 %tobool63.not, label %land.lhs.true, label %if.end50.do.end71_crit_edge

if.end50.do.end71_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end71

land.lhs.true:                                    ; preds = %if.end50
  %call64 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %land.lhs.true.do.end71_crit_edge, label %land.lhs.true66

land.lhs.true.do.end71_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end71

land.lhs.true66:                                  ; preds = %land.lhs.true
  %.b177 = load i1, ptr @__ieee80211_vif_copy_chanctx_to_vlans.__warned, align 1
  br i1 %.b177, label %land.lhs.true66.do.end71_crit_edge, label %if.then68

land.lhs.true66.do.end71_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end71

if.then68:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__ieee80211_vif_copy_chanctx_to_vlans.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 918, ptr noundef nonnull @.str.12) #8
  br label %do.end71

do.end71:                                         ; preds = %if.then68, %land.lhs.true66.do.end71_crit_edge, %land.lhs.true.do.end71_crit_edge, %if.end50.do.end71_crit_edge
  %chanctx_conf = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %5 = ptrtoint ptr %chanctx_conf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chanctx_conf, align 4
  %tobool75.not = icmp eq ptr %6, null
  br i1 %tobool75.not, label %do.end93, label %do.end71.if.end99_crit_edge, !prof !123

do.end71.if.end99_crit_edge:                      ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

do.end93:                                         ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 919, i32 noundef 9, ptr noundef null) #8
  br label %if.end99

if.end99:                                         ; preds = %do.end93, %do.end71.if.end99_crit_edge
  %spec.select = select i1 %clear, ptr null, ptr %6
  %vlans = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 0, i32 4
  %7 = ptrtoint ptr %vlans to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn179 = load ptr, ptr %vlans, align 4
  %cmp114.not180 = icmp eq ptr %.pn179, %vlans
  br i1 %cmp114.not180, label %if.end99.cleanup_crit_edge, label %if.end99.do.body117_crit_edge

if.end99.do.body117_crit_edge:                    ; preds = %if.end99
  br label %do.body117

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body117:                                       ; preds = %do.body117.do.body117_crit_edge, %if.end99.do.body117_crit_edge
  %.pn181 = phi ptr [ %.pn, %do.body117.do.body117_crit_edge ], [ %.pn179, %if.end99.do.body117_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !128
  %chanctx_conf146 = getelementptr i8, ptr %.pn181, i32 2348
  %8 = ptrtoint ptr %chanctx_conf146 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %spec.select, ptr %chanctx_conf146, align 4
  %9 = ptrtoint ptr %.pn181 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn181, align 4
  %cmp114.not = icmp eq ptr %.pn, %vlans
  br i1 %cmp114.not, label %do.body117.cleanup_crit_edge, label %do.body117.do.body117_crit_edge

do.body117.do.body117_crit_edge:                  ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body117

do.body117.cleanup_crit_edge:                     ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %do.body117.cleanup_crit_edge, %if.end99.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_vif_unreserve_chanctx(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reserved_chanctx = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 35
  %0 = ptrtoint ptr %reserved_chanctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reserved_chanctx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %3 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %local, align 4
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 89, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !123

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 944, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool25.not = icmp eq ptr %1, null
  br i1 %tobool25.not, label %do.end43, label %if.end59, !prof !123

do.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 946, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end59:                                         ; preds = %if.end
  %reserved_chanctx_list = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 34
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %reserved_chanctx_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end59.list_del.exit_crit_edge

if.end59.list_del.exit_crit_edge:                 ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 34, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %reserved_chanctx_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reserved_chanctx_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end59.list_del.exit_crit_edge
  %11 = ptrtoint ptr %reserved_chanctx_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %reserved_chanctx_list, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 34, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %13 = ptrtoint ptr %reserved_chanctx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %reserved_chanctx, align 8
  %local61 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %14 = ptrtoint ptr %local61 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %local61, align 4
  %call62 = tail call i32 @ieee80211_chanctx_refcount(ptr noundef %15, ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then64, label %list_del.exit.cleanup_crit_edge

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then64:                                        ; preds = %list_del.exit
  %replace_state = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %replace_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %replace_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp65 = icmp eq i32 %17, 2
  br i1 %cmp65, label %if.then66, label %if.else

if.then66:                                        ; preds = %if.then64
  %replace_ctx = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %replace_ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %replace_ctx, align 4
  %tobool68.not = icmp eq ptr %19, null
  br i1 %tobool68.not, label %do.end86, label %if.end102, !prof !123

do.end86:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 954, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end102:                                        ; preds = %if.then66
  %replace_state105 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %replace_state105 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %replace_state105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp106.not = icmp eq i32 %21, 1
  br i1 %cmp106.not, label %if.end102.if.end128_crit_edge, label %do.end122, !prof !125

if.end102.if.end128_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

do.end122:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 958, i32 noundef 9, ptr noundef null) #8
  br label %if.end128

if.end128:                                        ; preds = %do.end122, %if.end102.if.end128_crit_edge
  %22 = ptrtoint ptr %replace_ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %replace_ctx, align 4
  %replace_ctx138 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %replace_ctx138 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %replace_ctx138, align 4
  %cmp139.not = icmp eq ptr %25, %1
  br i1 %cmp139.not, label %if.end128.if.end161_crit_edge, label %do.end155, !prof !125

if.end128.if.end161_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

do.end155:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 959, i32 noundef 9, ptr noundef null) #8
  br label %if.end161

if.end161:                                        ; preds = %do.end155, %if.end128.if.end161_crit_edge
  %26 = ptrtoint ptr %replace_ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %replace_ctx, align 4
  %replace_ctx170 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %replace_ctx170 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %replace_ctx170, align 4
  %29 = load ptr, ptr %replace_ctx, align 4
  %replace_state172 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %replace_state172 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %replace_state172, align 4
  %call.i.i207 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #8
  br i1 %call.i.i207, label %if.end.i.i210, label %if.end161.do.end178_crit_edge

if.end161.do.end178_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end178

if.end.i.i210:                                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i208 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i208 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i208, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %prev1.i.i.i209 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i209 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i209, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %do.end178

do.end178:                                        ; preds = %if.end.i.i210, %if.end161.do.end178_crit_edge
  %prev.i211 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i211 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i211, align 4
  %callback_head = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %callback_head, ptr noundef nonnull inttoptr (i32 8 to ptr)) #8
  br label %cleanup

if.else:                                          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %local61 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %local61, align 4
  tail call fastcc void @ieee80211_free_chanctx(ptr noundef %39, ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end178, %do.end86, %list_del.exit.cleanup_crit_edge, %do.end43
  %retval.0 = phi i32 [ -22, %do.end43 ], [ -22, %do.end86 ], [ 0, %do.end178 ], [ 0, %if.else ], [ 0, %list_del.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_free_chanctx(ptr noundef %local, ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 89, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !123

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 665, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call24 = tail call i32 @ieee80211_chanctx_refcount(ptr noundef %local, ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %if.end.if.end69_crit_edge, label %land.rhs31

if.end.if.end69_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

land.rhs31:                                       ; preds = %if.end
  %.b95 = load i1, ptr @ieee80211_free_chanctx.__already_done, align 1
  br i1 %.b95, label %land.rhs31.if.end69_crit_edge, label %if.then42, !prof !125

land.rhs31.if.end69_crit_edge:                    ; preds = %land.rhs31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then42:                                        ; preds = %land.rhs31
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_free_chanctx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 667, i32 noundef 9, ptr noundef null) #8
  br label %if.end69

if.end69:                                         ; preds = %if.then42, %land.rhs31.if.end69_crit_edge, %if.end.if.end69_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ctx) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end69.list_del_rcu.exit_crit_edge

if.end69.list_del_rcu.exit_crit_edge:             ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ctx, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end69.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ctx, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @ieee80211_del_chanctx(ptr noundef %local, ptr noundef %ctx)
  %tobool78.not = icmp eq ptr %ctx, null
  br i1 %tobool78.not, label %list_del_rcu.exit.if.end83_crit_edge, label %do.end82

list_del_rcu.exit.if.end83_crit_edge:             ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

do.end82:                                         ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #10
  %callback_head = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %callback_head, ptr noundef nonnull inttoptr (i32 8 to ptr)) #8
  br label %if.end83

if.end83:                                         ; preds = %do.end82, %list_del_rcu.exit.if.end83_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_vif_reserve_chanctx(ptr noundef %sdata, ptr noundef %chandef, i32 noundef %mode, i1 noundef zeroext %radar_required) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %radar_required to i8
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !123

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 983, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %local1, align 4
  %dep_map.i = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 89, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.ieee80211_vif_get_chanctx.exit_crit_edge

if.end.ieee80211_vif_get_chanctx.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.ieee80211_vif_get_chanctx.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.ieee80211_vif_get_chanctx.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b13.i = load i1, ptr @ieee80211_vif_get_chanctx.__warned, align 1
  br i1 %.b13.i, label %land.lhs.true4.i.ieee80211_vif_get_chanctx.exit_crit_edge, label %if.then.i

land.lhs.true4.i.ieee80211_vif_get_chanctx.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_vif_get_chanctx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 76, ptr noundef nonnull @.str.12) #8
  br label %ieee80211_vif_get_chanctx.exit

ieee80211_vif_get_chanctx.exit:                   ; preds = %if.then.i, %land.lhs.true4.i.ieee80211_vif_get_chanctx.exit_crit_edge, %land.lhs.true.i.ieee80211_vif_get_chanctx.exit_crit_edge, %if.end.ieee80211_vif_get_chanctx.exit_crit_edge
  %chanctx_conf.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %5 = ptrtoint ptr %chanctx_conf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chanctx_conf.i, align 4
  %tobool6.not.i = icmp eq ptr %6, null
  %add.ptr.i = getelementptr i8, ptr %6, i32 -48
  %retval.0.i = select i1 %tobool6.not.i, ptr null, ptr %add.ptr.i
  %tobool26.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool26.not, label %ieee80211_vif_get_chanctx.exit.if.end31_crit_edge, label %land.lhs.true

ieee80211_vif_get_chanctx.exit.if.end31_crit_edge: ; preds = %ieee80211_vif_get_chanctx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true:                                    ; preds = %ieee80211_vif_get_chanctx.exit
  %use_chanctx = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 26
  %7 = ptrtoint ptr %use_chanctx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %use_chanctx, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool27.not = icmp eq i8 %8, 0
  br i1 %tobool27.not, label %land.lhs.true.if.end31_crit_edge, label %land.lhs.true28

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true28:                                  ; preds = %land.lhs.true
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %switch_vif_chanctx = getelementptr inbounds %struct.ieee80211_ops, ptr %10, i32 0, i32 77
  %11 = ptrtoint ptr %switch_vif_chanctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %switch_vif_chanctx, align 4
  %tobool29.not = icmp eq ptr %12, null
  br i1 %tobool29.not, label %land.lhs.true28.cleanup_crit_edge, label %land.lhs.true28.if.end31_crit_edge

land.lhs.true28.if.end31_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true28.if.end31_crit_edge, %land.lhs.true.if.end31_crit_edge, %ieee80211_vif_get_chanctx.exit.if.end31_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i138 = icmp eq i32 %13, 0
  br i1 %tobool.not.i138, label %if.end31.if.end.i_crit_edge, label %land.rhs.i

if.end31.if.end.i_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end31
  %dep_map.i139 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89, i32 5
  %call.i.i140 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i139, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i140)
  %cmp.not.i = icmp eq i32 %call.i.i140, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !123

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 174, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end31.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp24.i = icmp eq i32 %mode, 1
  br i1 %cmp24.i, label %if.end.i.if.then34_crit_edge, label %if.end26.i

if.end.i.if.then34_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.end26.i:                                       ; preds = %if.end.i
  %chanctx_list.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 88
  %14 = ptrtoint ptr %chanctx_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %ctx.060.i = load ptr, ptr %chanctx_list.i, align 4
  %cmp29.not61.i = icmp eq ptr %ctx.060.i, %chanctx_list.i
  br i1 %cmp29.not61.i, label %if.end26.i.if.then34_crit_edge, label %for.body.lr.ph.i

if.end26.i.if.then34_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

for.body.lr.ph.i:                                 ; preds = %if.end26.i
  %dep_map.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ctx.062.i = phi ptr [ %ctx.060.i, %for.body.lr.ph.i ], [ %ctx.0.i, %for.inc.i.for.body.i_crit_edge ]
  %replace_state.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.062.i, i32 0, i32 4
  %15 = ptrtoint ptr %replace_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %replace_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp32.i = icmp eq i32 %16, 1
  br i1 %cmp32.i, label %for.body.i.for.inc.i_crit_edge, label %if.end34.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end34.i:                                       ; preds = %for.body.i
  %mode35.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.062.i, i32 0, i32 6
  %17 = ptrtoint ptr %mode35.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp36.i = icmp eq i32 %18, 1
  br i1 %cmp36.i, label %if.end34.i.for.inc.i_crit_edge, label %if.end38.i

if.end34.i.for.inc.i_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end38.i:                                       ; preds = %if.end34.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %19 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %if.end38.i.if.end.i.i.i.i_crit_edge, label %land.rhs.i.i

if.end38.i.if.end.i.i.i.i_crit_edge:              ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

land.rhs.i.i:                                     ; preds = %if.end38.i
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !123

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 155, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr.i.i = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %tobool.not.i.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.end.i.i.i.i_crit_edge, label %land.rhs.i.i.i

if.end.i.i.if.end.i.i.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i.i
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.if.end.i.i.i_crit_edge, !prof !123

land.rhs.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 137, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %land.rhs.i.i.i.if.end.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr.i.i.i = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %.pr.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.if.end.i.i.i.i_crit_edge, label %land.rhs.i.i.i.i

if.end.i.i.i.if.end.i.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.end.i.i.i
  %call.i.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end.i.i.i.i, label %land.rhs.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !123

land.rhs.i.i.i.i.if.end.i.i.i.i_crit_edge:        ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 90, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %land.rhs.i.i.i.i.if.end.i.i.i.i_crit_edge, %if.end.i.i.i.if.end.i.i.i.i_crit_edge, %if.end.i.i.if.end.i.i.i.i_crit_edge, %if.end38.i.if.end.i.i.i.i_crit_edge
  %reserved_vifs.i.i.i.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.062.i, i32 0, i32 3
  br label %for.cond.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge, %if.end.i.i.i.i
  %.pn.in.i.i.i.i = phi ptr [ %reserved_vifs.i.i.i.i, %if.end.i.i.i.i ], [ %.pn.i.i.i.i, %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge ]
  %compat.addr.0.i.i.i.i = phi ptr [ %chandef, %if.end.i.i.i.i ], [ %call33.i.i.i.i, %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge ]
  %20 = ptrtoint ptr %.pn.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i.i.i.i = load ptr, ptr %.pn.in.i.i.i.i, align 4
  %cmp26.not.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %reserved_vifs.i.i.i.i
  %tobool25.not.i.i.i = icmp eq ptr %compat.addr.0.i.i.i.i, null
  br i1 %cmp26.not.i.i.i.i, label %ieee80211_chanctx_reserved_chandef.exit.i.i.i, label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i
  %reserved_chandef.i.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i, i32 12
  %spec.select.i.i.i.i = select i1 %tobool25.not.i.i.i, ptr %reserved_chandef.i.i.i.i, ptr %compat.addr.0.i.i.i.i
  %call33.i.i.i.i = tail call ptr @cfg80211_chandef_compatible(ptr noundef %reserved_chandef.i.i.i.i, ptr noundef %spec.select.i.i.i.i) #8
  %tobool34.not.i.i.i.i = icmp eq ptr %call33.i.i.i.i, null
  br i1 %tobool34.not.i.i.i.i, label %for.body.i.i.i.i.if.end27.i.i_crit_edge, label %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge

for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.i.i

for.body.i.i.i.i.if.end27.i.i_crit_edge:          ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i.i

ieee80211_chanctx_reserved_chandef.exit.i.i.i:    ; preds = %for.cond.i.i.i.i
  br i1 %tobool25.not.i.i.i, label %ieee80211_chanctx_reserved_chandef.exit.i.i.i.if.end27.i.i_crit_edge, label %if.end27.i.i.i

ieee80211_chanctx_reserved_chandef.exit.i.i.i.if.end27.i.i_crit_edge: ; preds = %ieee80211_chanctx_reserved_chandef.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i.i

if.end27.i.i.i:                                   ; preds = %ieee80211_chanctx_reserved_chandef.exit.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %21 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i40.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i40.i.i.i, label %if.end27.i.i.i.if.end.i46.i.i.i_crit_edge, label %land.rhs.i44.i.i.i

if.end27.i.i.i.if.end.i46.i.i.i_crit_edge:        ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i46.i.i.i

land.rhs.i44.i.i.i:                               ; preds = %if.end27.i.i.i
  %call.i.i42.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42.i.i.i)
  %cmp.not.i43.i.i.i = icmp eq i32 %call.i.i42.i.i.i, 0
  br i1 %cmp.not.i43.i.i.i, label %do.end.i45.i.i.i, label %land.rhs.i44.i.i.i.if.end.i46.i.i.i_crit_edge, !prof !123

land.rhs.i44.i.i.i.if.end.i46.i.i.i_crit_edge:    ; preds = %land.rhs.i44.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i46.i.i.i

do.end.i45.i.i.i:                                 ; preds = %land.rhs.i44.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 113, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i46.i.i.i

if.end.i46.i.i.i:                                 ; preds = %do.end.i45.i.i.i, %land.rhs.i44.i.i.i.if.end.i46.i.i.i_crit_edge, %if.end27.i.i.i.if.end.i46.i.i.i_crit_edge
  %assigned_vifs.i.i.i.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.062.i, i32 0, i32 2
  %22 = ptrtoint ptr %assigned_vifs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn56.i.i.i.i = load ptr, ptr %assigned_vifs.i.i.i.i, align 4
  %cmp26.not57.i.i.i.i = icmp eq ptr %.pn56.i.i.i.i, %assigned_vifs.i.i.i.i
  br i1 %cmp26.not57.i.i.i.i, label %if.end.i46.i.i.i.ieee80211_find_reservation_chanctx.exit_crit_edge, label %if.end.i46.i.i.i.for.body.i47.i.i.i_crit_edge

if.end.i46.i.i.i.for.body.i47.i.i.i_crit_edge:    ; preds = %if.end.i46.i.i.i
  br label %for.body.i47.i.i.i

if.end.i46.i.i.i.ieee80211_find_reservation_chanctx.exit_crit_edge: ; preds = %if.end.i46.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_find_reservation_chanctx.exit

for.body.i47.i.i.i:                               ; preds = %for.inc.i.i.i.i.for.body.i47.i.i.i_crit_edge, %if.end.i46.i.i.i.for.body.i47.i.i.i_crit_edge
  %.pn59.i.i.i.i = phi ptr [ %.pn.i50.i.i.i, %for.inc.i.i.i.i.for.body.i47.i.i.i_crit_edge ], [ %.pn56.i.i.i.i, %if.end.i46.i.i.i.for.body.i47.i.i.i_crit_edge ]
  %compat.addr.058.i.i.i.i = phi ptr [ %compat.addr.2.i49.i.i.i, %for.inc.i.i.i.i.for.body.i47.i.i.i_crit_edge ], [ %compat.addr.0.i.i.i.i, %if.end.i46.i.i.i.for.body.i47.i.i.i_crit_edge ]
  %reserved_chanctx.i.i.i.i = getelementptr i8, ptr %.pn59.i.i.i.i, i32 16
  %23 = ptrtoint ptr %reserved_chanctx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reserved_chanctx.i.i.i.i, align 8
  %cmp29.not.i.i.i.i = icmp eq ptr %24, null
  br i1 %cmp29.not.i.i.i.i, label %if.end31.i.i.i.i, label %for.body.i47.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i47.i.i.i.for.inc.i.i.i.i_crit_edge:     ; preds = %for.body.i47.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i.i

if.end31.i.i.i.i:                                 ; preds = %for.body.i47.i.i.i
  %tobool32.not.i.i.i.i = icmp eq ptr %compat.addr.058.i.i.i.i, null
  %chandef.i.i.i.i = getelementptr i8, ptr %.pn59.i.i.i.i, i32 2236
  %spec.select.i48.i.i.i = select i1 %tobool32.not.i.i.i.i, ptr %chandef.i.i.i.i, ptr %compat.addr.058.i.i.i.i
  %call38.i.i.i.i = tail call ptr @cfg80211_chandef_compatible(ptr noundef %chandef.i.i.i.i, ptr noundef %spec.select.i48.i.i.i) #8
  %tobool39.not.i.i.i.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool39.not.i.i.i.i, label %if.end31.i.i.i.i.if.end27.i.i_crit_edge, label %if.end31.i.i.i.i.for.inc.i.i.i.i_crit_edge

if.end31.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %if.end31.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i.i

if.end31.i.i.i.i.if.end27.i.i_crit_edge:          ; preds = %if.end31.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i.i

for.inc.i.i.i.i:                                  ; preds = %if.end31.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i47.i.i.i.for.inc.i.i.i.i_crit_edge
  %compat.addr.2.i49.i.i.i = phi ptr [ %compat.addr.058.i.i.i.i, %for.body.i47.i.i.i.for.inc.i.i.i.i_crit_edge ], [ %call38.i.i.i.i, %if.end31.i.i.i.i.for.inc.i.i.i.i_crit_edge ]
  %25 = ptrtoint ptr %.pn59.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i50.i.i.i = load ptr, ptr %.pn59.i.i.i.i, align 4
  %cmp26.not.i51.i.i.i = icmp eq ptr %.pn.i50.i.i.i, %assigned_vifs.i.i.i.i
  br i1 %cmp26.not.i51.i.i.i, label %ieee80211_chanctx_combined_chandef.exit.i.i, label %for.inc.i.i.i.i.for.body.i47.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i47.i.i.i_crit_edge:     ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i47.i.i.i

ieee80211_chanctx_combined_chandef.exit.i.i:      ; preds = %for.inc.i.i.i.i
  %tobool25.not.i.i = icmp eq ptr %compat.addr.2.i49.i.i.i, null
  br i1 %tobool25.not.i.i, label %ieee80211_chanctx_combined_chandef.exit.i.i.if.end27.i.i_crit_edge, label %ieee80211_chanctx_combined_chandef.exit.i.i.ieee80211_find_reservation_chanctx.exit_crit_edge

ieee80211_chanctx_combined_chandef.exit.i.i.ieee80211_find_reservation_chanctx.exit_crit_edge: ; preds = %ieee80211_chanctx_combined_chandef.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_find_reservation_chanctx.exit

ieee80211_chanctx_combined_chandef.exit.i.i.if.end27.i.i_crit_edge: ; preds = %ieee80211_chanctx_combined_chandef.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %ieee80211_chanctx_combined_chandef.exit.i.i.if.end27.i.i_crit_edge, %if.end31.i.i.i.i.if.end27.i.i_crit_edge, %ieee80211_chanctx_reserved_chandef.exit.i.i.i.if.end27.i.i_crit_edge, %for.body.i.i.i.i.if.end27.i.i_crit_edge
  %26 = ptrtoint ptr %reserved_vifs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %reserved_vifs.i.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %27, %reserved_vifs.i.i.i.i
  br i1 %cmp.i.not.i.i, label %if.end27.i.i.for.inc.i_crit_edge, label %land.lhs.true.i.i

if.end27.i.i.for.inc.i_crit_edge:                 ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i.i:                                ; preds = %if.end27.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %28 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i40.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i40.i.i, label %land.lhs.true.i.i.for.cond.i.i.i.preheader_crit_edge, label %land.rhs.i44.i.i

land.lhs.true.i.i.for.cond.i.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.i.preheader

land.rhs.i44.i.i:                                 ; preds = %land.lhs.true.i.i
  %call.i.i42.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42.i.i)
  %cmp.not.i43.i.i = icmp eq i32 %call.i.i42.i.i, 0
  br i1 %cmp.not.i43.i.i, label %do.end.i45.i.i, label %land.rhs.i44.i.i.for.cond.i.i.i.preheader_crit_edge, !prof !123

land.rhs.i44.i.i.for.cond.i.i.i.preheader_crit_edge: ; preds = %land.rhs.i44.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.i.preheader

do.end.i45.i.i:                                   ; preds = %land.rhs.i44.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 90, i32 noundef 9, ptr noundef null) #8
  br label %for.cond.i.i.i.preheader

for.cond.i.i.i.preheader:                         ; preds = %do.end.i45.i.i, %land.rhs.i44.i.i.for.cond.i.i.i.preheader_crit_edge, %land.lhs.true.i.i.for.cond.i.i.i.preheader_crit_edge
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %for.cond.i.i.i.preheader
  %.pn.in.i.i.i = phi ptr [ %.pn.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ], [ %reserved_vifs.i.i.i.i, %for.cond.i.i.i.preheader ]
  %compat.addr.0.i.i.i = phi ptr [ %call33.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ], [ %chandef, %for.cond.i.i.i.preheader ]
  %29 = ptrtoint ptr %.pn.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 4
  %cmp26.not.i.i.i = icmp eq ptr %.pn.i.i.i, %reserved_vifs.i.i.i.i
  %tobool31.not.i.i = icmp eq ptr %compat.addr.0.i.i.i, null
  br i1 %cmp26.not.i.i.i, label %ieee80211_chanctx_reserved_chandef.exit.i.i, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %reserved_chandef.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 12
  %spec.select.i.i.i = select i1 %tobool31.not.i.i, ptr %reserved_chandef.i.i.i, ptr %compat.addr.0.i.i.i
  %call33.i.i.i = tail call ptr @cfg80211_chandef_compatible(ptr noundef %reserved_chandef.i.i.i, ptr noundef %spec.select.i.i.i) #8
  %tobool34.not.i.i.i = icmp eq ptr %call33.i.i.i, null
  br i1 %tobool34.not.i.i.i, label %for.body.i.i.i.for.inc.i_crit_edge, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.i

for.body.i.i.i.for.inc.i_crit_edge:               ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

ieee80211_chanctx_reserved_chandef.exit.i.i:      ; preds = %for.cond.i.i.i
  br i1 %tobool31.not.i.i, label %ieee80211_chanctx_reserved_chandef.exit.i.i.for.inc.i_crit_edge, label %ieee80211_chanctx_reserved_chandef.exit.i.i.ieee80211_find_reservation_chanctx.exit_crit_edge

ieee80211_chanctx_reserved_chandef.exit.i.i.ieee80211_find_reservation_chanctx.exit_crit_edge: ; preds = %ieee80211_chanctx_reserved_chandef.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_find_reservation_chanctx.exit

ieee80211_chanctx_reserved_chandef.exit.i.i.for.inc.i_crit_edge: ; preds = %ieee80211_chanctx_reserved_chandef.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %ieee80211_chanctx_reserved_chandef.exit.i.i.for.inc.i_crit_edge, %for.body.i.i.i.for.inc.i_crit_edge, %if.end27.i.i.for.inc.i_crit_edge, %if.end34.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %30 = ptrtoint ptr %ctx.062.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %ctx.0.i = load ptr, ptr %ctx.062.i, align 4
  %cmp29.not.i = icmp eq ptr %ctx.0.i, %chanctx_list.i
  br i1 %cmp29.not.i, label %for.inc.i.if.then34_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.then34_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

ieee80211_find_reservation_chanctx.exit:          ; preds = %ieee80211_chanctx_reserved_chandef.exit.i.i.ieee80211_find_reservation_chanctx.exit_crit_edge, %ieee80211_chanctx_combined_chandef.exit.i.i.ieee80211_find_reservation_chanctx.exit_crit_edge, %if.end.i46.i.i.i.ieee80211_find_reservation_chanctx.exit_crit_edge
  %tobool33.not = icmp eq ptr %ctx.062.i, null
  br i1 %tobool33.not, label %ieee80211_find_reservation_chanctx.exit.if.then34_crit_edge, label %ieee80211_find_reservation_chanctx.exit.if.end88_crit_edge

ieee80211_find_reservation_chanctx.exit.if.end88_crit_edge: ; preds = %ieee80211_find_reservation_chanctx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

ieee80211_find_reservation_chanctx.exit.if.then34_crit_edge: ; preds = %ieee80211_find_reservation_chanctx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.then34:                                        ; preds = %ieee80211_find_reservation_chanctx.exit.if.then34_crit_edge, %for.inc.i.if.then34_crit_edge, %if.end26.i.if.then34_crit_edge, %if.end.i.if.then34_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %31 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i142 = icmp eq i32 %31, 0
  br i1 %tobool.not.i142, label %if.then34.if.end.i.i154_crit_edge, label %land.rhs.i146

if.then34.if.end.i.i154_crit_edge:                ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i154

land.rhs.i146:                                    ; preds = %if.then34
  %dep_map.i143 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89, i32 5
  %call.i.i144 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i143, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i144)
  %cmp.not.i145 = icmp eq i32 %call.i.i144, 0
  br i1 %cmp.not.i145, label %do.end.i147, label %land.rhs.i146.if.end.i149_crit_edge, !prof !123

land.rhs.i146.if.end.i149_crit_edge:              ; preds = %land.rhs.i146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i149

do.end.i147:                                      ; preds = %land.rhs.i146
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 65, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i149

if.end.i149:                                      ; preds = %do.end.i147, %land.rhs.i146.if.end.i149_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr.i = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i.i148 = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i.i148, label %if.end.i149.if.end.i.i154_crit_edge, label %land.rhs.i.i152

if.end.i149.if.end.i.i154_crit_edge:              ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i154

land.rhs.i.i152:                                  ; preds = %if.end.i149
  %call.i.i.i150 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i143, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i150)
  %cmp.not.i.i151 = icmp eq i32 %call.i.i.i150, 0
  br i1 %cmp.not.i.i151, label %do.end.i.i153, label %land.rhs.i.i152.if.end.i.i154_crit_edge, !prof !123

land.rhs.i.i152.if.end.i.i154_crit_edge:          ; preds = %land.rhs.i.i152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i154

do.end.i.i153:                                    ; preds = %land.rhs.i.i152
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 55, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i154

if.end.i.i154:                                    ; preds = %do.end.i.i153, %land.rhs.i.i152.if.end.i.i154_crit_edge, %if.end.i149.if.end.i.i154_crit_edge, %if.then34.if.end.i.i154_crit_edge
  %chanctx_list.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 88
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end.i.i154
  %num.0.i.i = phi i32 [ 0, %if.end.i.i154 ], [ %inc.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %ctx.0.in.i.i = phi ptr [ %chanctx_list.i.i, %if.end.i.i154 ], [ %ctx.0.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %32 = ptrtoint ptr %ctx.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %ctx.0.i.i = load ptr, ptr %ctx.0.in.i.i, align 4
  %cmp26.not.i.i = icmp eq ptr %ctx.0.i.i, %chanctx_list.i.i
  %inc.i.i = add i32 %num.0.i.i, 1
  br i1 %cmp26.not.i.i, label %ieee80211_can_create_new_chanctx.exit, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

ieee80211_can_create_new_chanctx.exit:            ; preds = %for.cond.i.i
  %call25.i = tail call i32 @ieee80211_max_num_channels(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %num.0.i.i, i32 %call25.i)
  %cmp26.i = icmp slt i32 %num.0.i.i, %call25.i
  br i1 %cmp26.i, label %if.then36, label %if.else

if.then36:                                        ; preds = %ieee80211_can_create_new_chanctx.exit
  %call37 = tail call fastcc ptr @ieee80211_new_chanctx(ptr noundef %1, ptr noundef %chandef, i32 noundef %mode)
  %cmp.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then39, label %if.then36.if.end88_crit_edge

if.then36.if.end88_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then39:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %call37 to i32
  br label %cleanup

if.else:                                          ; preds = %ieee80211_can_create_new_chanctx.exit
  br i1 %tobool26.not, label %if.else.if.then47_crit_edge, label %lor.lhs.false

if.else.if.then47_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47

lor.lhs.false:                                    ; preds = %if.else
  %replace_state = getelementptr inbounds %struct.ieee80211_chanctx, ptr %retval.0.i, i32 0, i32 4
  %34 = ptrtoint ptr %replace_state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %replace_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp43 = icmp eq i32 %35, 1
  br i1 %cmp43, label %lor.lhs.false.if.then47_crit_edge, label %lor.lhs.false44

lor.lhs.false.if.then47_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47

lor.lhs.false44:                                  ; preds = %lor.lhs.false
  %reserved_vifs = getelementptr inbounds %struct.ieee80211_chanctx, ptr %retval.0.i, i32 0, i32 3
  %36 = ptrtoint ptr %reserved_vifs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %reserved_vifs, align 4
  %cmp.i155.not = icmp eq ptr %37, %reserved_vifs
  br i1 %cmp.i155.not, label %lor.lhs.false44.lor.lhs.false69_crit_edge, label %lor.lhs.false44.if.then47_crit_edge

lor.lhs.false44.if.then47_crit_edge:              ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47

lor.lhs.false44.lor.lhs.false69_crit_edge:        ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false69

if.then47:                                        ; preds = %lor.lhs.false44.if.then47_crit_edge, %lor.lhs.false.if.then47_crit_edge, %if.else.if.then47_crit_edge
  %38 = ptrtoint ptr %chanctx_list.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %ctx.0185 = load ptr, ptr %chanctx_list.i.i, align 4
  %cmp50.not186 = icmp eq ptr %ctx.0185, %chanctx_list.i.i
  br i1 %cmp50.not186, label %if.then47.if.end67_crit_edge, label %if.then47.for.body_crit_edge

if.then47.for.body_crit_edge:                     ; preds = %if.then47
  br label %for.body

if.then47.if.end67_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then47.for.body_crit_edge
  %ctx.0187 = phi ptr [ %ctx.0, %for.inc.for.body_crit_edge ], [ %ctx.0185, %if.then47.for.body_crit_edge ]
  %replace_state53 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.0187, i32 0, i32 4
  %39 = ptrtoint ptr %replace_state53 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %replace_state53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp54.not = icmp eq i32 %40, 0
  br i1 %cmp54.not, label %if.end56, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end56:                                         ; preds = %for.body
  %reserved_vifs57 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.0187, i32 0, i32 3
  %41 = ptrtoint ptr %reserved_vifs57 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %reserved_vifs57, align 4
  %cmp.i156.not = icmp eq ptr %42, %reserved_vifs57
  br i1 %cmp.i156.not, label %if.end56.if.end67_crit_edge, label %if.end56.for.inc_crit_edge

if.end56.for.inc_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end56.if.end67_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

for.inc:                                          ; preds = %if.end56.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %43 = ptrtoint ptr %ctx.0187 to i32
  call void @__asan_load4_noabort(i32 %43)
  %ctx.0 = load ptr, ptr %ctx.0187, align 4
  %cmp50.not = icmp eq ptr %ctx.0, %chanctx_list.i.i
  br i1 %cmp50.not, label %for.inc.if.end67_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end67_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.end67:                                         ; preds = %for.inc.if.end67_crit_edge, %if.end56.if.end67_crit_edge, %if.then47.if.end67_crit_edge
  %curr_ctx.0 = phi ptr [ %retval.0.i, %if.then47.if.end67_crit_edge ], [ %ctx.0187, %if.end56.if.end67_crit_edge ], [ %retval.0.i, %for.inc.if.end67_crit_edge ]
  %tobool68.not = icmp eq ptr %curr_ctx.0, null
  br i1 %tobool68.not, label %if.end67.cleanup_crit_edge, label %if.end67.lor.lhs.false69_crit_edge

if.end67.lor.lhs.false69_crit_edge:               ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false69

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false69:                                  ; preds = %if.end67.lor.lhs.false69_crit_edge, %lor.lhs.false44.lor.lhs.false69_crit_edge
  %curr_ctx.0178 = phi ptr [ %curr_ctx.0, %if.end67.lor.lhs.false69_crit_edge ], [ %add.ptr.i, %lor.lhs.false44.lor.lhs.false69_crit_edge ]
  %replace_state70 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %curr_ctx.0178, i32 0, i32 4
  %44 = ptrtoint ptr %replace_state70 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %replace_state70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp71 = icmp eq i32 %45, 1
  br i1 %cmp71, label %lor.lhs.false69.cleanup_crit_edge, label %lor.lhs.false72

lor.lhs.false69.cleanup_crit_edge:                ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false72:                                  ; preds = %lor.lhs.false69
  %reserved_vifs73 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %curr_ctx.0178, i32 0, i32 3
  %46 = ptrtoint ptr %reserved_vifs73 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %reserved_vifs73, align 4
  %cmp.i158.not = icmp eq ptr %47, %reserved_vifs73
  br i1 %cmp.i158.not, label %if.end77, label %lor.lhs.false72.cleanup_crit_edge

lor.lhs.false72.cleanup_crit_edge:                ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end77:                                         ; preds = %lor.lhs.false72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %48 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i160 = icmp eq i32 %48, 0
  br i1 %tobool.not.i160, label %if.end77.if.end8.i.i.i_crit_edge, label %land.rhs.i164

if.end77.if.end8.i.i.i_crit_edge:                 ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i.i

land.rhs.i164:                                    ; preds = %if.end77
  %dep_map.i161 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89, i32 5
  %call.i.i162 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i161, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i162)
  %cmp.not.i163 = icmp eq i32 %call.i.i162, 0
  br i1 %cmp.not.i163, label %do.end.i165, label %land.rhs.i164.if.end8.i.i.i_crit_edge, !prof !123

land.rhs.i164.if.end8.i.i.i_crit_edge:            ; preds = %land.rhs.i164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i.i

do.end.i165:                                      ; preds = %land.rhs.i164
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 553, i32 noundef 9, ptr noundef null) #8
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %do.end.i165, %land.rhs.i164.if.end8.i.i.i_crit_edge, %if.end77.if.end8.i.i.i_crit_edge
  %chanctx_data_size.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 9
  %49 = ptrtoint ptr %chanctx_data_size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %chanctx_data_size.i, align 4
  %add.i = add i32 %50, 108
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #11
  %tobool25.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool25.not.i, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end81

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end81:                                         ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %assigned_vifs.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %call9.i.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %assigned_vifs.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %assigned_vifs.i, ptr %assigned_vifs.i, align 16
  %prev.i.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %call9.i.i.i, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %assigned_vifs.i, ptr %prev.i.i, align 4
  %reserved_vifs.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %call9.i.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %reserved_vifs.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %reserved_vifs.i, ptr %reserved_vifs.i, align 8
  %prev.i44.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %call9.i.i.i, i32 0, i32 3, i32 1
  %54 = ptrtoint ptr %prev.i44.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %reserved_vifs.i, ptr %prev.i44.i, align 4
  %conf.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %call9.i.i.i, i32 0, i32 8
  %55 = call ptr @memcpy(ptr %conf.i, ptr %chandef, i32 28)
  %rx_chains_static.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %call9.i.i.i, i32 0, i32 8, i32 2
  %56 = ptrtoint ptr %rx_chains_static.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %rx_chains_static.i, align 8
  %rx_chains_dynamic.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %call9.i.i.i, i32 0, i32 8, i32 3
  %57 = ptrtoint ptr %rx_chains_dynamic.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %rx_chains_dynamic.i, align 1
  %mode30.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %call9.i.i.i, i32 0, i32 6
  %58 = ptrtoint ptr %mode30.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %mode, ptr %mode30.i, align 8
  %radar_enabled.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %call9.i.i.i, i32 0, i32 8, i32 4
  %59 = ptrtoint ptr %radar_enabled.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %radar_enabled.i, align 2
  tail call void @ieee80211_recalc_chanctx_min_def(ptr noundef %1, ptr noundef nonnull %call9.i.i.i) #8
  %replace_ctx = getelementptr inbounds %struct.ieee80211_chanctx, ptr %call9.i.i.i, i32 0, i32 5
  %60 = ptrtoint ptr %replace_ctx to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %curr_ctx.0178, ptr %replace_ctx, align 4
  %replace_state82 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %call9.i.i.i, i32 0, i32 4
  %61 = ptrtoint ptr %replace_state82 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %replace_state82, align 32
  %replace_ctx83 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %curr_ctx.0178, i32 0, i32 5
  %62 = ptrtoint ptr %replace_ctx83 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call9.i.i.i, ptr %replace_ctx83, align 4
  %63 = ptrtoint ptr %replace_state70 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %replace_state70, align 4
  tail call fastcc void @list_add_rcu(ptr noundef nonnull %call9.i.i.i, ptr noundef %chanctx_list.i.i)
  br label %if.end88

if.end88:                                         ; preds = %if.end81, %if.then36.if.end88_crit_edge, %ieee80211_find_reservation_chanctx.exit.if.end88_crit_edge
  %new_ctx.0 = phi ptr [ %ctx.062.i, %ieee80211_find_reservation_chanctx.exit.if.end88_crit_edge ], [ %call37, %if.then36.if.end88_crit_edge ], [ %call9.i.i.i, %if.end81 ]
  %reserved_chanctx_list = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 34
  %reserved_vifs89 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %new_ctx.0, i32 0, i32 3
  %64 = ptrtoint ptr %reserved_vifs89 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reserved_vifs89, align 4
  %call.i.i172 = tail call zeroext i1 @__list_add_valid(ptr noundef %reserved_chanctx_list, ptr noundef %reserved_vifs89, ptr noundef %65) #8
  br i1 %call.i.i172, label %if.end.i.i173, label %if.end88.list_add.exit_crit_edge

if.end88.list_add.exit_crit_edge:                 ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i173:                                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %reserved_chanctx_list, ptr %prev1.i.i, align 4
  %67 = ptrtoint ptr %reserved_chanctx_list to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %65, ptr %reserved_chanctx_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 34, i32 1
  %68 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %reserved_vifs89, ptr %prev3.i.i, align 4
  %69 = ptrtoint ptr %reserved_vifs89 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %reserved_chanctx_list, ptr %reserved_vifs89, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i173, %if.end88.list_add.exit_crit_edge
  %reserved_chanctx = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 35
  %70 = ptrtoint ptr %reserved_chanctx to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %new_ctx.0, ptr %reserved_chanctx, align 8
  %reserved_chandef = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 36
  %71 = call ptr @memcpy(ptr %reserved_chandef, ptr %chandef, i32 28)
  %reserved_radar_required = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 37
  %72 = ptrtoint ptr %reserved_radar_required to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %frombool, ptr %reserved_radar_required, align 8
  %reserved_ready = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 38
  %73 = ptrtoint ptr %reserved_ready to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %reserved_ready, align 1
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.end8.i.i.i.cleanup_crit_edge, %lor.lhs.false72.cleanup_crit_edge, %lor.lhs.false69.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.then39, %land.lhs.true28.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add.exit ], [ %33, %if.then39 ], [ -524, %land.lhs.true28.cleanup_crit_edge ], [ -16, %lor.lhs.false72.cleanup_crit_edge ], [ -16, %lor.lhs.false69.cleanup_crit_edge ], [ -16, %if.end67.cleanup_crit_edge ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_new_chanctx(ptr noundef %local, ptr nocapture noundef readonly %chandef, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end8.i.i.i_crit_edge, label %land.rhs

entry.if.end8.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i.i

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !123

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 610, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool26.not = icmp eq i32 %.pr, 0
  br i1 %tobool26.not, label %if.end.if.end8.i.i.i_crit_edge, label %land.rhs27

if.end.if.end8.i.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i.i

land.rhs27:                                       ; preds = %if.end
  %dep_map28 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 89, i32 5
  %call.i87 = tail call i32 @lock_is_held_type(ptr noundef %dep_map28, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %cmp30.not = icmp eq i32 %call.i87, 0
  br i1 %cmp30.not, label %do.end49, label %land.rhs27.if.end55_crit_edge, !prof !123

land.rhs27.if.end55_crit_edge:                    ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.end49:                                         ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 611, i32 noundef 9, ptr noundef null) #8
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %land.rhs27.if.end55_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr90 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr90)
  %tobool.not.i = icmp eq i32 %.pr90, 0
  br i1 %tobool.not.i, label %if.end55.if.end8.i.i.i_crit_edge, label %land.rhs.i

if.end55.if.end8.i.i.i_crit_edge:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i.i

land.rhs.i:                                       ; preds = %if.end55
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map28, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end8.i.i.i_crit_edge, !prof !123

land.rhs.i.if.end8.i.i.i_crit_edge:               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 553, i32 noundef 9, ptr noundef null) #8
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %do.end.i, %land.rhs.i.if.end8.i.i.i_crit_edge, %if.end55.if.end8.i.i.i_crit_edge, %if.end.if.end8.i.i.i_crit_edge, %entry.if.end8.i.i.i_crit_edge
  %chanctx_data_size.i = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 9
  %1 = ptrtoint ptr %chanctx_data_size.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chanctx_data_size.i, align 4
  %add.i = add i32 %2, 108
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #11
  %tobool25.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool25.not.i, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end69

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end69:                                         ; preds = %if.end8.i.i.i
  %assigned_vifs.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %call9.i.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %assigned_vifs.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %assigned_vifs.i, ptr %assigned_vifs.i, align 16
  %prev.i.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %call9.i.i.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %assigned_vifs.i, ptr %prev.i.i, align 4
  %reserved_vifs.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %call9.i.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %reserved_vifs.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %reserved_vifs.i, ptr %reserved_vifs.i, align 8
  %prev.i44.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %call9.i.i.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i44.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %reserved_vifs.i, ptr %prev.i44.i, align 4
  %conf.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %call9.i.i.i, i32 0, i32 8
  %7 = call ptr @memcpy(ptr %conf.i, ptr %chandef, i32 28)
  %rx_chains_static.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %call9.i.i.i, i32 0, i32 8, i32 2
  %8 = ptrtoint ptr %rx_chains_static.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %rx_chains_static.i, align 8
  %rx_chains_dynamic.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %call9.i.i.i, i32 0, i32 8, i32 3
  %9 = ptrtoint ptr %rx_chains_dynamic.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %rx_chains_dynamic.i, align 1
  %mode30.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %call9.i.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %mode30.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mode, ptr %mode30.i, align 8
  %radar_enabled.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %call9.i.i.i, i32 0, i32 8, i32 4
  %11 = ptrtoint ptr %radar_enabled.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %radar_enabled.i, align 2
  tail call void @ieee80211_recalc_chanctx_min_def(ptr noundef %local, ptr noundef nonnull %call9.i.i.i) #8
  %call70 = tail call fastcc i32 @ieee80211_add_chanctx(ptr noundef %local, ptr noundef nonnull %call9.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end74, label %if.then72

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #8
  %12 = inttoptr i32 %call70 to ptr
  br label %cleanup

if.end74:                                         ; preds = %if.end69
  %chanctx_list = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 88
  %13 = ptrtoint ptr %chanctx_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chanctx_list, align 4
  %call.i.i88 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i, ptr noundef %chanctx_list, ptr noundef %14) #8
  br i1 %call.i.i88, label %if.end.i.i, label %if.end74.cleanup_crit_edge

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %call9.i.i.i, align 128
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %chanctx_list, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !129
  %17 = ptrtoint ptr %chanctx_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call9.i.i.i, ptr %chanctx_list, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i.i, ptr %prev37.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end74.cleanup_crit_edge, %if.then72, %if.end8.i.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %12, %if.then72 ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.i.cleanup_crit_edge ], [ %call9.i.i.i, %if.end74.cleanup_crit_edge ], [ %call9.i.i.i, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_rcu(ptr noundef %new, ptr noundef %head) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %head, ptr noundef %1) #8
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !129
  %4 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %new, ptr %head, align 4
  %prev37.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %prev37.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %new, ptr %prev37.i, align 4
  br label %__list_add_rcu.exit

__list_add_rcu.exit:                              ; preds = %if.end.i, %entry.__list_add_rcu.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_vif_use_channel(ptr noundef %sdata, ptr noundef %chandef, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 66, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !123

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1671, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %tobool26.not = icmp eq ptr %4, null
  br i1 %tobool26.not, label %if.end.if.end52_crit_edge, label %land.rhs27

if.end.if.end52_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

land.rhs27:                                       ; preds = %if.end
  %state.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %do.end46, label %land.rhs27.if.end52_crit_edge, !prof !123

land.rhs27.if.end52_crit_edge:                    ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

do.end46:                                         ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1673, i32 noundef 9, ptr noundef null) #8
  br label %if.end52

if.end52:                                         ; preds = %do.end46, %land.rhs27.if.end52_crit_edge, %if.end.if.end52_crit_edge
  %chanctx_mtx = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %chanctx_mtx, i32 noundef 0) #8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy, align 8
  %iftype = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iftype, align 4
  %call60 = tail call i32 @cfg80211_chandef_dfs_required(ptr noundef %9, ptr noundef %chandef, i32 noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.end52.if.then92_crit_edge, label %if.end63

if.end52.if.then92_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

if.end63:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp64.not = icmp eq i32 %call60, 0
  br i1 %cmp64.not, label %if.end63.if.end66_crit_edge, label %if.then65

if.end63.if.end66_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %width = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 4
  %shl = shl nuw i32 1, %13
  %conv = trunc i32 %shl to i8
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end63.if.end66_crit_edge
  %radar_detect_width.0 = phi i8 [ %conv, %if.then65 ], [ 0, %if.end63.if.end66_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool67 = icmp ne i32 %call60, 0
  %radar_required = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 47
  %frombool = zext i1 %tobool67 to i8
  %14 = ptrtoint ptr %radar_required to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool, ptr %radar_required, align 4
  %call68 = tail call i32 @ieee80211_check_combinations(ptr noundef %sdata, ptr noundef %chandef, i32 noundef %mode, i8 noundef zeroext %radar_detect_width.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.end66.if.then92_crit_edge, label %if.end72

if.end66.if.then92_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

if.end72:                                         ; preds = %if.end66
  tail call fastcc void @__ieee80211_vif_release_channel(ptr noundef %sdata)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %15 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i136 = icmp eq i32 %15, 0
  br i1 %tobool.not.i136, label %if.end72.if.end.i_crit_edge, label %land.rhs.i

if.end72.if.end.i_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end72
  %dep_map.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !123

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 469, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end72.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp24.i = icmp eq i32 %mode, 1
  br i1 %cmp24.i, label %if.end.i.if.then75_crit_edge, label %if.end26.i

if.end.i.if.then75_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then75

if.end26.i:                                       ; preds = %if.end.i
  %chanctx_list.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 88
  %16 = ptrtoint ptr %chanctx_list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %ctx.075.i = load ptr, ptr %chanctx_list.i, align 4
  %cmp29.not76.i = icmp eq ptr %ctx.075.i, %chanctx_list.i
  br i1 %cmp29.not76.i, label %if.end26.i.if.then75_crit_edge, label %for.body.lr.ph.i

if.end26.i.if.then75_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then75

for.body.lr.ph.i:                                 ; preds = %if.end26.i
  %dep_map.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ctx.077.i = phi ptr [ %ctx.075.i, %for.body.lr.ph.i ], [ %ctx.0.i, %cleanup.i.for.body.i_crit_edge ]
  %replace_state.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.077.i, i32 0, i32 4
  %17 = ptrtoint ptr %replace_state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %replace_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp32.not.i = icmp eq i32 %18, 0
  br i1 %cmp32.not.i, label %if.end34.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end34.i:                                       ; preds = %for.body.i
  %mode35.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.077.i, i32 0, i32 6
  %19 = ptrtoint ptr %mode35.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mode35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp36.i = icmp eq i32 %20, 1
  br i1 %cmp36.i, label %if.end34.i.cleanup.i_crit_edge, label %if.end38.i

if.end34.i.cleanup.i_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end38.i:                                       ; preds = %if.end34.i
  %conf.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.077.i, i32 0, i32 8
  %call39.i = tail call ptr @cfg80211_chandef_compatible(ptr noundef %conf.i, ptr noundef %chandef) #8
  %tobool40.not.i = icmp eq ptr %call39.i, null
  br i1 %tobool40.not.i, label %if.end38.i.cleanup.i_crit_edge, label %if.end42.i

if.end38.i.cleanup.i_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end42.i:                                       ; preds = %if.end38.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %21 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %if.end42.i.if.end.i.i_crit_edge, label %land.rhs.i.i

if.end42.i.if.end.i.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %if.end42.i
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !123

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 90, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %if.end42.i.if.end.i.i_crit_edge
  %reserved_vifs.i.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.077.i, i32 0, i32 3
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i.i
  %.pn.in.i.i = phi ptr [ %reserved_vifs.i.i, %if.end.i.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %compat.addr.0.i.i = phi ptr [ %call39.i, %if.end.i.i ], [ %call33.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %22 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp26.not.i.i = icmp eq ptr %.pn.i.i, %reserved_vifs.i.i
  br i1 %cmp26.not.i.i, label %ieee80211_find_chanctx.exit, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %reserved_chandef.i.i = getelementptr i8, ptr %.pn.i.i, i32 12
  %call33.i.i = tail call ptr @cfg80211_chandef_compatible(ptr noundef %reserved_chandef.i.i, ptr noundef nonnull %compat.addr.0.i.i) #8
  %tobool34.not.i.i = icmp eq ptr %call33.i.i, null
  br i1 %tobool34.not.i.i, label %for.body.i.i.cleanup.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

for.body.i.i.cleanup.i_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.body.i.i.cleanup.i_crit_edge, %if.end38.i.cleanup.i_crit_edge, %if.end34.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %23 = ptrtoint ptr %ctx.077.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %ctx.0.i = load ptr, ptr %ctx.077.i, align 4
  %cmp29.not.i = icmp eq ptr %ctx.0.i, %chanctx_list.i
  br i1 %cmp29.not.i, label %cleanup.i.if.then75_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

cleanup.i.if.then75_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then75

ieee80211_find_chanctx.exit:                      ; preds = %for.cond.i.i
  tail call fastcc void @ieee80211_change_chanctx(ptr noundef %1, ptr noundef %ctx.077.i, ptr noundef %ctx.077.i, ptr noundef nonnull %compat.addr.0.i.i) #8
  %tobool74.not = icmp eq ptr %ctx.077.i, null
  br i1 %tobool74.not, label %ieee80211_find_chanctx.exit.if.then75_crit_edge, label %ieee80211_find_chanctx.exit.if.end77_crit_edge

ieee80211_find_chanctx.exit.if.end77_crit_edge:   ; preds = %ieee80211_find_chanctx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

ieee80211_find_chanctx.exit.if.then75_crit_edge:  ; preds = %ieee80211_find_chanctx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then75

if.then75:                                        ; preds = %ieee80211_find_chanctx.exit.if.then75_crit_edge, %cleanup.i.if.then75_crit_edge, %if.end26.i.if.then75_crit_edge, %if.end.i.if.then75_crit_edge
  %call76 = tail call fastcc ptr @ieee80211_new_chanctx(ptr noundef %1, ptr noundef %chandef, i32 noundef %mode)
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %ieee80211_find_chanctx.exit.if.end77_crit_edge
  %ctx.0 = phi ptr [ %ctx.077.i, %ieee80211_find_chanctx.exit.if.end77_crit_edge ], [ %call76, %if.then75 ]
  %cmp.i = icmp ugt ptr %ctx.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %out, label %if.end81

if.end81:                                         ; preds = %if.end77
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %chandef1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32
  %24 = call ptr @memcpy(ptr %chandef1.i, ptr %chandef, i32 28)
  %25 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vif.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp.not.i137 = icmp eq i32 %26, 3
  br i1 %cmp.not.i137, label %if.end.i138, label %if.end81.ieee80211_vif_update_chandef.exit_crit_edge

if.end81.ieee80211_vif_update_chandef.exit_crit_edge: ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_update_chandef.exit

if.end.i138:                                      ; preds = %if.end81
  %vlans.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 0, i32 4
  %27 = ptrtoint ptr %vlans.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn22.i = load ptr, ptr %vlans.i, align 4
  %cmp6.not23.i = icmp eq ptr %.pn22.i, %vlans.i
  br i1 %cmp6.not23.i, label %if.end.i138.ieee80211_vif_update_chandef.exit_crit_edge, label %if.end.i138.for.body.i139_crit_edge

if.end.i138.for.body.i139_crit_edge:              ; preds = %if.end.i138
  br label %for.body.i139

if.end.i138.ieee80211_vif_update_chandef.exit_crit_edge: ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_update_chandef.exit

for.body.i139:                                    ; preds = %for.body.i139.for.body.i139_crit_edge, %if.end.i138.for.body.i139_crit_edge
  %.pn24.i = phi ptr [ %.pn.i, %for.body.i139.for.body.i139_crit_edge ], [ %.pn22.i, %if.end.i138.for.body.i139_crit_edge ]
  %chandef9.i = getelementptr i8, ptr %.pn24.i, i32 1636
  %28 = call ptr @memcpy(ptr %chandef9.i, ptr %chandef, i32 28)
  %29 = ptrtoint ptr %.pn24.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i = load ptr, ptr %.pn24.i, align 4
  %cmp6.not.i = icmp eq ptr %.pn.i, %vlans.i
  br i1 %cmp6.not.i, label %for.body.i139.ieee80211_vif_update_chandef.exit_crit_edge, label %for.body.i139.for.body.i139_crit_edge

for.body.i139.for.body.i139_crit_edge:            ; preds = %for.body.i139
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i139

for.body.i139.ieee80211_vif_update_chandef.exit_crit_edge: ; preds = %for.body.i139
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_update_chandef.exit

ieee80211_vif_update_chandef.exit:                ; preds = %for.body.i139.ieee80211_vif_update_chandef.exit_crit_edge, %if.end.i138.ieee80211_vif_update_chandef.exit_crit_edge, %if.end81.ieee80211_vif_update_chandef.exit_crit_edge
  %call82 = tail call fastcc i32 @ieee80211_assign_vif_chanctx(ptr noundef %sdata, ptr noundef %ctx.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %out.thread147, label %if.then84

if.then84:                                        ; preds = %ieee80211_vif_update_chandef.exit
  %call85 = tail call i32 @ieee80211_chanctx_refcount(ptr noundef %1, ptr noundef %ctx.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp eq i32 %call85, 0
  br i1 %cmp86, label %if.then88, label %if.then84.if.then92_crit_edge

if.then84.if.then92_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

if.then88:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ieee80211_free_chanctx(ptr noundef %1, ptr noundef %ctx.0)
  br label %if.then92

out.thread147:                                    ; preds = %ieee80211_vif_update_chandef.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_recalc_smps_chanctx(ptr noundef %1, ptr noundef %ctx.0)
  tail call fastcc void @ieee80211_recalc_radar_chanctx(ptr noundef %1, ptr noundef %ctx.0)
  br label %if.end94

out:                                              ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %ctx.0 to i32
  br label %if.then92

if.then92:                                        ; preds = %out, %if.then88, %if.then84.if.then92_crit_edge, %if.end66.if.then92_crit_edge, %if.end52.if.then92_crit_edge
  %ret.0145 = phi i32 [ %30, %out ], [ %call82, %if.then84.if.then92_crit_edge ], [ %call82, %if.then88 ], [ %call68, %if.end66.if.then92_crit_edge ], [ %call60, %if.end52.if.then92_crit_edge ]
  %radar_required93 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 47
  %31 = ptrtoint ptr %radar_required93 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %radar_required93, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %out.thread147
  %ret.0146 = phi i32 [ %ret.0145, %if.then92 ], [ 0, %out.thread147 ]
  tail call void @mutex_unlock(ptr noundef %chanctx_mtx) #8
  ret i32 %ret.0146
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_chandef_dfs_required(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_check_combinations(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ieee80211_vif_release_channel(ptr noundef %sdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !123

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1632, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %dep_map27 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89, i32 5
  %call.i84 = tail call i32 @lock_is_held_type(ptr noundef %dep_map27, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool29.not = icmp eq i32 %call.i84, 0
  br i1 %tobool29.not, label %land.lhs.true, label %if.end.do.end37_crit_edge

if.end.do.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end37

land.lhs.true:                                    ; preds = %if.end
  %call30 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true.do.end37_crit_edge, label %land.lhs.true32

land.lhs.true.do.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end37

land.lhs.true32:                                  ; preds = %land.lhs.true
  %.b83 = load i1, ptr @__ieee80211_vif_release_channel.__warned, align 1
  br i1 %.b83, label %land.lhs.true32.do.end37_crit_edge, label %if.then34

land.lhs.true32.do.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end37

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__ieee80211_vif_release_channel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1635, ptr noundef nonnull @.str.12) #8
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %land.lhs.true32.do.end37_crit_edge, %land.lhs.true.do.end37_crit_edge, %if.end.do.end37_crit_edge
  %chanctx_conf = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %3 = ptrtoint ptr %chanctx_conf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chanctx_conf, align 4
  %tobool39.not = icmp eq ptr %4, null
  br i1 %tobool39.not, label %do.end37.cleanup_crit_edge, label %if.end41

do.end37.cleanup_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41:                                         ; preds = %do.end37
  %add.ptr = getelementptr i8, ptr %4, i32 -48
  %reserved_chanctx = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 35
  %5 = ptrtoint ptr %reserved_chanctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reserved_chanctx, align 8
  %tobool43.not = icmp eq ptr %6, null
  br i1 %tobool43.not, label %if.end41.if.end54_crit_edge, label %if.then44

if.end41.if.end54_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then44:                                        ; preds = %if.end41
  %replace_state = getelementptr inbounds %struct.ieee80211_chanctx, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %replace_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %replace_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp46 = icmp eq i32 %8, 2
  br i1 %cmp46, label %land.lhs.true47, label %if.then44.if.end52_crit_edge

if.then44.if.end52_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

land.lhs.true47:                                  ; preds = %if.then44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %land.lhs.true47.if.end.i_crit_edge, label %land.rhs.i

land.lhs.true47.if.end.i_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i:                                       ; preds = %land.lhs.true47
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map27, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !123

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 35, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %land.lhs.true47.if.end.i_crit_edge
  %reserved_vifs.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %6, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.end.i
  %num.0.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %.pn.in.i = phi ptr [ %reserved_vifs.i, %if.end.i ], [ %.pn.i, %for.cond.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp26.not.i = icmp eq ptr %.pn.i, %reserved_vifs.i
  %inc.i = add i32 %num.0.i, 1
  br i1 %cmp26.not.i, label %ieee80211_chanctx_num_reserved.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

ieee80211_chanctx_num_reserved.exit:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num.0.i)
  %cmp50 = icmp sgt i32 %num.0.i, 1
  br label %if.end52

if.end52:                                         ; preds = %ieee80211_chanctx_num_reserved.exit, %if.then44.if.end52_crit_edge
  %use_reserved_switch.0 = phi i1 [ false, %if.then44.if.end52_crit_edge ], [ %cmp50, %ieee80211_chanctx_num_reserved.exit ]
  %call53 = tail call i32 @ieee80211_vif_unreserve_chanctx(ptr noundef %sdata)
  br label %if.end54

if.end54:                                         ; preds = %if.end52, %if.end41.if.end54_crit_edge
  %use_reserved_switch.1.off0 = phi i1 [ %use_reserved_switch.0, %if.end52 ], [ false, %if.end41.if.end54_crit_edge ]
  %call55 = tail call fastcc i32 @ieee80211_assign_vif_chanctx(ptr noundef %sdata, ptr noundef null)
  %call56 = tail call i32 @ieee80211_chanctx_refcount(ptr noundef %1, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then58, label %if.end54.if.end59_crit_edge

if.end54.if.end59_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ieee80211_free_chanctx(ptr noundef %1, ptr noundef %add.ptr)
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end54.if.end59_crit_edge
  %radar_required = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 47
  %11 = ptrtoint ptr %radar_required to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %radar_required, align 4
  br i1 %use_reserved_switch.1.off0, label %if.then61, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %call62 = tail call fastcc i32 @ieee80211_vif_use_reserved_switch(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %if.end59.cleanup_crit_edge, %do.end37.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_assign_vif_chanctx(ptr noundef %sdata, ptr noundef %new_ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %cmp = icmp eq i32 %3, 12
  br i1 %cmp, label %do.end, label %do.body23, !prof !123

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 756, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

do.body23:                                        ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not = icmp eq i32 %call.i, 0
  br i1 %tobool24.not, label %land.lhs.true, label %do.body23.do.end32_crit_edge

do.body23.do.end32_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end32

land.lhs.true:                                    ; preds = %do.body23
  %call25 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true.do.end32_crit_edge, label %land.lhs.true27

land.lhs.true.do.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end32

land.lhs.true27:                                  ; preds = %land.lhs.true
  %.b157 = load i1, ptr @ieee80211_assign_vif_chanctx.__warned, align 1
  br i1 %.b157, label %land.lhs.true27.do.end32_crit_edge, label %if.then29

land.lhs.true27.do.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end32

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_assign_vif_chanctx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 760, ptr noundef nonnull @.str.12) #8
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %land.lhs.true27.do.end32_crit_edge, %land.lhs.true.do.end32_crit_edge, %do.body23.do.end32_crit_edge
  %chanctx_conf = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %4 = ptrtoint ptr %chanctx_conf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chanctx_conf, align 4
  %tobool35.not = icmp eq ptr %5, null
  br i1 %tobool35.not, label %do.end32.if.end38_crit_edge, label %if.then36

do.end32.if.end38_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then36:                                        ; preds = %do.end32
  %add.ptr = getelementptr i8, ptr %5, i32 -48
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 943) #8
  %flags.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 8
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end52.i

land.rhs.i:                                       ; preds = %if.then36
  %.b132.i = load i1, ptr @drv_unassign_vif_chanctx.__already_done, align 1
  br i1 %.b132.i, label %land.rhs.i.drv_unassign_vif_chanctx.exit_crit_edge, label %return.critedge.i, !prof !125

land.rhs.i.drv_unassign_vif_chanctx.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drv_unassign_vif_chanctx.exit

if.end52.i:                                       ; preds = %if.then36
  tail call fastcc void @trace_drv_unassign_vif_chanctx(ptr noundef %1, ptr noundef %sdata, ptr noundef %add.ptr) #8
  %ops.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %unassign_vif_chanctx.i = getelementptr inbounds %struct.ieee80211_ops, ptr %9, i32 0, i32 76
  %10 = ptrtoint ptr %unassign_vif_chanctx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %unassign_vif_chanctx.i, align 4
  %tobool53.not.i = icmp eq ptr %11, null
  br i1 %tobool53.not.i, label %if.end52.i.if.end113.i_crit_edge, label %if.then54.i

if.end52.i.if.end113.i_crit_edge:                 ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113.i

if.then54.i:                                      ; preds = %if.end52.i
  %driver_present.i = getelementptr i8, ptr %5, i32 -4
  %12 = ptrtoint ptr %driver_present.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %driver_present.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool56.not.i = icmp eq i8 %13, 0
  br i1 %tobool56.not.i, label %land.rhs65.i, label %if.then54.i.if.end103.i_crit_edge

if.then54.i.if.end103.i_crit_edge:                ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.i

land.rhs65.i:                                     ; preds = %if.then54.i
  %.b130131.i = load i1, ptr @drv_unassign_vif_chanctx.__already_done.21, align 1
  br i1 %.b130131.i, label %land.rhs65.i.if.end103.i_crit_edge, label %if.then76.i, !prof !125

land.rhs65.i.if.end103.i_crit_edge:               ; preds = %land.rhs65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.i

if.then76.i:                                      ; preds = %land.rhs65.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @drv_unassign_vif_chanctx.__already_done.21, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 950, i32 noundef 9, ptr noundef null) #8
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then76.i, %land.rhs65.i.if.end103.i_crit_edge, %if.then54.i.if.end103.i_crit_edge
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %unassign_vif_chanctx112.i = getelementptr inbounds %struct.ieee80211_ops, ptr %15, i32 0, i32 76
  %16 = ptrtoint ptr %unassign_vif_chanctx112.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unassign_vif_chanctx112.i, align 4
  tail call void %17(ptr noundef %1, ptr noundef %vif, ptr noundef nonnull %5) #8
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.end103.i, %if.end52.i.if.end113.i_crit_edge
  tail call fastcc void @trace_drv_return_void(ptr noundef %1) #8
  br label %drv_unassign_vif_chanctx.exit

return.critedge.i:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @drv_unassign_vif_chanctx.__already_done, align 1
  %dev.c.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %18 = ptrtoint ptr %dev.c.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.c.i, align 8
  %tobool22.not.c.i = icmp eq ptr %19, null
  %name24.c.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %cond.c.i = select i1 %tobool22.not.c.i, ptr %name24.c.i, ptr %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 945, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef %cond.c.i, i32 noundef %7) #8
  br label %drv_unassign_vif_chanctx.exit

drv_unassign_vif_chanctx.exit:                    ; preds = %return.critedge.i, %if.end113.i, %land.rhs.i.drv_unassign_vif_chanctx.exit_crit_edge
  %assigned_chanctx_list = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 33
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %assigned_chanctx_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %drv_unassign_vif_chanctx.exit.list_del.exit_crit_edge

drv_unassign_vif_chanctx.exit.list_del.exit_crit_edge: ; preds = %drv_unassign_vif_chanctx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %drv_unassign_vif_chanctx.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 33, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %assigned_chanctx_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %assigned_chanctx_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %drv_unassign_vif_chanctx.exit.list_del.exit_crit_edge
  %26 = ptrtoint ptr %assigned_chanctx_list to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %assigned_chanctx_list, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 33, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end38

if.end38:                                         ; preds = %list_del.exit, %do.end32.if.end38_crit_edge
  %curr_ctx.0 = phi ptr [ %add.ptr, %list_del.exit ], [ null, %do.end32.if.end38_crit_edge ]
  %tobool39.not = icmp eq ptr %new_ctx, null
  br i1 %tobool39.not, label %if.end38.do.body48_crit_edge, label %if.then40

if.end38.do.body48_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body48

if.then40:                                        ; preds = %if.end38
  %flags.i158 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 8
  %28 = ptrtoint ptr %flags.i158 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i158, align 8
  %and.i159 = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i159)
  %tobool.not.i160 = icmp eq i32 %and.i159, 0
  br i1 %tobool.not.i160, label %land.rhs.i161, label %if.end48.i

land.rhs.i161:                                    ; preds = %if.then40
  %.b129.i = load i1, ptr @drv_assign_vif_chanctx.__already_done, align 1
  br i1 %.b129.i, label %land.rhs.i161.do.body48_crit_edge, label %cleanup.critedge.i, !prof !125

land.rhs.i161.do.body48_crit_edge:                ; preds = %land.rhs.i161
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body48

if.end48.i:                                       ; preds = %if.then40
  tail call fastcc void @trace_drv_assign_vif_chanctx(ptr noundef %1, ptr noundef %sdata, ptr noundef nonnull %new_ctx) #8
  %ops.i162 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 8
  %30 = ptrtoint ptr %ops.i162 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i162, align 4
  %assign_vif_chanctx.i = getelementptr inbounds %struct.ieee80211_ops, ptr %31, i32 0, i32 75
  %32 = ptrtoint ptr %assign_vif_chanctx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %assign_vif_chanctx.i, align 4
  %tobool49.not.i = icmp eq ptr %33, null
  br i1 %tobool49.not.i, label %drv_assign_vif_chanctx.exit.thread191, label %if.then50.i

drv_assign_vif_chanctx.exit.thread191:            ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_drv_return_int(ptr noundef %1, i32 noundef 0) #8
  br label %if.end44

if.then50.i:                                      ; preds = %if.end48.i
  %driver_present.i163 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %new_ctx, i32 0, i32 7
  %34 = ptrtoint ptr %driver_present.i163 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %driver_present.i163, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool52.not.i = icmp eq i8 %35, 0
  br i1 %tobool52.not.i, label %land.rhs61.i, label %if.then50.i.drv_assign_vif_chanctx.exit_crit_edge

if.then50.i.drv_assign_vif_chanctx.exit_crit_edge: ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drv_assign_vif_chanctx.exit

land.rhs61.i:                                     ; preds = %if.then50.i
  %.b127128.i = load i1, ptr @drv_assign_vif_chanctx.__already_done.22, align 1
  br i1 %.b127128.i, label %land.rhs61.i.drv_assign_vif_chanctx.exit_crit_edge, label %if.then72.i, !prof !125

land.rhs61.i.drv_assign_vif_chanctx.exit_crit_edge: ; preds = %land.rhs61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drv_assign_vif_chanctx.exit

if.then72.i:                                      ; preds = %land.rhs61.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @drv_assign_vif_chanctx.__already_done.22, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 929, i32 noundef 9, ptr noundef null) #8
  br label %drv_assign_vif_chanctx.exit

cleanup.critedge.i:                               ; preds = %land.rhs.i161
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @drv_assign_vif_chanctx.__already_done, align 1
  %dev.c.i167 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %36 = ptrtoint ptr %dev.c.i167 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.c.i167, align 8
  %tobool18.not.c.i = icmp eq ptr %37, null
  %name20.c.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %cond.c.i168 = select i1 %tobool18.not.c.i, ptr %name20.c.i, ptr %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 924, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef %cond.c.i168, i32 noundef %29) #8
  br label %do.body48

drv_assign_vif_chanctx.exit:                      ; preds = %if.then72.i, %land.rhs61.i.drv_assign_vif_chanctx.exit_crit_edge, %if.then50.i.drv_assign_vif_chanctx.exit_crit_edge
  %38 = ptrtoint ptr %ops.i162 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i162, align 4
  %assign_vif_chanctx108.i = getelementptr inbounds %struct.ieee80211_ops, ptr %39, i32 0, i32 75
  %40 = ptrtoint ptr %assign_vif_chanctx108.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %assign_vif_chanctx108.i, align 4
  %conf.i165 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %new_ctx, i32 0, i32 8
  %call.i166 = tail call i32 %41(ptr noundef %1, ptr noundef %vif, ptr noundef %conf.i165) #8
  tail call fastcc void @trace_drv_return_int(ptr noundef %1, i32 noundef %call.i166) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %tobool42.not = icmp eq i32 %call.i166, 0
  br i1 %tobool42.not, label %drv_assign_vif_chanctx.exit.if.end44_crit_edge, label %drv_assign_vif_chanctx.exit.do.body48_crit_edge

drv_assign_vif_chanctx.exit.do.body48_crit_edge:  ; preds = %drv_assign_vif_chanctx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body48

drv_assign_vif_chanctx.exit.if.end44_crit_edge:   ; preds = %drv_assign_vif_chanctx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.end44:                                         ; preds = %drv_assign_vif_chanctx.exit.if.end44_crit_edge, %drv_assign_vif_chanctx.exit.thread191
  %conf45 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %new_ctx, i32 0, i32 8
  %assigned_chanctx_list46 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 33
  %assigned_vifs = getelementptr inbounds %struct.ieee80211_chanctx, ptr %new_ctx, i32 0, i32 2
  %42 = ptrtoint ptr %assigned_vifs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %assigned_vifs, align 4
  %call.i.i169 = tail call zeroext i1 @__list_add_valid(ptr noundef %assigned_chanctx_list46, ptr noundef %assigned_vifs, ptr noundef %43) #8
  br i1 %call.i.i169, label %if.end.i.i170, label %if.end44.do.body48_crit_edge

if.end44.do.body48_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body48

if.end.i.i170:                                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %assigned_chanctx_list46, ptr %prev1.i.i, align 4
  %45 = ptrtoint ptr %assigned_chanctx_list46 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %assigned_chanctx_list46, align 4
  %prev3.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 33, i32 1
  %46 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %assigned_vifs, ptr %prev3.i.i, align 4
  %47 = ptrtoint ptr %assigned_vifs to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %assigned_chanctx_list46, ptr %assigned_vifs, align 4
  br label %do.body48

do.body48:                                        ; preds = %if.end.i.i170, %if.end44.do.body48_crit_edge, %drv_assign_vif_chanctx.exit.do.body48_crit_edge, %cleanup.critedge.i, %land.rhs.i161.do.body48_crit_edge, %if.end38.do.body48_crit_edge
  %ret.0 = phi i32 [ %call.i166, %drv_assign_vif_chanctx.exit.do.body48_crit_edge ], [ 0, %if.end38.do.body48_crit_edge ], [ 0, %if.end44.do.body48_crit_edge ], [ 0, %if.end.i.i170 ], [ -5, %land.rhs.i161.do.body48_crit_edge ], [ -5, %cleanup.critedge.i ]
  %conf.1 = phi ptr [ null, %drv_assign_vif_chanctx.exit.do.body48_crit_edge ], [ null, %if.end38.do.body48_crit_edge ], [ %conf45, %if.end44.do.body48_crit_edge ], [ %conf45, %if.end.i.i170 ], [ null, %land.rhs.i161.do.body48_crit_edge ], [ null, %cleanup.critedge.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !130
  %48 = ptrtoint ptr %chanctx_conf to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %conf.1, ptr %chanctx_conf, align 4
  %tobool89.not = icmp eq ptr %conf.1, null
  %idle = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 37
  %frombool = zext i1 %tobool89.not to i8
  %49 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %frombool, ptr %idle, align 1
  %tobool93.not = icmp eq ptr %curr_ctx.0, null
  br i1 %tobool93.not, label %do.body48.if.end98_crit_edge, label %land.lhs.true94

do.body48.if.end98_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

land.lhs.true94:                                  ; preds = %do.body48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %50 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i171 = icmp eq i32 %50, 0
  br i1 %tobool.not.i171, label %land.lhs.true94.if.end.i_crit_edge, label %land.rhs.i173

land.lhs.true94.if.end.i_crit_edge:               ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i173:                                    ; preds = %land.lhs.true94
  %call.i.i172 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i172)
  %cmp.not.i = icmp eq i32 %call.i.i172, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i173.if.end.i_crit_edge, !prof !123

land.rhs.i173.if.end.i_crit_edge:                 ; preds = %land.rhs.i173
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i173
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 21, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i173.if.end.i_crit_edge, %land.lhs.true94.if.end.i_crit_edge
  %assigned_vifs.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %curr_ctx.0, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.end.i
  %num.0.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %.pn.in.i = phi ptr [ %assigned_vifs.i, %if.end.i ], [ %.pn.i, %for.cond.i.for.cond.i_crit_edge ]
  %51 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp26.not.i = icmp eq ptr %.pn.i, %assigned_vifs.i
  %inc.i = add i32 %num.0.i, 1
  br i1 %cmp26.not.i, label %ieee80211_chanctx_num_assigned.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

ieee80211_chanctx_num_assigned.exit:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.0.i)
  %cmp96 = icmp sgt i32 %num.0.i, 0
  br i1 %cmp96, label %if.then97, label %ieee80211_chanctx_num_assigned.exit.if.end98_crit_edge

ieee80211_chanctx_num_assigned.exit.if.end98_crit_edge: ; preds = %ieee80211_chanctx_num_assigned.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then97:                                        ; preds = %ieee80211_chanctx_num_assigned.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_recalc_chanctx_chantype(ptr noundef %1, ptr noundef nonnull %curr_ctx.0)
  tail call void @ieee80211_recalc_smps_chanctx(ptr noundef %1, ptr noundef nonnull %curr_ctx.0)
  tail call fastcc void @ieee80211_recalc_radar_chanctx(ptr noundef %1, ptr noundef nonnull %curr_ctx.0)
  tail call void @ieee80211_recalc_chanctx_min_def(ptr noundef %1, ptr noundef nonnull %curr_ctx.0)
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %ieee80211_chanctx_num_assigned.exit.if.end98_crit_edge, %do.body48.if.end98_crit_edge
  br i1 %tobool39.not, label %if.end98.if.end104_crit_edge, label %land.lhs.true100

if.end98.if.end104_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

land.lhs.true100:                                 ; preds = %if.end98
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %52 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i174 = icmp eq i32 %52, 0
  br i1 %tobool.not.i174, label %land.lhs.true100.if.end.i181_crit_edge, label %land.rhs.i178

land.lhs.true100.if.end.i181_crit_edge:           ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i181

land.rhs.i178:                                    ; preds = %land.lhs.true100
  %call.i.i176 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i176)
  %cmp.not.i177 = icmp eq i32 %call.i.i176, 0
  br i1 %cmp.not.i177, label %do.end.i179, label %land.rhs.i178.if.end.i181_crit_edge, !prof !123

land.rhs.i178.if.end.i181_crit_edge:              ; preds = %land.rhs.i178
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i181

do.end.i179:                                      ; preds = %land.rhs.i178
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 21, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i181

if.end.i181:                                      ; preds = %do.end.i179, %land.rhs.i178.if.end.i181_crit_edge, %land.lhs.true100.if.end.i181_crit_edge
  %assigned_vifs.i180 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %new_ctx, i32 0, i32 2
  br label %for.cond.i187

for.cond.i187:                                    ; preds = %for.cond.i187.for.cond.i187_crit_edge, %if.end.i181
  %num.0.i182 = phi i32 [ 0, %if.end.i181 ], [ %inc.i186, %for.cond.i187.for.cond.i187_crit_edge ]
  %.pn.in.i183 = phi ptr [ %assigned_vifs.i180, %if.end.i181 ], [ %.pn.i184, %for.cond.i187.for.cond.i187_crit_edge ]
  %53 = ptrtoint ptr %.pn.in.i183 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn.i184 = load ptr, ptr %.pn.in.i183, align 4
  %cmp26.not.i185 = icmp eq ptr %.pn.i184, %assigned_vifs.i180
  %inc.i186 = add i32 %num.0.i182, 1
  br i1 %cmp26.not.i185, label %ieee80211_chanctx_num_assigned.exit188, label %for.cond.i187.for.cond.i187_crit_edge

for.cond.i187.for.cond.i187_crit_edge:            ; preds = %for.cond.i187
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i187

ieee80211_chanctx_num_assigned.exit188:           ; preds = %for.cond.i187
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.0.i182)
  %cmp102 = icmp sgt i32 %num.0.i182, 0
  br i1 %cmp102, label %if.then103, label %ieee80211_chanctx_num_assigned.exit188.if.end104_crit_edge

ieee80211_chanctx_num_assigned.exit188.if.end104_crit_edge: ; preds = %ieee80211_chanctx_num_assigned.exit188
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.then103:                                       ; preds = %ieee80211_chanctx_num_assigned.exit188
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_recalc_txpower(ptr noundef %sdata, i1 noundef zeroext false) #8
  tail call void @ieee80211_recalc_chanctx_min_def(ptr noundef %1, ptr noundef nonnull %new_ctx)
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %ieee80211_chanctx_num_assigned.exit188.if.end104_crit_edge, %if.end98.if.end104_crit_edge
  %54 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vif, align 8
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %55, label %if.then112 [
    i32 10, label %if.end104.if.end113_crit_edge
    i32 6, label %if.end104.if.end113_crit_edge194
  ]

if.end104.if.end113_crit_edge194:                 ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.end104.if.end113_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then112:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %sdata, i32 noundef 16384) #8
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %if.end104.if.end113_crit_edge, %if.end104.if.end113_crit_edge194
  tail call void @ieee80211_check_fast_xmit_iface(ptr noundef %sdata) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end113, %do.end
  %retval.0 = phi i32 [ -524, %do.end ], [ %ret.0, %if.end113 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_recalc_radar_chanctx(ptr noundef %local, ptr noundef %chanctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end56.i_crit_edge, label %land.rhs

entry.if.end56.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.i

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 89, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !123

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 729, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool26.not = icmp eq i32 %.pr, 0
  br i1 %tobool26.not, label %if.end.if.end56.i_crit_edge, label %land.rhs27

if.end.if.end56.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.i

land.rhs27:                                       ; preds = %if.end
  %dep_map28 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66, i32 5
  %call.i101 = tail call i32 @lock_is_held_type(ptr noundef %dep_map28, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %cmp30.not = icmp eq i32 %call.i101, 0
  br i1 %cmp30.not, label %do.end49, label %land.rhs27.if.end55_crit_edge, !prof !123

land.rhs27.if.end55_crit_edge:                    ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.end49:                                         ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 731, i32 noundef 9, ptr noundef null) #8
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %land.rhs27.if.end55_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr105 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr105)
  %tobool.not.i = icmp eq i32 %.pr105, 0
  br i1 %tobool.not.i, label %if.end55.if.end56.i_crit_edge, label %land.rhs.i

if.end55.if.end56.i_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.i

land.rhs.i:                                       ; preds = %if.end55
  %call.i118.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118.i)
  %cmp.not.i = icmp eq i32 %call.i118.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !123

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 526, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr.i = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool27.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool27.not.i, label %if.end.i.if.end56.i_crit_edge, label %land.rhs28.i

if.end.i.if.end56.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.i

land.rhs28.i:                                     ; preds = %if.end.i
  %call.i119.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map28, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119.i)
  %cmp31.not.i = icmp eq i32 %call.i119.i, 0
  br i1 %cmp31.not.i, label %do.end50.i, label %land.rhs28.i.if.end56.i_crit_edge, !prof !123

land.rhs28.i.if.end56.i_crit_edge:                ; preds = %land.rhs28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.i

do.end50.i:                                       ; preds = %land.rhs28.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 527, i32 noundef 9, ptr noundef null) #8
  br label %if.end56.i

if.end56.i:                                       ; preds = %do.end50.i, %land.rhs28.i.if.end56.i_crit_edge, %if.end.i.if.end56.i_crit_edge, %if.end55.if.end56.i_crit_edge, %if.end.if.end56.i_crit_edge, %entry.if.end56.i_crit_edge
  %conf1.i108 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %chanctx, i32 0, i32 8
  %1 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !126
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %if.end56.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end56.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end56.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end56.i.rcu_read_lock.exit.i_crit_edge
  %call67.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end76.i_crit_edge

rcu_read_lock.exit.i.do.end76.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end76.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call69.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %land.lhs.true.i.do.end76.i_crit_edge, label %land.lhs.true71.i

land.lhs.true.i.do.end76.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end76.i

land.lhs.true71.i:                                ; preds = %land.lhs.true.i
  %.b117.i = load i1, ptr @ieee80211_chanctx_radar_required.__warned, align 1
  br i1 %.b117.i, label %land.lhs.true71.i.do.end76.i_crit_edge, label %if.then73.i

land.lhs.true71.i.do.end76.i_crit_edge:           ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end76.i

if.then73.i:                                      ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_chanctx_radar_required.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 530, ptr noundef nonnull @.str.1) #8
  br label %do.end76.i

do.end76.i:                                       ; preds = %if.then73.i, %land.lhs.true71.i.do.end76.i_crit_edge, %land.lhs.true.i.do.end76.i_crit_edge, %rcu_read_lock.exit.i.do.end76.i_crit_edge
  %interfaces.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 62
  %5 = ptrtoint ptr %interfaces.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %sdata.0130.i = load volatile ptr, ptr %interfaces.i, align 8
  %cmp83.not131.i = icmp eq ptr %sdata.0130.i, %interfaces.i
  br i1 %cmp83.not131.i, label %do.end76.i.for.end.i_crit_edge, label %do.end76.i.for.body.i_crit_edge

do.end76.i.for.body.i_crit_edge:                  ; preds = %do.end76.i
  br label %for.body.i

do.end76.i.for.end.i_crit_edge:                   ; preds = %do.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end76.i.for.body.i_crit_edge
  %sdata.0132.i = phi ptr [ %sdata.0.i, %for.inc.i.for.body.i_crit_edge ], [ %sdata.0130.i, %do.end76.i.for.body.i_crit_edge ]
  %state.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0132.i, i32 0, i32 9
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end86.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end86.i:                                       ; preds = %for.body.i
  %chanctx_conf.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0132.i, i32 0, i32 59, i32 9
  %8 = ptrtoint ptr %chanctx_conf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %chanctx_conf.i, align 4
  %cmp92.not.i = icmp eq ptr %9, %conf1.i108
  br i1 %cmp92.not.i, label %if.end94.i, label %if.end86.i.for.inc.i_crit_edge

if.end86.i.for.inc.i_crit_edge:                   ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end94.i:                                       ; preds = %if.end86.i
  %radar_required.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0132.i, i32 0, i32 47
  %10 = ptrtoint ptr %radar_required.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %radar_required.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool95.not.i = icmp eq i8 %11, 0
  br i1 %tobool95.not.i, label %if.end94.i.for.inc.i_crit_edge, label %if.end94.i.for.end.i_crit_edge

if.end94.i.for.end.i_crit_edge:                   ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end94.i.for.inc.i_crit_edge:                   ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end94.i.for.inc.i_crit_edge, %if.end86.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %12 = ptrtoint ptr %sdata.0132.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %sdata.0.i = load volatile ptr, ptr %sdata.0132.i, align 8
  %cmp83.not.i = icmp eq ptr %sdata.0.i, %interfaces.i
  br i1 %cmp83.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end94.i.for.end.i_crit_edge, %do.end76.i.for.end.i_crit_edge
  %cmp83.not.lcssa.i = phi i1 [ false, %do.end76.i.for.end.i_crit_edge ], [ false, %for.inc.i.for.end.i_crit_edge ], [ true, %if.end94.i.for.end.i_crit_edge ]
  %call.i120.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i120.i, label %for.end.i.ieee80211_chanctx_radar_required.exit_crit_edge, label %land.lhs.true.i123.i

for.end.i.ieee80211_chanctx_radar_required.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_chanctx_radar_required.exit

land.lhs.true.i123.i:                             ; preds = %for.end.i
  %call1.i121.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i121.i)
  %tobool.not.i122.i = icmp eq i32 %call1.i121.i, 0
  br i1 %tobool.not.i122.i, label %land.lhs.true.i123.i.ieee80211_chanctx_radar_required.exit_crit_edge, label %land.lhs.true2.i125.i

land.lhs.true.i123.i.ieee80211_chanctx_radar_required.exit_crit_edge: ; preds = %land.lhs.true.i123.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_chanctx_radar_required.exit

land.lhs.true2.i125.i:                            ; preds = %land.lhs.true.i123.i
  %.b4.i124.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i124.i, label %land.lhs.true2.i125.i.ieee80211_chanctx_radar_required.exit_crit_edge, label %if.then.i126.i

land.lhs.true2.i125.i.ieee80211_chanctx_radar_required.exit_crit_edge: ; preds = %land.lhs.true2.i125.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_chanctx_radar_required.exit

if.then.i126.i:                                   ; preds = %land.lhs.true2.i125.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #8
  br label %ieee80211_chanctx_radar_required.exit

ieee80211_chanctx_radar_required.exit:            ; preds = %if.then.i126.i, %land.lhs.true2.i125.i.ieee80211_chanctx_radar_required.exit_crit_edge, %land.lhs.true.i123.i.ieee80211_chanctx_radar_required.exit_crit_edge, %for.end.i.ieee80211_chanctx_radar_required.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !127
  %13 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i.i127.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i127.i to ptr
  %preempt_count.i.i.i.i128.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i128.i, align 4
  %sub.i.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i128.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %frombool = zext i1 %cmp83.not.lcssa.i to i8
  %radar_enabled67 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %chanctx, i32 0, i32 8, i32 4
  %17 = ptrtoint ptr %radar_enabled67 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %radar_enabled67, align 2, !range !124
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %frombool)
  %cmp70 = icmp eq i8 %18, %frombool
  br i1 %cmp70, label %ieee80211_chanctx_radar_required.exit.cleanup_crit_edge, label %if.end73

ieee80211_chanctx_radar_required.exit.cleanup_crit_edge: ; preds = %ieee80211_chanctx_radar_required.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end73:                                         ; preds = %ieee80211_chanctx_radar_required.exit
  %19 = ptrtoint ptr %radar_enabled67 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %radar_enabled67, align 2
  %use_chanctx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 26
  %20 = ptrtoint ptr %use_chanctx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %use_chanctx, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool78.not = icmp eq i8 %21, 0
  br i1 %tobool78.not, label %if.then79, label %if.end73.if.end87_crit_edge

if.end73.if.end87_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then79:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %radar_enabled84 = getelementptr inbounds %struct.ieee80211_conf, ptr %local, i32 0, i32 8
  %22 = ptrtoint ptr %radar_enabled84 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool, ptr %radar_enabled84, align 8
  %call86 = tail call i32 @ieee80211_hw_config(ptr noundef %local, i32 noundef 64) #8
  br label %if.end87

if.end87:                                         ; preds = %if.then79, %if.end73.if.end87_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 908) #8
  tail call fastcc void @trace_drv_change_chanctx(ptr noundef %local, ptr noundef %chanctx, i32 noundef 4) #8
  %ops.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %change_chanctx.i = getelementptr inbounds %struct.ieee80211_ops, ptr %24, i32 0, i32 74
  %25 = ptrtoint ptr %change_chanctx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %change_chanctx.i, align 4
  %tobool.not.i102 = icmp eq ptr %26, null
  br i1 %tobool.not.i102, label %if.end87.drv_change_chanctx.exit_crit_edge, label %if.then.i

if.end87.drv_change_chanctx.exit_crit_edge:       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %drv_change_chanctx.exit

if.then.i:                                        ; preds = %if.end87
  %driver_present.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %chanctx, i32 0, i32 7
  %27 = ptrtoint ptr %driver_present.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %driver_present.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool3.not.i = icmp eq i8 %28, 0
  br i1 %tobool3.not.i, label %land.rhs.i103, label %if.then.i.if.end35.i_crit_edge

if.then.i.if.end35.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

land.rhs.i103:                                    ; preds = %if.then.i
  %.b55.i = load i1, ptr @drv_change_chanctx.__already_done, align 1
  br i1 %.b55.i, label %land.rhs.i103.if.end35.i_crit_edge, label %if.then12.i, !prof !125

land.rhs.i103.if.end35.i_crit_edge:               ; preds = %land.rhs.i103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.then12.i:                                      ; preds = %land.rhs.i103
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @drv_change_chanctx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 912, i32 noundef 9, ptr noundef null) #8
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then12.i, %land.rhs.i103.if.end35.i_crit_edge, %if.then.i.if.end35.i_crit_edge
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i, align 4
  %change_chanctx44.i = getelementptr inbounds %struct.ieee80211_ops, ptr %30, i32 0, i32 74
  %31 = ptrtoint ptr %change_chanctx44.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %change_chanctx44.i, align 4
  tail call void %32(ptr noundef %local, ptr noundef %conf1.i108, i32 noundef 4) #8
  br label %drv_change_chanctx.exit

drv_change_chanctx.exit:                          ; preds = %if.end35.i, %if.end87.drv_change_chanctx.exit_crit_edge
  tail call fastcc void @trace_drv_return_void(ptr noundef %local) #8
  br label %cleanup

cleanup:                                          ; preds = %drv_change_chanctx.exit, %ieee80211_chanctx_radar_required.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_vif_use_reserved_context(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end56_crit_edge, label %land.rhs

entry.if.end56_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 66, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !123

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1729, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool27.not = icmp eq i32 %.pr, 0
  br i1 %tobool27.not, label %if.end.if.end56_crit_edge, label %land.rhs28

if.end.if.end56_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

land.rhs28:                                       ; preds = %if.end
  %dep_map29 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89, i32 5
  %call.i232 = tail call i32 @lock_is_held_type(ptr noundef %dep_map29, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i232)
  %cmp31.not = icmp eq i32 %call.i232, 0
  br i1 %cmp31.not, label %do.end50, label %land.rhs28.if.end56_crit_edge, !prof !123

land.rhs28.if.end56_crit_edge:                    ; preds = %land.rhs28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

do.end50:                                         ; preds = %land.rhs28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1730, i32 noundef 9, ptr noundef null) #8
  br label %if.end56

if.end56:                                         ; preds = %do.end50, %land.rhs28.if.end56_crit_edge, %if.end.if.end56_crit_edge, %entry.if.end56_crit_edge
  %reserved_chanctx = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 35
  %3 = ptrtoint ptr %reserved_chanctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reserved_chanctx, align 8
  %5 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %local1, align 4
  %dep_map.i = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 89, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end56.ieee80211_vif_get_chanctx.exit_crit_edge

if.end56.ieee80211_vif_get_chanctx.exit_crit_edge: ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit

land.lhs.true.i:                                  ; preds = %if.end56
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.ieee80211_vif_get_chanctx.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.ieee80211_vif_get_chanctx.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b13.i = load i1, ptr @ieee80211_vif_get_chanctx.__warned, align 1
  br i1 %.b13.i, label %land.lhs.true4.i.ieee80211_vif_get_chanctx.exit_crit_edge, label %if.then.i

land.lhs.true4.i.ieee80211_vif_get_chanctx.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_vif_get_chanctx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 76, ptr noundef nonnull @.str.12) #8
  br label %ieee80211_vif_get_chanctx.exit

ieee80211_vif_get_chanctx.exit:                   ; preds = %if.then.i, %land.lhs.true4.i.ieee80211_vif_get_chanctx.exit_crit_edge, %land.lhs.true.i.ieee80211_vif_get_chanctx.exit_crit_edge, %if.end56.ieee80211_vif_get_chanctx.exit_crit_edge
  %chanctx_conf.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %7 = ptrtoint ptr %chanctx_conf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chanctx_conf.i, align 4
  %tobool6.not.i = icmp eq ptr %8, null
  %add.ptr.i = getelementptr i8, ptr %8, i32 -48
  %retval.0.i = select i1 %tobool6.not.i, ptr null, ptr %add.ptr.i
  %tobool68.not = icmp eq ptr %4, null
  br i1 %tobool68.not, label %do.end86, label %if.end102, !prof !123

do.end86:                                         ; preds = %ieee80211_vif_get_chanctx.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1735, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end102:                                        ; preds = %ieee80211_vif_get_chanctx.exit
  %replace_state = getelementptr inbounds %struct.ieee80211_chanctx, ptr %4, i32 0, i32 4
  %9 = ptrtoint ptr %replace_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %replace_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp104 = icmp eq i32 %10, 1
  br i1 %cmp104, label %do.end120, label %if.end136, !prof !123

do.end120:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1739, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end136:                                        ; preds = %if.end102
  %reserved_ready = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 38
  %11 = ptrtoint ptr %reserved_ready to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reserved_ready, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool138.not = icmp eq i8 %12, 0
  br i1 %tobool138.not, label %if.end170, label %do.end154, !prof !125

do.end154:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1742, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end170:                                        ; preds = %if.end136
  %13 = ptrtoint ptr %reserved_ready to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %reserved_ready, align 1
  %14 = ptrtoint ptr %replace_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %replace_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp173 = icmp eq i32 %15, 0
  br i1 %cmp173, label %if.then174, label %if.end170.if.end183_crit_edge

if.end170.if.end183_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end183

if.then174:                                       ; preds = %if.end170
  %tobool175.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool175.not, label %if.else, label %if.then176

if.then176:                                       ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #10
  %call177 = tail call fastcc i32 @ieee80211_vif_use_reserved_reassign(ptr noundef %sdata)
  br label %if.end179

if.else:                                          ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #10
  %call178 = tail call fastcc i32 @ieee80211_vif_use_reserved_assign(ptr noundef %sdata)
  br label %if.end179

if.end179:                                        ; preds = %if.else, %if.then176
  %err.0 = phi i32 [ %call177, %if.then176 ], [ %call178, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool180.not = icmp eq i32 %err.0, 0
  br i1 %tobool180.not, label %if.end179.if.end183_crit_edge, label %if.end179.cleanup_crit_edge

if.end179.cleanup_crit_edge:                      ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end179.if.end183_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end183

if.end183:                                        ; preds = %if.end179.if.end183_crit_edge, %if.end170.if.end183_crit_edge
  %tobool184.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool184.not, label %if.end183.lor.lhs.false_crit_edge, label %land.lhs.true

if.end183.lor.lhs.false_crit_edge:                ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end183
  %replace_state185 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %retval.0.i, i32 0, i32 4
  %16 = ptrtoint ptr %replace_state185 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %replace_state185, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp186 = icmp eq i32 %17, 1
  br i1 %cmp186, label %land.lhs.true.if.then189_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true.if.then189_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then189

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end183.lor.lhs.false_crit_edge
  %18 = ptrtoint ptr %replace_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %replace_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp188 = icmp eq i32 %19, 2
  br i1 %cmp188, label %lor.lhs.false.if.then189_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.if.then189_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then189

if.then189:                                       ; preds = %lor.lhs.false.if.then189_crit_edge, %land.lhs.true.if.then189_crit_edge
  %call190 = tail call fastcc i32 @ieee80211_vif_use_reserved_switch(ptr noundef %1)
  %20 = zext i32 %call190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call190, label %if.then194 [
    i32 0, label %if.then189.cleanup_crit_edge
    i32 -11, label %if.then189.cleanup_crit_edge234
  ]

if.then189.cleanup_crit_edge234:                  ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then189.cleanup_crit_edge:                     ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then194:                                       ; preds = %if.then189
  %21 = ptrtoint ptr %replace_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %replace_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp196 = icmp eq i32 %22, 2
  br i1 %cmp196, label %if.then194.cleanup_crit_edge, label %do.end201

if.then194.cleanup_crit_edge:                     ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end201:                                        ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #10
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %24, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call190) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end201, %if.then194.cleanup_crit_edge, %if.then189.cleanup_crit_edge, %if.then189.cleanup_crit_edge234, %lor.lhs.false.cleanup_crit_edge, %if.end179.cleanup_crit_edge, %do.end154, %do.end120, %do.end86
  %retval.0 = phi i32 [ -22, %do.end86 ], [ -22, %do.end120 ], [ -22, %do.end154 ], [ %err.0, %if.end179.cleanup_crit_edge ], [ %call190, %if.then194.cleanup_crit_edge ], [ 0, %if.then189.cleanup_crit_edge ], [ 0, %if.then189.cleanup_crit_edge234 ], [ 0, %do.end201 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_vif_use_reserved_reassign(ptr noundef %sdata) unnamed_addr #0 align 64 {
entry:
  %vif_chsw = alloca [1 x %struct.ieee80211_vif_chanctx_switch], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %vif_chsw) #8
  %2 = call ptr @memset(ptr %vif_chsw, i32 0, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end56_crit_edge, label %land.rhs

entry.if.end56_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 66, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !123

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1125, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool27.not = icmp eq i32 %.pr, 0
  br i1 %tobool27.not, label %if.end.if.end56_crit_edge, label %land.rhs28

if.end.if.end56_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

land.rhs28:                                       ; preds = %if.end
  %dep_map29 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89, i32 5
  %call.i380 = tail call i32 @lock_is_held_type(ptr noundef %dep_map29, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i380)
  %cmp31.not = icmp eq i32 %call.i380, 0
  br i1 %cmp31.not, label %do.end50, label %land.rhs28.if.end56_crit_edge, !prof !123

land.rhs28.if.end56_crit_edge:                    ; preds = %land.rhs28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

do.end50:                                         ; preds = %land.rhs28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1126, i32 noundef 9, ptr noundef null) #8
  br label %if.end56

if.end56:                                         ; preds = %do.end50, %land.rhs28.if.end56_crit_edge, %if.end.if.end56_crit_edge, %entry.if.end56_crit_edge
  %reserved_chanctx = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 35
  %4 = ptrtoint ptr %reserved_chanctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reserved_chanctx, align 8
  %6 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %local1, align 4
  %dep_map.i = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 89, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end56.ieee80211_vif_get_chanctx.exit_crit_edge

if.end56.ieee80211_vif_get_chanctx.exit_crit_edge: ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit

land.lhs.true.i:                                  ; preds = %if.end56
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.ieee80211_vif_get_chanctx.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.ieee80211_vif_get_chanctx.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b13.i = load i1, ptr @ieee80211_vif_get_chanctx.__warned, align 1
  br i1 %.b13.i, label %land.lhs.true4.i.ieee80211_vif_get_chanctx.exit_crit_edge, label %if.then.i

land.lhs.true4.i.ieee80211_vif_get_chanctx.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_vif_get_chanctx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 76, ptr noundef nonnull @.str.12) #8
  br label %ieee80211_vif_get_chanctx.exit

ieee80211_vif_get_chanctx.exit:                   ; preds = %if.then.i, %land.lhs.true4.i.ieee80211_vif_get_chanctx.exit_crit_edge, %land.lhs.true.i.ieee80211_vif_get_chanctx.exit_crit_edge, %if.end56.ieee80211_vif_get_chanctx.exit_crit_edge
  %chanctx_conf.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %8 = ptrtoint ptr %chanctx_conf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chanctx_conf.i, align 4
  %tobool6.not.i = icmp eq ptr %9, null
  %add.ptr.i = getelementptr i8, ptr %9, i32 -48
  %retval.0.i = select i1 %tobool6.not.i, ptr null, ptr %add.ptr.i
  %reserved_ready = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 38
  %10 = ptrtoint ptr %reserved_ready to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reserved_ready, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool68.not = icmp eq i8 %11, 0
  br i1 %tobool68.not, label %do.end86, label %if.end102, !prof !123

do.end86:                                         ; preds = %ieee80211_vif_get_chanctx.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1131, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end102:                                        ; preds = %ieee80211_vif_get_chanctx.exit
  %tobool104.not = icmp eq ptr %5, null
  br i1 %tobool104.not, label %do.end122, label %if.end138, !prof !123

do.end122:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1134, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end138:                                        ; preds = %if.end102
  %tobool140.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool140.not, label %do.end158, label %if.end174, !prof !123

do.end158:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1137, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end174:                                        ; preds = %if.end138
  %replace_state = getelementptr inbounds %struct.ieee80211_chanctx, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %replace_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %replace_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp176 = icmp eq i32 %13, 2
  br i1 %cmp176, label %do.end192, label %if.end208, !prof !123

do.end192:                                        ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1141, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end208:                                        ; preds = %if.end174
  %reserved_chandef = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %14 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i381 = icmp eq i32 %14, 0
  br i1 %tobool.not.i381, label %if.end208.if.end.i_crit_edge, label %land.rhs.i

if.end208.if.end.i_crit_edge:                     ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end208
  %dep_map.i382 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89, i32 5
  %call.i.i383 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i382, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i383)
  %cmp.not.i = icmp eq i32 %call.i.i383, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !123

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 113, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end208.if.end.i_crit_edge
  %assigned_vifs.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %assigned_vifs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn56.i = load ptr, ptr %assigned_vifs.i, align 4
  %cmp26.not57.i = icmp eq ptr %.pn56.i, %assigned_vifs.i
  br i1 %cmp26.not57.i, label %if.end.i.ieee80211_chanctx_non_reserved_chandef.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.ieee80211_chanctx_non_reserved_chandef.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_chanctx_non_reserved_chandef.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn59.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn56.i, %if.end.i.for.body.i_crit_edge ]
  %compat.addr.058.i = phi ptr [ %compat.addr.2.i, %for.inc.i.for.body.i_crit_edge ], [ %reserved_chandef, %if.end.i.for.body.i_crit_edge ]
  %reserved_chanctx.i = getelementptr i8, ptr %.pn59.i, i32 16
  %16 = ptrtoint ptr %reserved_chanctx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reserved_chanctx.i, align 8
  %cmp29.not.i = icmp eq ptr %17, null
  br i1 %cmp29.not.i, label %if.end31.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end31.i:                                       ; preds = %for.body.i
  %tobool32.not.i = icmp eq ptr %compat.addr.058.i, null
  %chandef.i = getelementptr i8, ptr %.pn59.i, i32 2236
  %spec.select.i = select i1 %tobool32.not.i, ptr %chandef.i, ptr %compat.addr.058.i
  %call38.i = tail call ptr @cfg80211_chandef_compatible(ptr noundef %chandef.i, ptr noundef %spec.select.i) #8
  %tobool39.not.i = icmp eq ptr %call38.i, null
  br i1 %tobool39.not.i, label %if.end31.i.do.end229_crit_edge, label %if.end31.i.for.inc.i_crit_edge

if.end31.i.for.inc.i_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end31.i.do.end229_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end229

for.inc.i:                                        ; preds = %if.end31.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %compat.addr.2.i = phi ptr [ %compat.addr.058.i, %for.body.i.for.inc.i_crit_edge ], [ %call38.i, %if.end31.i.for.inc.i_crit_edge ]
  %18 = ptrtoint ptr %.pn59.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i = load ptr, ptr %.pn59.i, align 4
  %cmp26.not.i = icmp eq ptr %.pn.i, %assigned_vifs.i
  br i1 %cmp26.not.i, label %for.inc.i.ieee80211_chanctx_non_reserved_chandef.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.ieee80211_chanctx_non_reserved_chandef.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_chanctx_non_reserved_chandef.exit

ieee80211_chanctx_non_reserved_chandef.exit:      ; preds = %for.inc.i.ieee80211_chanctx_non_reserved_chandef.exit_crit_edge, %if.end.i.ieee80211_chanctx_non_reserved_chandef.exit_crit_edge
  %compat.addr.3.i = phi ptr [ %reserved_chandef, %if.end.i.ieee80211_chanctx_non_reserved_chandef.exit_crit_edge ], [ %compat.addr.2.i, %for.inc.i.ieee80211_chanctx_non_reserved_chandef.exit_crit_edge ]
  %tobool211.not = icmp eq ptr %compat.addr.3.i, null
  br i1 %tobool211.not, label %ieee80211_chanctx_non_reserved_chandef.exit.do.end229_crit_edge, label %if.end245, !prof !123

ieee80211_chanctx_non_reserved_chandef.exit.do.end229_crit_edge: ; preds = %ieee80211_chanctx_non_reserved_chandef.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end229

do.end229:                                        ; preds = %ieee80211_chanctx_non_reserved_chandef.exit.do.end229_crit_edge, %if.end31.i.do.end229_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1146, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end245:                                        ; preds = %ieee80211_chanctx_non_reserved_chandef.exit
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %width = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 1
  %19 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %width, align 4
  %width248 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 36, i32 1
  %21 = ptrtoint ptr %width248 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %width248, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp249.not = icmp eq i32 %20, %22
  %spec.select = select i1 %cmp249.not, i32 0, i32 2097152
  %chandef1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32
  %23 = call ptr @memcpy(ptr %chandef1.i, ptr %reserved_chandef, i32 28)
  %24 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp.not.i384 = icmp eq i32 %25, 3
  br i1 %cmp.not.i384, label %if.end.i385, label %if.end245.ieee80211_vif_update_chandef.exit_crit_edge

if.end245.ieee80211_vif_update_chandef.exit_crit_edge: ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_update_chandef.exit

if.end.i385:                                      ; preds = %if.end245
  %vlans.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 0, i32 4
  %26 = ptrtoint ptr %vlans.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn22.i = load ptr, ptr %vlans.i, align 4
  %cmp6.not23.i = icmp eq ptr %.pn22.i, %vlans.i
  br i1 %cmp6.not23.i, label %if.end.i385.ieee80211_vif_update_chandef.exit_crit_edge, label %if.end.i385.for.body.i387_crit_edge

if.end.i385.for.body.i387_crit_edge:              ; preds = %if.end.i385
  br label %for.body.i387

if.end.i385.ieee80211_vif_update_chandef.exit_crit_edge: ; preds = %if.end.i385
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_update_chandef.exit

for.body.i387:                                    ; preds = %for.body.i387.for.body.i387_crit_edge, %if.end.i385.for.body.i387_crit_edge
  %.pn24.i = phi ptr [ %.pn.i386, %for.body.i387.for.body.i387_crit_edge ], [ %.pn22.i, %if.end.i385.for.body.i387_crit_edge ]
  %chandef9.i = getelementptr i8, ptr %.pn24.i, i32 1636
  %27 = call ptr @memcpy(ptr %chandef9.i, ptr %reserved_chandef, i32 28)
  %28 = ptrtoint ptr %.pn24.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i386 = load ptr, ptr %.pn24.i, align 4
  %cmp6.not.i = icmp eq ptr %.pn.i386, %vlans.i
  br i1 %cmp6.not.i, label %for.body.i387.ieee80211_vif_update_chandef.exit_crit_edge, label %for.body.i387.for.body.i387_crit_edge

for.body.i387.for.body.i387_crit_edge:            ; preds = %for.body.i387
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i387

for.body.i387.ieee80211_vif_update_chandef.exit_crit_edge: ; preds = %for.body.i387
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_update_chandef.exit

ieee80211_vif_update_chandef.exit:                ; preds = %for.body.i387.ieee80211_vif_update_chandef.exit_crit_edge, %if.end.i385.ieee80211_vif_update_chandef.exit_crit_edge, %if.end245.ieee80211_vif_update_chandef.exit_crit_edge
  tail call fastcc void @ieee80211_change_chanctx(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %retval.0.i, ptr noundef nonnull %compat.addr.3.i)
  %29 = ptrtoint ptr %vif_chsw to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %vif, ptr %vif_chsw, align 4
  %conf = getelementptr inbounds %struct.ieee80211_chanctx, ptr %retval.0.i, i32 0, i32 8
  %old_ctx256 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, ptr %vif_chsw, i32 0, i32 1
  %30 = ptrtoint ptr %old_ctx256 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %conf, ptr %old_ctx256, align 4
  %conf257 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %5, i32 0, i32 8
  %new_ctx259 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, ptr %vif_chsw, i32 0, i32 2
  %31 = ptrtoint ptr %new_ctx259 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %conf257, ptr %new_ctx259, align 4
  %reserved_chanctx_list = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 34
  %call.i.i388 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %reserved_chanctx_list) #8
  br i1 %call.i.i388, label %if.end.i.i, label %ieee80211_vif_update_chandef.exit.list_del.exit_crit_edge

ieee80211_vif_update_chandef.exit.list_del.exit_crit_edge: ; preds = %ieee80211_vif_update_chandef.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %ieee80211_vif_update_chandef.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 34, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %reserved_chanctx_list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reserved_chanctx_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %ieee80211_vif_update_chandef.exit.list_del.exit_crit_edge
  %38 = ptrtoint ptr %reserved_chanctx_list to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %reserved_chanctx_list, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 34, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %40 = ptrtoint ptr %reserved_chanctx to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %reserved_chanctx, align 8
  %call261 = call i32 @drv_switch_vif_chanctx(ptr noundef %1, ptr noundef nonnull %vif_chsw, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261)
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %if.end268, label %if.then263

if.then263:                                       ; preds = %list_del.exit
  %call264 = call i32 @ieee80211_chanctx_refcount(ptr noundef %1, ptr noundef nonnull %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264)
  %cmp265 = icmp eq i32 %call264, 0
  br i1 %cmp265, label %if.then266, label %if.then263.out_crit_edge

if.then263.out_crit_edge:                         ; preds = %if.then263
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then266:                                       ; preds = %if.then263
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ieee80211_free_chanctx(ptr noundef %1, ptr noundef nonnull %5)
  br label %out

if.end268:                                        ; preds = %list_del.exit
  %assigned_chanctx_list = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 33
  %call.i.i389 = call zeroext i1 @__list_del_entry_valid(ptr noundef %assigned_chanctx_list) #8
  br i1 %call.i.i389, label %if.end.i.i392, label %if.end268.__list_del_entry.exit.i_crit_edge

if.end268.__list_del_entry.exit.i_crit_edge:      ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i392:                                    ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i390 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 33, i32 1
  %41 = ptrtoint ptr %prev.i.i390 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i390, align 4
  %43 = ptrtoint ptr %assigned_chanctx_list to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %assigned_chanctx_list, align 4
  %prev1.i.i.i391 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i391 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i391, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i392, %if.end268.__list_del_entry.exit.i_crit_edge
  %47 = ptrtoint ptr %assigned_vifs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %assigned_vifs.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %assigned_chanctx_list, ptr noundef %assigned_vifs.i, ptr noundef %48) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %assigned_chanctx_list, ptr %prev1.i.i2.i, align 4
  %50 = ptrtoint ptr %assigned_chanctx_list to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %48, ptr %assigned_chanctx_list, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 33, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %assigned_vifs.i, ptr %prev3.i.i.i, align 4
  %52 = ptrtoint ptr %assigned_vifs.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %assigned_chanctx_list, ptr %assigned_vifs.i, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !131
  %53 = ptrtoint ptr %chanctx_conf.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %conf257, ptr %chanctx_conf.i, align 4
  %54 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %55)
  %cmp310 = icmp eq i32 %55, 3
  br i1 %cmp310, label %if.then311, label %list_move.exit.if.end312_crit_edge

list_move.exit.if.end312_crit_edge:               ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end312

if.then311:                                       ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @__ieee80211_vif_copy_chanctx_to_vlans(ptr noundef %sdata, i1 noundef zeroext false)
  br label %if.end312

if.end312:                                        ; preds = %if.then311, %list_move.exit.if.end312_crit_edge
  call void @ieee80211_check_fast_xmit_iface(ptr noundef %sdata) #8
  %call313 = call i32 @ieee80211_chanctx_refcount(ptr noundef %1, ptr noundef nonnull %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call313)
  %cmp314 = icmp eq i32 %call313, 0
  br i1 %cmp314, label %if.then315, label %if.end312.if.end316_crit_edge

if.end312.if.end316_crit_edge:                    ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end316

if.then315:                                       ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ieee80211_free_chanctx(ptr noundef %1, ptr noundef nonnull %retval.0.i)
  br label %if.end316

if.end316:                                        ; preds = %if.then315, %if.end312.if.end316_crit_edge
  call void @ieee80211_recalc_chanctx_min_def(ptr noundef %1, ptr noundef nonnull %5)
  call void @ieee80211_recalc_smps_chanctx(ptr noundef %1, ptr noundef nonnull %5)
  call fastcc void @ieee80211_recalc_radar_chanctx(ptr noundef %1, ptr noundef nonnull %5)
  br i1 %cmp249.not, label %if.end316.out_crit_edge, label %if.then318

if.end316.out_crit_edge:                          ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then318:                                       ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #10
  call void @ieee80211_bss_info_change_notify(ptr noundef %sdata, i32 noundef %spec.select) #8
  br label %out

out:                                              ; preds = %if.then318, %if.end316.out_crit_edge, %if.then266, %if.then263.out_crit_edge
  %56 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vif, align 8
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %57, label %out.cleanup_crit_edge [
    i32 1, label %out.sw.bb.i_crit_edge
    i32 3, label %out.sw.bb.i_crit_edge398
    i32 7, label %out.sw.bb.i_crit_edge399
    i32 11, label %out.sw.bb.i_crit_edge400
    i32 2, label %sw.bb1.i
    i32 0, label %out.do.end.i394_crit_edge
    i32 4, label %out.do.end.i394_crit_edge401
    i32 5, label %out.do.end.i394_crit_edge402
    i32 6, label %out.do.end.i394_crit_edge403
    i32 8, label %out.do.end.i394_crit_edge404
    i32 9, label %out.do.end.i394_crit_edge405
    i32 10, label %out.do.end.i394_crit_edge406
    i32 12, label %out.do.end.i394_crit_edge407
    i32 13, label %out.do.end.i394_crit_edge408
  ]

out.do.end.i394_crit_edge408:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i394

out.do.end.i394_crit_edge407:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i394

out.do.end.i394_crit_edge406:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i394

out.do.end.i394_crit_edge405:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i394

out.do.end.i394_crit_edge404:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i394

out.do.end.i394_crit_edge403:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i394

out.do.end.i394_crit_edge402:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i394

out.do.end.i394_crit_edge401:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i394

out.do.end.i394_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i394

out.sw.bb.i_crit_edge400:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

out.sw.bb.i_crit_edge399:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

out.sw.bb.i_crit_edge398:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

out.sw.bb.i_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %out.sw.bb.i_crit_edge, %out.sw.bb.i_crit_edge398, %out.sw.bb.i_crit_edge399, %out.sw.bb.i_crit_edge400
  %59 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %local1, align 4
  %csa_finalize_work.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 29
  call void @ieee80211_queue_work(ptr noundef %60, ptr noundef %csa_finalize_work.i) #8
  br label %cleanup

sw.bb1.i:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %local1, align 4
  %chswitch_work.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 20, i32 0, i32 0, i32 2
  call void @ieee80211_queue_work(ptr noundef %62, ptr noundef %chswitch_work.i) #8
  br label %cleanup

do.end.i394:                                      ; preds = %out.do.end.i394_crit_edge, %out.do.end.i394_crit_edge401, %out.do.end.i394_crit_edge402, %out.do.end.i394_crit_edge403, %out.do.end.i394_crit_edge404, %out.do.end.i394_crit_edge405, %out.do.end.i394_crit_edge406, %out.do.end.i394_crit_edge407, %out.do.end.i394_crit_edge408
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1095, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i394, %sw.bb1.i, %sw.bb.i, %out.cleanup_crit_edge, %do.end229, %do.end192, %do.end158, %do.end122, %do.end86
  %retval.0 = phi i32 [ -16, %do.end86 ], [ -22, %do.end122 ], [ -22, %do.end158 ], [ -22, %do.end192 ], [ -22, %do.end229 ], [ %call261, %out.cleanup_crit_edge ], [ %call261, %sw.bb.i ], [ %call261, %sw.bb1.i ], [ %call261, %do.end.i394 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %vif_chsw) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_vif_use_reserved_assign(ptr noundef %sdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %dep_map.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.ieee80211_vif_get_chanctx.exit_crit_edge

entry.ieee80211_vif_get_chanctx.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.ieee80211_vif_get_chanctx.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.ieee80211_vif_get_chanctx.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b13.i = load i1, ptr @ieee80211_vif_get_chanctx.__warned, align 1
  br i1 %.b13.i, label %land.lhs.true4.i.ieee80211_vif_get_chanctx.exit_crit_edge, label %if.then.i

land.lhs.true4.i.ieee80211_vif_get_chanctx.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_vif_get_chanctx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 76, ptr noundef nonnull @.str.12) #8
  br label %ieee80211_vif_get_chanctx.exit

ieee80211_vif_get_chanctx.exit:                   ; preds = %if.then.i, %land.lhs.true4.i.ieee80211_vif_get_chanctx.exit_crit_edge, %land.lhs.true.i.ieee80211_vif_get_chanctx.exit_crit_edge, %entry.ieee80211_vif_get_chanctx.exit_crit_edge
  %reserved_chanctx = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 35
  %2 = ptrtoint ptr %reserved_chanctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reserved_chanctx, align 8
  %reserved_ready = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 38
  %4 = ptrtoint ptr %reserved_ready to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reserved_ready, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !123

do.end:                                           ; preds = %ieee80211_vif_get_chanctx.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1206, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end24:                                         ; preds = %ieee80211_vif_get_chanctx.exit
  %chanctx_conf.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %6 = ptrtoint ptr %chanctx_conf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chanctx_conf.i, align 4
  %tobool6.not.i = icmp eq ptr %7, null
  %add.ptr.i = getelementptr i8, ptr %7, i32 -48
  %tobool26.not210 = icmp eq ptr %add.ptr.i, null
  %tobool26.not = or i1 %tobool6.not.i, %tobool26.not210
  br i1 %tobool26.not, label %if.end58, label %do.end42, !prof !125

do.end42:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1209, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end58:                                         ; preds = %if.end24
  %tobool60.not = icmp eq ptr %3, null
  br i1 %tobool60.not, label %do.end78, label %if.end94, !prof !123

do.end78:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1212, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end94:                                         ; preds = %if.end58
  %replace_state = getelementptr inbounds %struct.ieee80211_chanctx, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %replace_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %replace_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp eq i32 %9, 2
  br i1 %cmp, label %do.end111, label %if.end127, !prof !123

do.end111:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1216, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end127:                                        ; preds = %if.end94
  %reserved_chandef = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i203 = icmp eq i32 %10, 0
  br i1 %tobool.not.i203, label %if.end127.if.end.i_crit_edge, label %land.rhs.i

if.end127.if.end.i_crit_edge:                     ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end127
  %call.i.i205 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i205)
  %cmp.not.i = icmp eq i32 %call.i.i205, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !123

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 113, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end127.if.end.i_crit_edge
  %assigned_vifs.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %assigned_vifs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn56.i = load ptr, ptr %assigned_vifs.i, align 4
  %cmp26.not57.i = icmp eq ptr %.pn56.i, %assigned_vifs.i
  br i1 %cmp26.not57.i, label %if.end.i.ieee80211_chanctx_non_reserved_chandef.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.ieee80211_chanctx_non_reserved_chandef.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_chanctx_non_reserved_chandef.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn59.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn56.i, %if.end.i.for.body.i_crit_edge ]
  %compat.addr.058.i = phi ptr [ %compat.addr.2.i, %for.inc.i.for.body.i_crit_edge ], [ %reserved_chandef, %if.end.i.for.body.i_crit_edge ]
  %reserved_chanctx.i = getelementptr i8, ptr %.pn59.i, i32 16
  %12 = ptrtoint ptr %reserved_chanctx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reserved_chanctx.i, align 8
  %cmp29.not.i = icmp eq ptr %13, null
  br i1 %cmp29.not.i, label %if.end31.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end31.i:                                       ; preds = %for.body.i
  %tobool32.not.i = icmp eq ptr %compat.addr.058.i, null
  %chandef.i = getelementptr i8, ptr %.pn59.i, i32 2236
  %spec.select.i = select i1 %tobool32.not.i, ptr %chandef.i, ptr %compat.addr.058.i
  %call38.i = tail call ptr @cfg80211_chandef_compatible(ptr noundef %chandef.i, ptr noundef %spec.select.i) #8
  %tobool39.not.i = icmp eq ptr %call38.i, null
  br i1 %tobool39.not.i, label %if.end31.i.do.end148_crit_edge, label %if.end31.i.for.inc.i_crit_edge

if.end31.i.for.inc.i_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end31.i.do.end148_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end148

for.inc.i:                                        ; preds = %if.end31.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %compat.addr.2.i = phi ptr [ %compat.addr.058.i, %for.body.i.for.inc.i_crit_edge ], [ %call38.i, %if.end31.i.for.inc.i_crit_edge ]
  %14 = ptrtoint ptr %.pn59.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load ptr, ptr %.pn59.i, align 4
  %cmp26.not.i = icmp eq ptr %.pn.i, %assigned_vifs.i
  br i1 %cmp26.not.i, label %for.inc.i.ieee80211_chanctx_non_reserved_chandef.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.ieee80211_chanctx_non_reserved_chandef.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_chanctx_non_reserved_chandef.exit

ieee80211_chanctx_non_reserved_chandef.exit:      ; preds = %for.inc.i.ieee80211_chanctx_non_reserved_chandef.exit_crit_edge, %if.end.i.ieee80211_chanctx_non_reserved_chandef.exit_crit_edge
  %compat.addr.3.i = phi ptr [ %reserved_chandef, %if.end.i.ieee80211_chanctx_non_reserved_chandef.exit_crit_edge ], [ %compat.addr.2.i, %for.inc.i.ieee80211_chanctx_non_reserved_chandef.exit_crit_edge ]
  %tobool130.not = icmp eq ptr %compat.addr.3.i, null
  br i1 %tobool130.not, label %ieee80211_chanctx_non_reserved_chandef.exit.do.end148_crit_edge, label %if.end164, !prof !123

ieee80211_chanctx_non_reserved_chandef.exit.do.end148_crit_edge: ; preds = %ieee80211_chanctx_non_reserved_chandef.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end148

do.end148:                                        ; preds = %ieee80211_chanctx_non_reserved_chandef.exit.do.end148_crit_edge, %if.end31.i.do.end148_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1221, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end164:                                        ; preds = %ieee80211_chanctx_non_reserved_chandef.exit
  tail call fastcc void @ieee80211_change_chanctx(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %compat.addr.3.i)
  %reserved_chanctx_list = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 34
  %call.i.i206 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %reserved_chanctx_list) #8
  br i1 %call.i.i206, label %if.end.i.i, label %if.end164.list_del.exit_crit_edge

if.end164.list_del.exit_crit_edge:                ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 34, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %reserved_chanctx_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reserved_chanctx_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end164.list_del.exit_crit_edge
  %21 = ptrtoint ptr %reserved_chanctx_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %reserved_chanctx_list, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 34, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %23 = ptrtoint ptr %reserved_chanctx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %reserved_chanctx, align 8
  %call166 = tail call fastcc i32 @ieee80211_assign_vif_chanctx(ptr noundef %sdata, ptr noundef nonnull %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %list_del.exit.out_crit_edge, label %if.then168

list_del.exit.out_crit_edge:                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then168:                                       ; preds = %list_del.exit
  %call169 = tail call i32 @ieee80211_chanctx_refcount(ptr noundef %1, ptr noundef nonnull %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %cmp170 = icmp eq i32 %call169, 0
  br i1 %cmp170, label %if.then171, label %if.then168.out_crit_edge

if.then168.out_crit_edge:                         ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then171:                                       ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ieee80211_free_chanctx(ptr noundef %1, ptr noundef nonnull %3)
  br label %out

out:                                              ; preds = %if.then171, %if.then168.out_crit_edge, %list_del.exit.out_crit_edge
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %24 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vif.i, align 8
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %25, label %out.cleanup_crit_edge [
    i32 1, label %out.sw.bb.i_crit_edge
    i32 3, label %out.sw.bb.i_crit_edge211
    i32 7, label %out.sw.bb.i_crit_edge212
    i32 11, label %out.sw.bb.i_crit_edge213
    i32 2, label %sw.bb1.i
    i32 0, label %out.do.end.i207_crit_edge
    i32 4, label %out.do.end.i207_crit_edge214
    i32 5, label %out.do.end.i207_crit_edge215
    i32 6, label %out.do.end.i207_crit_edge216
    i32 8, label %out.do.end.i207_crit_edge217
    i32 9, label %out.do.end.i207_crit_edge218
    i32 10, label %out.do.end.i207_crit_edge219
    i32 12, label %out.do.end.i207_crit_edge220
    i32 13, label %out.do.end.i207_crit_edge221
  ]

out.do.end.i207_crit_edge221:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i207

out.do.end.i207_crit_edge220:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i207

out.do.end.i207_crit_edge219:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i207

out.do.end.i207_crit_edge218:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i207

out.do.end.i207_crit_edge217:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i207

out.do.end.i207_crit_edge216:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i207

out.do.end.i207_crit_edge215:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i207

out.do.end.i207_crit_edge214:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i207

out.do.end.i207_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i207

out.sw.bb.i_crit_edge213:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

out.sw.bb.i_crit_edge212:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

out.sw.bb.i_crit_edge211:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

out.sw.bb.i_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %out.sw.bb.i_crit_edge, %out.sw.bb.i_crit_edge211, %out.sw.bb.i_crit_edge212, %out.sw.bb.i_crit_edge213
  %27 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %local1, align 4
  %csa_finalize_work.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 29
  tail call void @ieee80211_queue_work(ptr noundef %28, ptr noundef %csa_finalize_work.i) #8
  br label %cleanup

sw.bb1.i:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %local1, align 4
  %chswitch_work.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 20, i32 0, i32 0, i32 2
  tail call void @ieee80211_queue_work(ptr noundef %30, ptr noundef %chswitch_work.i) #8
  br label %cleanup

do.end.i207:                                      ; preds = %out.do.end.i207_crit_edge, %out.do.end.i207_crit_edge214, %out.do.end.i207_crit_edge215, %out.do.end.i207_crit_edge216, %out.do.end.i207_crit_edge217, %out.do.end.i207_crit_edge218, %out.do.end.i207_crit_edge219, %out.do.end.i207_crit_edge220, %out.do.end.i207_crit_edge221
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1095, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i207, %sw.bb1.i, %sw.bb.i, %out.cleanup_crit_edge, %do.end148, %do.end111, %do.end78, %do.end42, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end42 ], [ -22, %do.end78 ], [ -22, %do.end111 ], [ -22, %do.end148 ], [ %call166, %out.cleanup_crit_edge ], [ %call166, %sw.bb.i ], [ %call166, %sw.bb1.i ], [ %call166, %do.end.i207 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_vif_use_reserved_switch(ptr noundef %local) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end55_crit_edge, label %land.rhs

entry.if.end55_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !123

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1381, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool26.not = icmp eq i32 %.pr, 0
  br i1 %tobool26.not, label %if.end.if.end55_crit_edge, label %land.rhs27

if.end.if.end55_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

land.rhs27:                                       ; preds = %if.end
  %dep_map28 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 89, i32 5
  %call.i914 = tail call i32 @lock_is_held_type(ptr noundef %dep_map28, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i914)
  %cmp30.not = icmp eq i32 %call.i914, 0
  br i1 %cmp30.not, label %do.end49, label %land.rhs27.if.end55_crit_edge, !prof !123

land.rhs27.if.end55_crit_edge:                    ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.end49:                                         ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1382, i32 noundef 9, ptr noundef null) #8
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %land.rhs27.if.end55_crit_edge, %if.end.if.end55_crit_edge, %entry.if.end55_crit_edge
  %chanctx_list = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 88
  %1 = ptrtoint ptr %chanctx_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %ctx.01077 = load ptr, ptr %chanctx_list, align 4
  %cmp67.not1078 = icmp eq ptr %ctx.01077, %chanctx_list
  br i1 %cmp67.not1078, label %if.end55.do.end210_crit_edge, label %for.body.lr.ph

if.end55.do.end210_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end210

for.body.lr.ph:                                   ; preds = %if.end55
  %use_chanctx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %for.inc186.for.body_crit_edge, %for.body.lr.ph
  %ctx.01084 = phi ptr [ %ctx.01077, %for.body.lr.ph ], [ %ctx.0, %for.inc186.for.body_crit_edge ]
  %new_ctx.01083 = phi ptr [ null, %for.body.lr.ph ], [ %new_ctx.2, %for.inc186.for.body_crit_edge ]
  %n_ctx.01082 = phi i32 [ 0, %for.body.lr.ph ], [ %n_ctx.1, %for.inc186.for.body_crit_edge ]
  %n_vifs_switch.01081 = phi i32 [ 0, %for.body.lr.ph ], [ %n_vifs_switch.3, %for.inc186.for.body_crit_edge ]
  %n_vifs_assign.01080 = phi i32 [ 0, %for.body.lr.ph ], [ %n_vifs_assign.3, %for.inc186.for.body_crit_edge ]
  %n_vifs_ctxless.01079 = phi i32 [ 0, %for.body.lr.ph ], [ %n_vifs_ctxless.3, %for.inc186.for.body_crit_edge ]
  %replace_state = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.01084, i32 0, i32 4
  %2 = ptrtoint ptr %replace_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %replace_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp70.not = icmp eq i32 %3, 2
  br i1 %cmp70.not, label %if.end72, label %for.body.for.inc186_crit_edge

for.body.for.inc186_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc186

if.end72:                                         ; preds = %for.body
  %replace_ctx = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.01084, i32 0, i32 5
  %4 = ptrtoint ptr %replace_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %replace_ctx, align 4
  %tobool74.not = icmp eq ptr %5, null
  br i1 %tobool74.not, label %do.end92, label %if.end108, !prof !123

do.end92:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1404, i32 noundef 9, ptr noundef null) #8
  br label %err689

if.end108:                                        ; preds = %if.end72
  %6 = ptrtoint ptr %use_chanctx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_chanctx, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool109.not = icmp eq i8 %7, 0
  %spec.select = select i1 %tobool109.not, ptr %ctx.01084, ptr %new_ctx.01083
  %inc = add i32 %n_ctx.01082, 1
  %assigned_vifs = getelementptr inbounds %struct.ieee80211_chanctx, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %assigned_vifs to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn9011060 = load ptr, ptr %assigned_vifs, align 4
  %cmp120.not1061 = icmp eq ptr %.pn9011060, %assigned_vifs
  br i1 %cmp120.not1061, label %if.end108.if.end146_crit_edge, label %if.end108.for.body123_crit_edge

if.end108.for.body123_crit_edge:                  ; preds = %if.end108
  br label %for.body123

if.end108.if.end146_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146

for.body123:                                      ; preds = %for.inc.for.body123_crit_edge, %if.end108.for.body123_crit_edge
  %.pn9011065 = phi ptr [ %.pn901, %for.inc.for.body123_crit_edge ], [ %.pn9011060, %if.end108.for.body123_crit_edge ]
  %n_assigned.01064 = phi i32 [ %inc124, %for.inc.for.body123_crit_edge ], [ 0, %if.end108.for.body123_crit_edge ]
  %n_reserved.01063 = phi i32 [ %n_reserved.1, %for.inc.for.body123_crit_edge ], [ 0, %if.end108.for.body123_crit_edge ]
  %n_ready.01062 = phi i32 [ %n_ready.1, %for.inc.for.body123_crit_edge ], [ 0, %if.end108.for.body123_crit_edge ]
  %inc124 = add i32 %n_assigned.01064, 1
  %reserved_chanctx = getelementptr i8, ptr %.pn9011065, i32 16
  %9 = ptrtoint ptr %reserved_chanctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reserved_chanctx, align 8
  %tobool125.not = icmp eq ptr %10, null
  br i1 %tobool125.not, label %for.body123.for.inc_crit_edge, label %if.then126

for.body123.for.inc_crit_edge:                    ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then126:                                       ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #10
  %inc127 = add i32 %n_reserved.01063, 1
  %reserved_ready = getelementptr i8, ptr %.pn9011065, i32 49
  %11 = ptrtoint ptr %reserved_ready to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reserved_ready, align 1, !range !124
  %13 = zext i8 %12 to i32
  %spec.select906 = add i32 %n_ready.01062, %13
  br label %for.inc

for.inc:                                          ; preds = %if.then126, %for.body123.for.inc_crit_edge
  %n_ready.1 = phi i32 [ %n_ready.01062, %for.body123.for.inc_crit_edge ], [ %spec.select906, %if.then126 ]
  %n_reserved.1 = phi i32 [ %n_reserved.01063, %for.body123.for.inc_crit_edge ], [ %inc127, %if.then126 ]
  %14 = ptrtoint ptr %.pn9011065 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn901 = load ptr, ptr %.pn9011065, align 4
  %cmp120.not = icmp eq ptr %.pn901, %assigned_vifs
  br i1 %cmp120.not, label %for.end, label %for.inc.for.body123_crit_edge

for.inc.for.body123_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body123

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_cmp4(i32 %inc124, i32 %n_reserved.1)
  %cmp138.not = icmp eq i32 %inc124, %n_reserved.1
  br i1 %cmp138.not, label %for.end.if.end146_crit_edge, label %if.then139

for.end.if.end146_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146

if.then139:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp4(i32 %n_ready.1, i32 %n_reserved.1)
  %cmp140 = icmp eq i32 %n_ready.1, %n_reserved.1
  br i1 %cmp140, label %do.end144, label %if.then139.cleanup738_crit_edge

if.then139.cleanup738_crit_edge:                  ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup738

do.end144:                                        ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #10
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 1
  %15 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %16, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.23) #12
  br label %err689

if.end146:                                        ; preds = %for.end.if.end146_crit_edge, %if.end108.if.end146_crit_edge
  %radar_enabled = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.01084, i32 0, i32 8, i32 4
  %17 = ptrtoint ptr %radar_enabled to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %radar_enabled, align 2
  %reserved_vifs = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.01084, i32 0, i32 3
  %18 = ptrtoint ptr %reserved_vifs to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn9021068 = load ptr, ptr %reserved_vifs, align 4
  %cmp153.not1069 = icmp eq ptr %.pn9021068, %reserved_vifs
  br i1 %cmp153.not1069, label %if.end146.for.inc186_crit_edge, label %if.end146.for.body156_crit_edge

if.end146.for.body156_crit_edge:                  ; preds = %if.end146
  br label %for.body156

if.end146.for.inc186_crit_edge:                   ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc186

for.body156:                                      ; preds = %for.inc179.for.body156_crit_edge, %if.end146.for.body156_crit_edge
  %.pn9021073 = phi ptr [ %.pn902, %for.inc179.for.body156_crit_edge ], [ %.pn9021068, %if.end146.for.body156_crit_edge ]
  %n_vifs_switch.11072 = phi i32 [ %n_vifs_switch.2, %for.inc179.for.body156_crit_edge ], [ %n_vifs_switch.01081, %if.end146.for.body156_crit_edge ]
  %n_vifs_assign.11071 = phi i32 [ %n_vifs_assign.2, %for.inc179.for.body156_crit_edge ], [ %n_vifs_assign.01080, %if.end146.for.body156_crit_edge ]
  %n_vifs_ctxless.11070 = phi i32 [ %n_vifs_ctxless.2, %for.inc179.for.body156_crit_edge ], [ %n_vifs_ctxless.01079, %if.end146.for.body156_crit_edge ]
  %sdata.1 = getelementptr i8, ptr %.pn9021073, i32 -1960
  %call157 = tail call fastcc zeroext i1 @ieee80211_vif_has_in_place_reservation(ptr noundef %sdata.1)
  br i1 %call157, label %land.lhs.true, label %for.body156.if.end161_crit_edge

for.body156.if.end161_crit_edge:                  ; preds = %for.body156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

land.lhs.true:                                    ; preds = %for.body156
  %reserved_ready158 = getelementptr i8, ptr %.pn9021073, i32 41
  %19 = ptrtoint ptr %reserved_ready158 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %reserved_ready158, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool159.not = icmp eq i8 %20, 0
  br i1 %tobool159.not, label %land.lhs.true.cleanup738_crit_edge, label %land.lhs.true.if.end161_crit_edge

land.lhs.true.if.end161_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

land.lhs.true.cleanup738_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup738

if.end161:                                        ; preds = %land.lhs.true.if.end161_crit_edge, %for.body156.if.end161_crit_edge
  %local1.i = getelementptr i8, ptr %.pn9021073, i32 -868
  %21 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %local1.i, align 4
  %dep_map.i = getelementptr inbounds %struct.ieee80211_local, ptr %22, i32 0, i32 89, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end161.ieee80211_vif_get_chanctx.exit_crit_edge

if.end161.ieee80211_vif_get_chanctx.exit_crit_edge: ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit

land.lhs.true.i:                                  ; preds = %if.end161
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.ieee80211_vif_get_chanctx.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.ieee80211_vif_get_chanctx.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b13.i = load i1, ptr @ieee80211_vif_get_chanctx.__warned, align 1
  br i1 %.b13.i, label %land.lhs.true4.i.ieee80211_vif_get_chanctx.exit_crit_edge, label %if.then.i

land.lhs.true4.i.ieee80211_vif_get_chanctx.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_vif_get_chanctx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 76, ptr noundef nonnull @.str.12) #8
  br label %ieee80211_vif_get_chanctx.exit

ieee80211_vif_get_chanctx.exit:                   ; preds = %if.then.i, %land.lhs.true4.i.ieee80211_vif_get_chanctx.exit_crit_edge, %land.lhs.true.i.ieee80211_vif_get_chanctx.exit_crit_edge, %if.end161.ieee80211_vif_get_chanctx.exit_crit_edge
  %chanctx_conf.i = getelementptr i8, ptr %.pn9021073, i32 2940
  %23 = ptrtoint ptr %chanctx_conf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chanctx_conf.i, align 4
  %tobool6.not.i = icmp eq ptr %24, null
  %add.ptr.i = getelementptr i8, ptr %24, i32 -48
  %tobool163.not1034 = icmp eq ptr %add.ptr.i, null
  %tobool163.not = or i1 %tobool6.not.i, %tobool163.not1034
  br i1 %tobool163.not, label %if.else171, label %if.then164

if.then164:                                       ; preds = %ieee80211_vif_get_chanctx.exit
  %replace_state165 = getelementptr i8, ptr %24, i32 -16
  %25 = ptrtoint ptr %replace_state165 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %replace_state165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp166 = icmp eq i32 %26, 1
  br i1 %cmp166, label %if.then167, label %if.else

if.then167:                                       ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #10
  %inc168 = add i32 %n_vifs_switch.11072, 1
  br label %if.end173

if.else:                                          ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #10
  %inc169 = add i32 %n_vifs_assign.11071, 1
  br label %if.end173

if.else171:                                       ; preds = %ieee80211_vif_get_chanctx.exit
  call void @__sanitizer_cov_trace_pc() #10
  %inc172 = add i32 %n_vifs_ctxless.11070, 1
  br label %if.end173

if.end173:                                        ; preds = %if.else171, %if.else, %if.then167
  %n_vifs_ctxless.2 = phi i32 [ %n_vifs_ctxless.11070, %if.then167 ], [ %n_vifs_ctxless.11070, %if.else ], [ %inc172, %if.else171 ]
  %n_vifs_assign.2 = phi i32 [ %n_vifs_assign.11071, %if.then167 ], [ %inc169, %if.else ], [ %n_vifs_assign.11071, %if.else171 ]
  %n_vifs_switch.2 = phi i32 [ %inc168, %if.then167 ], [ %n_vifs_switch.11072, %if.else ], [ %n_vifs_switch.11072, %if.else171 ]
  %reserved_radar_required = getelementptr i8, ptr %.pn9021073, i32 40
  %27 = ptrtoint ptr %reserved_radar_required to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %reserved_radar_required, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool174.not = icmp eq i8 %28, 0
  br i1 %tobool174.not, label %if.end173.for.inc179_crit_edge, label %if.then175

if.end173.for.inc179_crit_edge:                   ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc179

if.then175:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %radar_enabled to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %radar_enabled, align 2
  br label %for.inc179

for.inc179:                                       ; preds = %if.then175, %if.end173.for.inc179_crit_edge
  %30 = ptrtoint ptr %.pn9021073 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn902 = load ptr, ptr %.pn9021073, align 4
  %cmp153.not = icmp eq ptr %.pn902, %reserved_vifs
  br i1 %cmp153.not, label %for.inc179.for.inc186_crit_edge, label %for.inc179.for.body156_crit_edge

for.inc179.for.body156_crit_edge:                 ; preds = %for.inc179
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body156

for.inc179.for.inc186_crit_edge:                  ; preds = %for.inc179
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc186

for.inc186:                                       ; preds = %for.inc179.for.inc186_crit_edge, %if.end146.for.inc186_crit_edge, %for.body.for.inc186_crit_edge
  %n_vifs_ctxless.3 = phi i32 [ %n_vifs_ctxless.01079, %for.body.for.inc186_crit_edge ], [ %n_vifs_ctxless.01079, %if.end146.for.inc186_crit_edge ], [ %n_vifs_ctxless.2, %for.inc179.for.inc186_crit_edge ]
  %n_vifs_assign.3 = phi i32 [ %n_vifs_assign.01080, %for.body.for.inc186_crit_edge ], [ %n_vifs_assign.01080, %if.end146.for.inc186_crit_edge ], [ %n_vifs_assign.2, %for.inc179.for.inc186_crit_edge ]
  %n_vifs_switch.3 = phi i32 [ %n_vifs_switch.01081, %for.body.for.inc186_crit_edge ], [ %n_vifs_switch.01081, %if.end146.for.inc186_crit_edge ], [ %n_vifs_switch.2, %for.inc179.for.inc186_crit_edge ]
  %n_ctx.1 = phi i32 [ %n_ctx.01082, %for.body.for.inc186_crit_edge ], [ %inc, %if.end146.for.inc186_crit_edge ], [ %inc, %for.inc179.for.inc186_crit_edge ]
  %new_ctx.2 = phi ptr [ %new_ctx.01083, %for.body.for.inc186_crit_edge ], [ %spec.select, %if.end146.for.inc186_crit_edge ], [ %spec.select, %for.inc179.for.inc186_crit_edge ]
  %31 = ptrtoint ptr %ctx.01084 to i32
  call void @__asan_load4_noabort(i32 %31)
  %ctx.0 = load ptr, ptr %ctx.01084, align 4
  %cmp67.not = icmp eq ptr %ctx.0, %chanctx_list
  br i1 %cmp67.not, label %for.end192, label %for.inc186.for.body_crit_edge

for.inc186.for.body_crit_edge:                    ; preds = %for.inc186
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end192:                                       ; preds = %for.inc186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_ctx.1)
  %cmp194 = icmp eq i32 %n_ctx.1, 0
  br i1 %cmp194, label %for.end192.do.end210_crit_edge, label %lor.lhs.false.critedge, !prof !123

for.end192.do.end210_crit_edge:                   ; preds = %for.end192
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end210

do.end210:                                        ; preds = %for.end192.do.end210_crit_edge, %if.end55.do.end210_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1462, i32 noundef 9, ptr noundef null) #8
  br label %err689

lor.lhs.false.critedge:                           ; preds = %for.end192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_vifs_switch.3)
  %cmp226 = icmp eq i32 %n_vifs_switch.3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_vifs_assign.3)
  %cmp228 = icmp eq i32 %n_vifs_assign.3, 0
  %or.cond = select i1 %cmp226, i1 %cmp228, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_vifs_ctxless.3)
  %cmp230 = icmp eq i32 %n_vifs_ctxless.3, 0
  %spec.select913 = select i1 %or.cond, i1 %cmp230, i1 false
  br i1 %spec.select913, label %do.end247, label %lor.lhs.false262.critedge, !prof !123

do.end247:                                        ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1465, i32 noundef 9, ptr noundef null) #8
  br label %err689

lor.lhs.false262.critedge:                        ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n_ctx.1)
  %cmp264 = icmp sgt i32 %n_ctx.1, 1
  br i1 %cmp264, label %land.rhs265, label %lor.lhs.false262.critedge.lor.lhs.false301.critedge_crit_edge

lor.lhs.false262.critedge.lor.lhs.false301.critedge_crit_edge: ; preds = %lor.lhs.false262.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false301.critedge

land.rhs265:                                      ; preds = %lor.lhs.false262.critedge
  %use_chanctx266 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 26
  %32 = ptrtoint ptr %use_chanctx266 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %use_chanctx266, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool267.not = icmp eq i8 %33, 0
  br i1 %tobool267.not, label %do.end286, label %land.rhs265.lor.lhs.false301.critedge_crit_edge, !prof !123

land.rhs265.lor.lhs.false301.critedge_crit_edge:  ; preds = %land.rhs265
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false301.critedge

do.end286:                                        ; preds = %land.rhs265
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1466, i32 noundef 9, ptr noundef null) #8
  br label %err689

lor.lhs.false301.critedge:                        ; preds = %land.rhs265.lor.lhs.false301.critedge_crit_edge, %lor.lhs.false262.critedge.lor.lhs.false301.critedge_crit_edge
  %tobool303.not = icmp eq ptr %new_ctx.2, null
  br i1 %tobool303.not, label %land.rhs304, label %lor.lhs.false301.critedge.if.end341_crit_edge

lor.lhs.false301.critedge.if.end341_crit_edge:    ; preds = %lor.lhs.false301.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end341

land.rhs304:                                      ; preds = %lor.lhs.false301.critedge
  %use_chanctx305 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 26
  %34 = ptrtoint ptr %use_chanctx305 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %use_chanctx305, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool306.not = icmp eq i8 %35, 0
  br i1 %tobool306.not, label %do.end325, label %land.rhs304.if.end341_crit_edge, !prof !123

land.rhs304.if.end341_crit_edge:                  ; preds = %land.rhs304
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end341

do.end325:                                        ; preds = %land.rhs304
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1467, i32 noundef 9, ptr noundef null) #8
  br label %err689

if.end341:                                        ; preds = %land.rhs304.if.end341_crit_edge, %lor.lhs.false301.critedge.if.end341_crit_edge
  %use_chanctx342 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 26
  %36 = ptrtoint ptr %use_chanctx342 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %use_chanctx342, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool343.not = icmp eq i8 %37, 0
  br i1 %tobool343.not, label %if.else361, label %if.then344

if.then344:                                       ; preds = %if.end341
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_vifs_switch.3)
  %cmp345 = icmp sgt i32 %n_vifs_switch.3, 0
  br i1 %cmp345, label %if.then346, label %if.then344.if.end351_crit_edge

if.then344.if.end351_crit_edge:                   ; preds = %if.then344
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end351

if.then346:                                       ; preds = %if.then344
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %38 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i915 = icmp eq i32 %38, 0
  br i1 %tobool.not.i915, label %if.then346.if.end55.i_crit_edge, label %land.rhs.i

if.then346.if.end55.i_crit_edge:                  ; preds = %if.then346
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

land.rhs.i:                                       ; preds = %if.then346
  %dep_map.i916 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66, i32 5
  %call.i.i917 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i916, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i917)
  %cmp.not.i = icmp eq i32 %call.i.i917, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !123

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1294, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr.i = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool26.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool26.not.i, label %if.end.i.if.end55.i_crit_edge, label %land.rhs27.i

if.end.i.if.end55.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

land.rhs27.i:                                     ; preds = %if.end.i
  %dep_map28.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 89, i32 5
  %call.i176.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map28.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176.i)
  %cmp30.not.i = icmp eq i32 %call.i176.i, 0
  br i1 %cmp30.not.i, label %do.end49.i, label %land.rhs27.i.if.end55.i_crit_edge, !prof !123

land.rhs27.i.if.end55.i_crit_edge:                ; preds = %land.rhs27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

do.end49.i:                                       ; preds = %land.rhs27.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1295, i32 noundef 9, ptr noundef null) #8
  br label %if.end55.i

if.end55.i:                                       ; preds = %do.end49.i, %land.rhs27.i.if.end55.i_crit_edge, %if.end.i.if.end55.i_crit_edge, %if.then346.if.end55.i_crit_edge
  %39 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n_vifs_switch.3, i32 12) #8
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %if.end55.i.err689_crit_edge, label %if.end7.i.i.i, !prof !123

if.end55.i.err689_crit_edge:                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err689

if.end7.i.i.i:                                    ; preds = %if.end55.i
  %41 = extractvalue { i32, i1 } %39, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %41, i32 noundef 3520) #11
  %tobool66.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool66.not.i, label %if.end7.i.i.i.err689_crit_edge, label %if.end68.i

if.end7.i.i.i.err689_crit_edge:                   ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err689

if.end68.i:                                       ; preds = %if.end7.i.i.i
  %42 = ptrtoint ptr %chanctx_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %ctx.0189.i = load ptr, ptr %chanctx_list, align 4
  %cmp71.not190.i = icmp eq ptr %ctx.0189.i, %chanctx_list
  br i1 %cmp71.not190.i, label %if.end68.i.ieee80211_chsw_switch_vifs.exit_crit_edge, label %if.end68.i.for.body.i_crit_edge

if.end68.i.for.body.i_crit_edge:                  ; preds = %if.end68.i
  br label %for.body.i

if.end68.i.ieee80211_chsw_switch_vifs.exit_crit_edge: ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_chsw_switch_vifs.exit

for.body.i:                                       ; preds = %for.inc137.i.for.body.i_crit_edge, %if.end68.i.for.body.i_crit_edge
  %ctx.0192.i = phi ptr [ %ctx.0.i, %for.inc137.i.for.body.i_crit_edge ], [ %ctx.0189.i, %if.end68.i.for.body.i_crit_edge ]
  %i.0191.i = phi i32 [ %i.3.i, %for.inc137.i.for.body.i_crit_edge ], [ 0, %if.end68.i.for.body.i_crit_edge ]
  %replace_state.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.0192.i, i32 0, i32 4
  %43 = ptrtoint ptr %replace_state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %replace_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp74.not.i = icmp eq i32 %44, 2
  br i1 %cmp74.not.i, label %if.end76.i, label %for.body.i.for.inc137.i_crit_edge

for.body.i.for.inc137.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc137.i

if.end76.i:                                       ; preds = %for.body.i
  %replace_ctx.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.0192.i, i32 0, i32 5
  %45 = ptrtoint ptr %replace_ctx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %replace_ctx.i, align 4
  %tobool78.not.i = icmp eq ptr %46, null
  br i1 %tobool78.not.i, label %ieee80211_chsw_switch_vifs.exit.thread1024, label %if.end112.i, !prof !123

ieee80211_chsw_switch_vifs.exit.thread1024:       ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1306, i32 noundef 9, ptr noundef null) #8
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #8
  br label %err689

if.end112.i:                                      ; preds = %if.end76.i
  %reserved_vifs.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.0192.i, i32 0, i32 3
  %47 = ptrtoint ptr %reserved_vifs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn185.i = load ptr, ptr %reserved_vifs.i, align 4
  %cmp119.not186.i = icmp eq ptr %.pn185.i, %reserved_vifs.i
  br i1 %cmp119.not186.i, label %if.end112.i.for.inc137.i_crit_edge, label %for.body122.lr.ph.i

if.end112.i.for.inc137.i_crit_edge:               ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc137.i

for.body122.lr.ph.i:                              ; preds = %if.end112.i
  %conf130.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.0192.i, i32 0, i32 8
  br label %for.body122.i

for.body122.i:                                    ; preds = %for.inc.i.for.body122.i_crit_edge, %for.body122.lr.ph.i
  %.pn188.i = phi ptr [ %.pn185.i, %for.body122.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body122.i_crit_edge ]
  %i.1187.i = phi i32 [ %i.0191.i, %for.body122.lr.ph.i ], [ %i.2.i, %for.inc.i.for.body122.i_crit_edge ]
  %sdata.0.i = getelementptr i8, ptr %.pn188.i, i32 -1960
  %call123.i = tail call fastcc zeroext i1 @ieee80211_vif_has_in_place_reservation(ptr noundef %sdata.0.i) #8
  br i1 %call123.i, label %if.end125.i, label %for.body122.i.for.inc.i_crit_edge

for.body122.i.for.inc.i_crit_edge:                ; preds = %for.body122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end125.i:                                      ; preds = %for.body122.i
  %local1.i.i = getelementptr i8, ptr %.pn188.i, i32 -868
  %48 = ptrtoint ptr %local1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %local1.i.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %49, i32 0, i32 89, i32 5
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end125.i.ieee80211_vif_get_chanctx.exit.i_crit_edge

if.end125.i.ieee80211_vif_get_chanctx.exit.i_crit_edge: ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit.i

land.lhs.true.i.i:                                ; preds = %if.end125.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.ieee80211_vif_get_chanctx.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.ieee80211_vif_get_chanctx.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b13.i.i = load i1, ptr @ieee80211_vif_get_chanctx.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true4.i.i.ieee80211_vif_get_chanctx.exit.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.ieee80211_vif_get_chanctx.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_vif_get_chanctx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 76, ptr noundef nonnull @.str.12) #8
  br label %ieee80211_vif_get_chanctx.exit.i

ieee80211_vif_get_chanctx.exit.i:                 ; preds = %if.then.i.i, %land.lhs.true4.i.i.ieee80211_vif_get_chanctx.exit.i_crit_edge, %land.lhs.true.i.i.ieee80211_vif_get_chanctx.exit.i_crit_edge, %if.end125.i.ieee80211_vif_get_chanctx.exit.i_crit_edge
  %chanctx_conf.i.i = getelementptr i8, ptr %.pn188.i, i32 2940
  %50 = ptrtoint ptr %chanctx_conf.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %chanctx_conf.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %51, null
  %add.ptr.i.i = getelementptr i8, ptr %51, i32 -48
  %retval.0.i.i = select i1 %tobool6.not.i.i, ptr null, ptr %add.ptr.i.i
  %vif.i = getelementptr i8, ptr %.pn188.i, i32 2120
  %arrayidx.i = getelementptr %struct.ieee80211_vif_chanctx_switch, ptr %call8.i.i.i, i32 %i.1187.i
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %vif.i, ptr %arrayidx.i, align 4
  %conf.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %retval.0.i.i, i32 0, i32 8
  %old_ctx129.i = getelementptr %struct.ieee80211_vif_chanctx_switch, ptr %call8.i.i.i, i32 %i.1187.i, i32 1
  %53 = ptrtoint ptr %old_ctx129.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %conf.i, ptr %old_ctx129.i, align 4
  %new_ctx.i = getelementptr %struct.ieee80211_vif_chanctx_switch, ptr %call8.i.i.i, i32 %i.1187.i, i32 2
  %54 = ptrtoint ptr %new_ctx.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %conf130.i, ptr %new_ctx.i, align 4
  %inc.i = add i32 %i.1187.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %ieee80211_vif_get_chanctx.exit.i, %for.body122.i.for.inc.i_crit_edge
  %i.2.i = phi i32 [ %inc.i, %ieee80211_vif_get_chanctx.exit.i ], [ %i.1187.i, %for.body122.i.for.inc.i_crit_edge ]
  %55 = ptrtoint ptr %.pn188.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn.i = load ptr, ptr %.pn188.i, align 4
  %cmp119.not.i = icmp eq ptr %.pn.i, %reserved_vifs.i
  br i1 %cmp119.not.i, label %for.inc.i.for.inc137.i_crit_edge, label %for.inc.i.for.body122.i_crit_edge

for.inc.i.for.body122.i_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body122.i

for.inc.i.for.inc137.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc137.i

for.inc137.i:                                     ; preds = %for.inc.i.for.inc137.i_crit_edge, %if.end112.i.for.inc137.i_crit_edge, %for.body.i.for.inc137.i_crit_edge
  %i.3.i = phi i32 [ %i.0191.i, %for.body.i.for.inc137.i_crit_edge ], [ %i.0191.i, %if.end112.i.for.inc137.i_crit_edge ], [ %i.2.i, %for.inc.i.for.inc137.i_crit_edge ]
  %56 = ptrtoint ptr %ctx.0192.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %ctx.0.i = load ptr, ptr %ctx.0192.i, align 4
  %cmp71.not.i = icmp eq ptr %ctx.0.i, %chanctx_list
  br i1 %cmp71.not.i, label %for.inc137.i.ieee80211_chsw_switch_vifs.exit_crit_edge, label %for.inc137.i.for.body.i_crit_edge

for.inc137.i.for.body.i_crit_edge:                ; preds = %for.inc137.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc137.i.ieee80211_chsw_switch_vifs.exit_crit_edge: ; preds = %for.inc137.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_chsw_switch_vifs.exit

ieee80211_chsw_switch_vifs.exit:                  ; preds = %for.inc137.i.ieee80211_chsw_switch_vifs.exit_crit_edge, %if.end68.i.ieee80211_chsw_switch_vifs.exit_crit_edge
  %call144.i = tail call i32 @drv_switch_vif_chanctx(ptr noundef %local, ptr noundef nonnull %call8.i.i.i, i32 noundef %n_vifs_switch.3, i32 noundef 1) #8
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144.i)
  %tobool348.not = icmp eq i32 %call144.i, 0
  br i1 %tobool348.not, label %ieee80211_chsw_switch_vifs.exit.if.end351_crit_edge, label %ieee80211_chsw_switch_vifs.exit.err689_crit_edge

ieee80211_chsw_switch_vifs.exit.err689_crit_edge: ; preds = %ieee80211_chsw_switch_vifs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err689

ieee80211_chsw_switch_vifs.exit.if.end351_crit_edge: ; preds = %ieee80211_chsw_switch_vifs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end351

if.end351:                                        ; preds = %ieee80211_chsw_switch_vifs.exit.if.end351_crit_edge, %if.then344.if.end351_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_vifs_assign.3)
  %cmp352 = icmp sgt i32 %n_vifs_assign.3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_vifs_ctxless.3)
  %cmp354 = icmp sgt i32 %n_vifs_ctxless.3, 0
  %or.cond910 = select i1 %cmp352, i1 true, i1 %cmp354
  br i1 %or.cond910, label %if.then355, label %if.end351.if.end366_crit_edge

if.end351.if.end366_crit_edge:                    ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end366

if.then355:                                       ; preds = %if.end351
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %57 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i919 = icmp eq i32 %57, 0
  br i1 %tobool.not.i919, label %if.then355.if.end55.i933_crit_edge, label %land.rhs.i923

if.then355.if.end55.i933_crit_edge:               ; preds = %if.then355
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i933

land.rhs.i923:                                    ; preds = %if.then355
  %dep_map.i920 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66, i32 5
  %call.i.i921 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i920, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i921)
  %cmp.not.i922 = icmp eq i32 %call.i.i921, 0
  br i1 %cmp.not.i922, label %do.end.i924, label %land.rhs.i923.if.end.i927_crit_edge, !prof !123

land.rhs.i923.if.end.i927_crit_edge:              ; preds = %land.rhs.i923
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i927

do.end.i924:                                      ; preds = %land.rhs.i923
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1339, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i927

if.end.i927:                                      ; preds = %do.end.i924, %land.rhs.i923.if.end.i927_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr.i925 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i925)
  %tobool26.not.i926 = icmp eq i32 %.pr.i925, 0
  br i1 %tobool26.not.i926, label %if.end.i927.if.end55.i933_crit_edge, label %land.rhs27.i930

if.end.i927.if.end55.i933_crit_edge:              ; preds = %if.end.i927
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i933

land.rhs27.i930:                                  ; preds = %if.end.i927
  %dep_map28.i928 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 89, i32 5
  %call.i209.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map28.i928, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209.i)
  %cmp30.not.i929 = icmp eq i32 %call.i209.i, 0
  br i1 %cmp30.not.i929, label %do.end49.i931, label %land.rhs27.i930.if.end55.i933_crit_edge, !prof !123

land.rhs27.i930.if.end55.i933_crit_edge:          ; preds = %land.rhs27.i930
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i933

do.end49.i931:                                    ; preds = %land.rhs27.i930
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1340, i32 noundef 9, ptr noundef null) #8
  br label %if.end55.i933

if.end55.i933:                                    ; preds = %do.end49.i931, %land.rhs27.i930.if.end55.i933_crit_edge, %if.end.i927.if.end55.i933_crit_edge, %if.then355.if.end55.i933_crit_edge
  %58 = ptrtoint ptr %chanctx_list to i32
  call void @__asan_load4_noabort(i32 %58)
  %ctx.0215.i = load ptr, ptr %chanctx_list, align 4
  %cmp67.not216.i = icmp eq ptr %ctx.0215.i, %chanctx_list
  br i1 %cmp67.not216.i, label %if.end55.i933.if.end366_crit_edge, label %if.end55.i933.for.body.i935_crit_edge

if.end55.i933.for.body.i935_crit_edge:            ; preds = %if.end55.i933
  br label %for.body.i935

if.end55.i933.if.end366_crit_edge:                ; preds = %if.end55.i933
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end366

for.body.i935:                                    ; preds = %for.inc.i939.for.body.i935_crit_edge, %if.end55.i933.for.body.i935_crit_edge
  %ctx.0217.i = phi ptr [ %ctx.0.i938, %for.inc.i939.for.body.i935_crit_edge ], [ %ctx.0215.i, %if.end55.i933.for.body.i935_crit_edge ]
  %replace_state.i934 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.0217.i, i32 0, i32 4
  %59 = ptrtoint ptr %replace_state.i934 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %replace_state.i934, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp70.not.i = icmp eq i32 %60, 2
  br i1 %cmp70.not.i, label %if.end72.i, label %for.body.i935.for.inc.i939_crit_edge

for.body.i935.for.inc.i939_crit_edge:             ; preds = %for.body.i935
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i939

if.end72.i:                                       ; preds = %for.body.i935
  %replace_ctx.i936 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.0217.i, i32 0, i32 5
  %61 = ptrtoint ptr %replace_ctx.i936 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %replace_ctx.i936, align 4
  %assigned_vifs.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %assigned_vifs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %assigned_vifs.i, align 4
  %cmp.i.not.i = icmp eq ptr %64, %assigned_vifs.i
  br i1 %cmp.i.not.i, label %if.end76.i937, label %if.end72.i.for.inc.i939_crit_edge

if.end72.i.for.inc.i939_crit_edge:                ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i939

if.end76.i937:                                    ; preds = %if.end72.i
  tail call fastcc void @ieee80211_del_chanctx(ptr noundef %local, ptr noundef %62) #8
  %call78.i = tail call fastcc i32 @ieee80211_add_chanctx(ptr noundef %local, ptr noundef %ctx.0217.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool79.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.not.i, label %if.end76.i937.for.inc.i939_crit_edge, label %err87.i

if.end76.i937.for.inc.i939_crit_edge:             ; preds = %if.end76.i937
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i939

for.inc.i939:                                     ; preds = %if.end76.i937.for.inc.i939_crit_edge, %if.end72.i.for.inc.i939_crit_edge, %for.body.i935.for.inc.i939_crit_edge
  %65 = ptrtoint ptr %ctx.0217.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %ctx.0.i938 = load ptr, ptr %ctx.0217.i, align 4
  %cmp67.not.i = icmp eq ptr %ctx.0.i938, %chanctx_list
  br i1 %cmp67.not.i, label %for.inc.i939.if.end366_crit_edge, label %for.inc.i939.for.body.i935_crit_edge

for.inc.i939.for.body.i935_crit_edge:             ; preds = %for.inc.i939
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i935

for.inc.i939.if.end366_crit_edge:                 ; preds = %for.inc.i939
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end366

err87.i:                                          ; preds = %if.end76.i937
  %call89.i = tail call fastcc i32 @ieee80211_add_chanctx(ptr noundef %local, ptr noundef %ctx.0217.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i)
  %tobool90.not.i = icmp eq i32 %call89.i, 0
  br i1 %tobool90.not.i, label %err87.i.if.end112.i940_crit_edge, label %do.end106.i, !prof !125

err87.i.if.end112.i940_crit_edge:                 ; preds = %err87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112.i940

do.end106.i:                                      ; preds = %err87.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1358, i32 noundef 9, ptr noundef null) #8
  br label %if.end112.i940

if.end112.i940:                                   ; preds = %do.end106.i, %err87.i.if.end112.i940_crit_edge
  %ctx.1.in218.i = getelementptr inbounds %struct.list_head, ptr %ctx.0217.i, i32 0, i32 1
  %66 = ptrtoint ptr %ctx.1.in218.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %ctx.1219.i = load ptr, ptr %ctx.1.in218.i, align 4
  %cmp127.not220.i = icmp eq ptr %ctx.1219.i, %chanctx_list
  br i1 %cmp127.not220.i, label %if.end112.i940.err689_crit_edge, label %if.end112.i940.for.body130.i_crit_edge

if.end112.i940.for.body130.i_crit_edge:           ; preds = %if.end112.i940
  br label %for.body130.i

if.end112.i940.err689_crit_edge:                  ; preds = %if.end112.i940
  call void @__sanitizer_cov_trace_pc() #10
  br label %err689

for.body130.i:                                    ; preds = %for.inc174.i.for.body130.i_crit_edge, %if.end112.i940.for.body130.i_crit_edge
  %ctx.1221.i = phi ptr [ %ctx.1.i, %for.inc174.i.for.body130.i_crit_edge ], [ %ctx.1219.i, %if.end112.i940.for.body130.i_crit_edge ]
  %replace_state131.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.1221.i, i32 0, i32 4
  %67 = ptrtoint ptr %replace_state131.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %replace_state131.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp132.not.i = icmp eq i32 %68, 2
  br i1 %cmp132.not.i, label %if.end134.i, label %for.body130.i.for.inc174.i_crit_edge

for.body130.i.for.inc174.i_crit_edge:             ; preds = %for.body130.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc174.i

if.end134.i:                                      ; preds = %for.body130.i
  %replace_ctx135.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.1221.i, i32 0, i32 5
  %69 = ptrtoint ptr %replace_ctx135.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %replace_ctx135.i, align 4
  %assigned_vifs136.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %assigned_vifs136.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %assigned_vifs136.i, align 4
  %cmp.i210.not.i = icmp eq ptr %72, %assigned_vifs136.i
  br i1 %cmp.i210.not.i, label %if.end140.i, label %if.end134.i.for.inc174.i_crit_edge

if.end134.i.for.inc174.i_crit_edge:               ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc174.i

if.end140.i:                                      ; preds = %if.end134.i
  tail call fastcc void @ieee80211_del_chanctx(ptr noundef %local, ptr noundef %ctx.1221.i) #8
  %73 = ptrtoint ptr %replace_ctx135.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %replace_ctx135.i, align 4
  %call143.i = tail call fastcc i32 @ieee80211_add_chanctx(ptr noundef %local, ptr noundef %74) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143.i)
  %tobool144.not.i = icmp eq i32 %call143.i, 0
  br i1 %tobool144.not.i, label %if.end140.i.for.inc174.i_crit_edge, label %do.end160.i, !prof !125

if.end140.i.for.inc174.i_crit_edge:               ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc174.i

do.end160.i:                                      ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1367, i32 noundef 9, ptr noundef null) #8
  br label %for.inc174.i

for.inc174.i:                                     ; preds = %do.end160.i, %if.end140.i.for.inc174.i_crit_edge, %if.end134.i.for.inc174.i_crit_edge, %for.body130.i.for.inc174.i_crit_edge
  %ctx.1.in.i = getelementptr inbounds %struct.list_head, ptr %ctx.1221.i, i32 0, i32 1
  %75 = ptrtoint ptr %ctx.1.in.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %ctx.1.i = load ptr, ptr %ctx.1.in.i, align 4
  %cmp127.not.i = icmp eq ptr %ctx.1.i, %chanctx_list
  br i1 %cmp127.not.i, label %for.inc174.i.err689_crit_edge, label %for.inc174.i.for.body130.i_crit_edge

for.inc174.i.for.body130.i_crit_edge:             ; preds = %for.inc174.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body130.i

for.inc174.i.err689_crit_edge:                    ; preds = %for.inc174.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err689

if.else361:                                       ; preds = %if.end341
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %76 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i942 = icmp eq i32 %76, 0
  br i1 %tobool.not.i942, label %if.else361.if.end.i.i_crit_edge, label %land.rhs.i946

if.else361.if.end.i.i_crit_edge:                  ; preds = %if.else361
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.rhs.i946:                                    ; preds = %if.else361
  %dep_map.i943 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66, i32 5
  %call.i.i944 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i943, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i944)
  %cmp.not.i945 = icmp eq i32 %call.i.i944, 0
  br i1 %cmp.not.i945, label %do.end.i947, label %land.rhs.i946.if.end.i950_crit_edge, !prof !123

land.rhs.i946.if.end.i950_crit_edge:              ; preds = %land.rhs.i946
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i950

do.end.i947:                                      ; preds = %land.rhs.i946
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1272, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i950

if.end.i950:                                      ; preds = %do.end.i947, %land.rhs.i946.if.end.i950_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr.i948 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i948)
  %tobool26.not.i949 = icmp eq i32 %.pr.i948, 0
  br i1 %tobool26.not.i949, label %if.end.i950.if.end.i.i_crit_edge, label %land.rhs27.i953

if.end.i950.if.end.i.i_crit_edge:                 ; preds = %if.end.i950
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.rhs27.i953:                                  ; preds = %if.end.i950
  %dep_map28.i951 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 89, i32 5
  %call.i116.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map28.i951, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116.i)
  %cmp30.not.i952 = icmp eq i32 %call.i116.i, 0
  br i1 %cmp30.not.i952, label %do.end49.i954, label %land.rhs27.i953.if.end55.i956_crit_edge, !prof !123

land.rhs27.i953.if.end55.i956_crit_edge:          ; preds = %land.rhs27.i953
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i956

do.end49.i954:                                    ; preds = %land.rhs27.i953
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1273, i32 noundef 9, ptr noundef null) #8
  br label %if.end55.i956

if.end55.i956:                                    ; preds = %do.end49.i954, %land.rhs27.i953.if.end55.i956_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr118.i = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr118.i)
  %tobool.not.i.i955 = icmp eq i32 %.pr118.i, 0
  br i1 %tobool.not.i.i955, label %if.end55.i956.if.end.i.i_crit_edge, label %land.rhs.i.i

if.end55.i956.if.end.i.i_crit_edge:               ; preds = %if.end55.i956
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %if.end55.i956
  %call.i.i.i957 = tail call i32 @lock_is_held_type(ptr noundef %dep_map28.i951, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i957)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i957, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !123

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 90, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %if.end55.i956.if.end.i.i_crit_edge, %if.end.i950.if.end.i.i_crit_edge, %if.else361.if.end.i.i_crit_edge
  %reserved_vifs.i.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %new_ctx.2, i32 0, i32 3
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i.i
  %.pn.in.i.i = phi ptr [ %reserved_vifs.i.i, %if.end.i.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %compat.addr.0.i.i = phi ptr [ null, %if.end.i.i ], [ %call33.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %77 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp26.not.i.i = icmp eq ptr %.pn.i.i, %reserved_vifs.i.i
  %tobool67.not.i = icmp eq ptr %compat.addr.0.i.i, null
  br i1 %cmp26.not.i.i, label %ieee80211_chanctx_reserved_chandef.exit.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %reserved_chandef.i.i = getelementptr i8, ptr %.pn.i.i, i32 12
  %spec.select.i.i = select i1 %tobool67.not.i, ptr %reserved_chandef.i.i, ptr %compat.addr.0.i.i
  %call33.i.i = tail call ptr @cfg80211_chandef_compatible(ptr noundef %reserved_chandef.i.i, ptr noundef %spec.select.i.i) #8
  %tobool34.not.i.i = icmp eq ptr %call33.i.i, null
  br i1 %tobool34.not.i.i, label %for.body.i.i.ieee80211_chsw_switch_hwconf.exit_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

for.body.i.i.ieee80211_chsw_switch_hwconf.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_chsw_switch_hwconf.exit

ieee80211_chanctx_reserved_chandef.exit.i:        ; preds = %for.cond.i.i
  br i1 %tobool67.not.i, label %ieee80211_chanctx_reserved_chandef.exit.i.ieee80211_chsw_switch_hwconf.exit_crit_edge, label %ieee80211_chsw_switch_hwconf.exit.thread, !prof !123

ieee80211_chanctx_reserved_chandef.exit.i.ieee80211_chsw_switch_hwconf.exit_crit_edge: ; preds = %ieee80211_chanctx_reserved_chandef.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_chsw_switch_hwconf.exit

ieee80211_chsw_switch_hwconf.exit.thread:         ; preds = %ieee80211_chanctx_reserved_chandef.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %radar_enabled.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %new_ctx.2, i32 0, i32 8, i32 4
  %78 = ptrtoint ptr %radar_enabled.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %radar_enabled.i, align 2, !range !124
  %radar_enabled104.i = getelementptr inbounds %struct.ieee80211_conf, ptr %local, i32 0, i32 8
  %80 = ptrtoint ptr %radar_enabled104.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %radar_enabled104.i, align 8
  %_oper_chandef.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 86
  %81 = call ptr @memcpy(ptr %_oper_chandef.i, ptr %compat.addr.0.i.i, i32 28)
  %call105.i = tail call i32 @ieee80211_hw_config(ptr noundef %local, i32 noundef 0) #8
  br label %if.end366

ieee80211_chsw_switch_hwconf.exit:                ; preds = %ieee80211_chanctx_reserved_chandef.exit.i.ieee80211_chsw_switch_hwconf.exit_crit_edge, %for.body.i.i.ieee80211_chsw_switch_hwconf.exit_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1276, i32 noundef 9, ptr noundef null) #8
  br label %err689

if.end366:                                        ; preds = %ieee80211_chsw_switch_hwconf.exit.thread, %for.inc.i939.if.end366_crit_edge, %if.end55.i933.if.end366_crit_edge, %if.end351.if.end366_crit_edge
  %82 = ptrtoint ptr %chanctx_list to i32
  call void @__asan_load4_noabort(i32 %82)
  %ctx.11110 = load ptr, ptr %chanctx_list, align 4
  %cmp375.not1111 = icmp eq ptr %ctx.11110, %chanctx_list
  br i1 %cmp375.not1111, label %if.end366.for.end646_crit_edge, label %for.body378.lr.ph

if.end366.for.end646_crit_edge:                   ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end646

for.body378.lr.ph:                                ; preds = %if.end366
  %wiphy631 = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 1
  br label %for.body378

for.body378:                                      ; preds = %for.inc640.for.body378_crit_edge, %for.body378.lr.ph
  %ctx.11112 = phi ptr [ %ctx.11110, %for.body378.lr.ph ], [ %ctx.1, %for.inc640.for.body378_crit_edge ]
  %replace_state379 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.11112, i32 0, i32 4
  %83 = ptrtoint ptr %replace_state379 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %replace_state379, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp380.not = icmp eq i32 %84, 2
  br i1 %cmp380.not, label %if.end382, label %for.body378.for.inc640_crit_edge

for.body378.for.inc640_crit_edge:                 ; preds = %for.body378
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc640

if.end382:                                        ; preds = %for.body378
  %replace_ctx384 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.11112, i32 0, i32 5
  %85 = ptrtoint ptr %replace_ctx384 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %replace_ctx384, align 4
  %tobool385.not = icmp eq ptr %86, null
  br i1 %tobool385.not, label %do.end403, label %if.end419, !prof !123

do.end403:                                        ; preds = %if.end382
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1503, i32 noundef 9, ptr noundef null) #8
  br label %err689

if.end419:                                        ; preds = %if.end382
  %reserved_vifs421 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.11112, i32 0, i32 3
  %87 = ptrtoint ptr %reserved_vifs421 to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pn1090 = load ptr, ptr %reserved_vifs421, align 4
  %cmp428.not1092 = icmp eq ptr %.pn1090, %reserved_vifs421
  br i1 %cmp428.not1092, label %if.end419.for.end497_crit_edge, label %for.body431.lr.ph

if.end419.for.end497_crit_edge:                   ; preds = %if.end419
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end497

for.body431.lr.ph:                                ; preds = %if.end419
  %conf436 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.11112, i32 0, i32 8
  br label %for.body431

for.body431:                                      ; preds = %cleanup.for.body431_crit_edge, %for.body431.lr.ph
  %.pn1093 = phi ptr [ %.pn1090, %for.body431.lr.ph ], [ %.pn, %cleanup.for.body431_crit_edge ]
  %sdata.21094 = getelementptr i8, ptr %.pn1093, i32 -1960
  %call432 = tail call fastcc zeroext i1 @ieee80211_vif_has_in_place_reservation(ptr noundef %sdata.21094)
  br i1 %call432, label %do.body435, label %for.body431.cleanup_crit_edge

for.body431.cleanup_crit_edge:                    ; preds = %for.body431
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body435:                                       ; preds = %for.body431
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !132
  %vif463 = getelementptr i8, ptr %.pn1093, i32 2120
  %chanctx_conf464 = getelementptr i8, ptr %.pn1093, i32 2940
  %88 = ptrtoint ptr %chanctx_conf464 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %conf436, ptr %chanctx_conf464, align 4
  %89 = ptrtoint ptr %vif463 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %vif463, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %90)
  %cmp477 = icmp eq i32 %90, 3
  br i1 %cmp477, label %if.then478, label %do.body435.if.end479_crit_edge

do.body435.if.end479_crit_edge:                   ; preds = %do.body435
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end479

if.then478:                                       ; preds = %do.body435
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @__ieee80211_vif_copy_chanctx_to_vlans(ptr noundef %sdata.21094, i1 noundef zeroext false)
  br label %if.end479

if.end479:                                        ; preds = %if.then478, %do.body435.if.end479_crit_edge
  tail call void @ieee80211_check_fast_xmit_iface(ptr noundef %sdata.21094) #8
  %reserved_radar_required480 = getelementptr i8, ptr %.pn1093, i32 40
  %91 = ptrtoint ptr %reserved_radar_required480 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %reserved_radar_required480, align 8, !range !124
  %radar_required = getelementptr i8, ptr %.pn1093, i32 260
  %93 = ptrtoint ptr %radar_required to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %radar_required, align 4
  %width = getelementptr i8, ptr %.pn1093, i32 2232
  %94 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %width, align 4
  %reserved_chandef = getelementptr i8, ptr %.pn1093, i32 12
  %width483 = getelementptr i8, ptr %.pn1093, i32 16
  %96 = ptrtoint ptr %width483 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %width483, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp484.not = icmp eq i32 %95, %97
  %spec.select911 = select i1 %cmp484.not, i32 0, i32 2097152
  %chandef1.i = getelementptr i8, ptr %.pn1093, i32 2228
  %98 = call ptr @memcpy(ptr %chandef1.i, ptr %reserved_chandef, i32 28)
  %99 = ptrtoint ptr %vif463 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %vif463, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %100)
  %cmp.not.i960 = icmp eq i32 %100, 3
  br i1 %cmp.not.i960, label %if.end.i961, label %if.end479.ieee80211_vif_update_chandef.exit_crit_edge

if.end479.ieee80211_vif_update_chandef.exit_crit_edge: ; preds = %if.end479
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_update_chandef.exit

if.end.i961:                                      ; preds = %if.end479
  %vlans.i = getelementptr i8, ptr %.pn1093, i32 612
  %101 = ptrtoint ptr %vlans.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %.pn22.i = load ptr, ptr %vlans.i, align 4
  %cmp6.not23.i = icmp eq ptr %.pn22.i, %vlans.i
  br i1 %cmp6.not23.i, label %if.end.i961.ieee80211_vif_update_chandef.exit_crit_edge, label %if.end.i961.for.body.i963_crit_edge

if.end.i961.for.body.i963_crit_edge:              ; preds = %if.end.i961
  br label %for.body.i963

if.end.i961.ieee80211_vif_update_chandef.exit_crit_edge: ; preds = %if.end.i961
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_update_chandef.exit

for.body.i963:                                    ; preds = %for.body.i963.for.body.i963_crit_edge, %if.end.i961.for.body.i963_crit_edge
  %.pn24.i = phi ptr [ %.pn.i962, %for.body.i963.for.body.i963_crit_edge ], [ %.pn22.i, %if.end.i961.for.body.i963_crit_edge ]
  %chandef9.i = getelementptr i8, ptr %.pn24.i, i32 1636
  %102 = call ptr @memcpy(ptr %chandef9.i, ptr %reserved_chandef, i32 28)
  %103 = ptrtoint ptr %.pn24.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %.pn.i962 = load ptr, ptr %.pn24.i, align 4
  %cmp6.not.i = icmp eq ptr %.pn.i962, %vlans.i
  br i1 %cmp6.not.i, label %for.body.i963.ieee80211_vif_update_chandef.exit_crit_edge, label %for.body.i963.for.body.i963_crit_edge

for.body.i963.for.body.i963_crit_edge:            ; preds = %for.body.i963
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i963

for.body.i963.ieee80211_vif_update_chandef.exit_crit_edge: ; preds = %for.body.i963
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_update_chandef.exit

ieee80211_vif_update_chandef.exit:                ; preds = %for.body.i963.ieee80211_vif_update_chandef.exit_crit_edge, %if.end.i961.ieee80211_vif_update_chandef.exit_crit_edge, %if.end479.ieee80211_vif_update_chandef.exit_crit_edge
  br i1 %cmp484.not, label %ieee80211_vif_update_chandef.exit.if.end490_crit_edge, label %if.then489

ieee80211_vif_update_chandef.exit.if.end490_crit_edge: ; preds = %ieee80211_vif_update_chandef.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end490

if.then489:                                       ; preds = %ieee80211_vif_update_chandef.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %sdata.21094, i32 noundef %spec.select911) #8
  br label %if.end490

if.end490:                                        ; preds = %if.then489, %ieee80211_vif_update_chandef.exit.if.end490_crit_edge
  tail call void @ieee80211_recalc_txpower(ptr noundef %sdata.21094, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end490, %for.body431.cleanup_crit_edge
  %104 = ptrtoint ptr %.pn1093 to i32
  call void @__asan_load4_noabort(i32 %104)
  %.pn = load ptr, ptr %.pn1093, align 4
  %cmp428.not = icmp eq ptr %.pn, %reserved_vifs421
  br i1 %cmp428.not, label %cleanup.for.end497_crit_edge, label %cleanup.for.body431_crit_edge

cleanup.for.body431_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body431

cleanup.for.end497_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end497

for.end497:                                       ; preds = %cleanup.for.end497_crit_edge, %if.end419.for.end497_crit_edge
  tail call void @ieee80211_recalc_chanctx_chantype(ptr noundef %local, ptr noundef %ctx.11112)
  tail call void @ieee80211_recalc_smps_chanctx(ptr noundef %local, ptr noundef %ctx.11112)
  tail call fastcc void @ieee80211_recalc_radar_chanctx(ptr noundef %local, ptr noundef %ctx.11112)
  tail call void @ieee80211_recalc_chanctx_min_def(ptr noundef %local, ptr noundef %ctx.11112)
  %105 = ptrtoint ptr %reserved_vifs421 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %reserved_vifs421, align 4
  %cmp511.not1098 = icmp eq ptr %106, %reserved_vifs421
  br i1 %cmp511.not1098, label %for.end497.for.end529_crit_edge, label %for.body514.lr.ph

for.end497.for.end529_crit_edge:                  ; preds = %for.end497
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end529

for.body514.lr.ph:                                ; preds = %for.end497
  %assigned_vifs521 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.11112, i32 0, i32 2
  br label %for.body514

for.body514:                                      ; preds = %for.inc523.for.body514_crit_edge, %for.body514.lr.ph
  %.pn898.in1099 = phi ptr [ %106, %for.body514.lr.ph ], [ %.pn8981102, %for.inc523.for.body514_crit_edge ]
  %107 = ptrtoint ptr %.pn898.in1099 to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pn8981102 = load ptr, ptr %.pn898.in1099, align 8
  %local1.i964 = getelementptr i8, ptr %.pn898.in1099, i32 -868
  %108 = ptrtoint ptr %local1.i964 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %local1.i964, align 4
  %dep_map.i965 = getelementptr inbounds %struct.ieee80211_local, ptr %109, i32 0, i32 89, i32 5
  %call.i.i966 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i965, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i966)
  %tobool.not.i967 = icmp eq i32 %call.i.i966, 0
  br i1 %tobool.not.i967, label %land.lhs.true.i970, label %for.body514.ieee80211_vif_get_chanctx.exit979_crit_edge

for.body514.ieee80211_vif_get_chanctx.exit979_crit_edge: ; preds = %for.body514
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit979

land.lhs.true.i970:                               ; preds = %for.body514
  %call2.i968 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i968)
  %tobool3.not.i969 = icmp eq i32 %call2.i968, 0
  br i1 %tobool3.not.i969, label %land.lhs.true.i970.ieee80211_vif_get_chanctx.exit979_crit_edge, label %land.lhs.true4.i972

land.lhs.true.i970.ieee80211_vif_get_chanctx.exit979_crit_edge: ; preds = %land.lhs.true.i970
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit979

land.lhs.true4.i972:                              ; preds = %land.lhs.true.i970
  %.b13.i971 = load i1, ptr @ieee80211_vif_get_chanctx.__warned, align 1
  br i1 %.b13.i971, label %land.lhs.true4.i972.ieee80211_vif_get_chanctx.exit979_crit_edge, label %if.then.i973

land.lhs.true4.i972.ieee80211_vif_get_chanctx.exit979_crit_edge: ; preds = %land.lhs.true4.i972
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit979

if.then.i973:                                     ; preds = %land.lhs.true4.i972
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_vif_get_chanctx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 76, ptr noundef nonnull @.str.12) #8
  br label %ieee80211_vif_get_chanctx.exit979

ieee80211_vif_get_chanctx.exit979:                ; preds = %if.then.i973, %land.lhs.true4.i972.ieee80211_vif_get_chanctx.exit979_crit_edge, %land.lhs.true.i970.ieee80211_vif_get_chanctx.exit979_crit_edge, %for.body514.ieee80211_vif_get_chanctx.exit979_crit_edge
  %chanctx_conf.i974 = getelementptr i8, ptr %.pn898.in1099, i32 2940
  %110 = ptrtoint ptr %chanctx_conf.i974 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %chanctx_conf.i974, align 4
  %tobool6.not.i975 = icmp eq ptr %111, null
  %add.ptr.i976 = getelementptr i8, ptr %111, i32 -48
  %retval.0.i977 = select i1 %tobool6.not.i975, ptr null, ptr %add.ptr.i976
  %cmp516.not = icmp eq ptr %retval.0.i977, %ctx.11112
  br i1 %cmp516.not, label %if.end518, label %ieee80211_vif_get_chanctx.exit979.for.inc523_crit_edge

ieee80211_vif_get_chanctx.exit979.for.inc523_crit_edge: ; preds = %ieee80211_vif_get_chanctx.exit979
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc523

if.end518:                                        ; preds = %ieee80211_vif_get_chanctx.exit979
  %call.i.i980 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn898.in1099) #8
  br i1 %call.i.i980, label %if.end.i.i981, label %if.end518.list_del.exit_crit_edge

if.end518.list_del.exit_crit_edge:                ; preds = %if.end518
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i981:                                    ; preds = %if.end518
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn898.in1099, i32 0, i32 1
  %112 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prev.i.i, align 4
  %114 = ptrtoint ptr %.pn898.in1099 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %.pn898.in1099, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %113, ptr %prev1.i.i.i, align 4
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %115, ptr %113, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i981, %if.end518.list_del.exit_crit_edge
  %118 = ptrtoint ptr %.pn898.in1099 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn898.in1099, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn898.in1099, i32 0, i32 1
  %119 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %assigned_chanctx_list520 = getelementptr i8, ptr %.pn898.in1099, i32 -8
  %call.i.i982 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %assigned_chanctx_list520) #8
  br i1 %call.i.i982, label %if.end.i.i985, label %list_del.exit.__list_del_entry.exit.i_crit_edge

list_del.exit.__list_del_entry.exit.i_crit_edge:  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i985:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i983 = getelementptr i8, ptr %.pn898.in1099, i32 -4
  %120 = ptrtoint ptr %prev.i.i983 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev.i.i983, align 4
  %122 = ptrtoint ptr %assigned_chanctx_list520 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %assigned_chanctx_list520, align 4
  %prev1.i.i.i984 = getelementptr inbounds %struct.list_head, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %prev1.i.i.i984 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %121, ptr %prev1.i.i.i984, align 4
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %123, ptr %121, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i985, %list_del.exit.__list_del_entry.exit.i_crit_edge
  %126 = ptrtoint ptr %assigned_vifs521 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %assigned_vifs521, align 4
  %call.i.i.i986 = tail call zeroext i1 @__list_add_valid(ptr noundef %assigned_chanctx_list520, ptr noundef %assigned_vifs521, ptr noundef %127) #8
  br i1 %call.i.i.i986, label %if.end.i.i.i987, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move.exit

if.end.i.i.i987:                                  ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %assigned_chanctx_list520, ptr %prev1.i.i2.i, align 4
  %129 = ptrtoint ptr %assigned_chanctx_list520 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %127, ptr %assigned_chanctx_list520, align 4
  %prev3.i.i.i = getelementptr i8, ptr %.pn898.in1099, i32 -4
  %130 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %assigned_vifs521, ptr %prev3.i.i.i, align 4
  %131 = ptrtoint ptr %assigned_vifs521 to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %assigned_chanctx_list520, ptr %assigned_vifs521, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i987, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %reserved_chanctx522 = getelementptr i8, ptr %.pn898.in1099, i32 8
  %132 = ptrtoint ptr %reserved_chanctx522 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %reserved_chanctx522, align 8
  %vif.i988 = getelementptr i8, ptr %.pn898.in1099, i32 2120
  %133 = ptrtoint ptr %vif.i988 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %vif.i988, align 8
  %135 = zext i32 %134 to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %134, label %list_move.exit.for.inc523_crit_edge [
    i32 1, label %list_move.exit.sw.bb.i_crit_edge
    i32 3, label %list_move.exit.sw.bb.i_crit_edge1155
    i32 7, label %list_move.exit.sw.bb.i_crit_edge1156
    i32 11, label %list_move.exit.sw.bb.i_crit_edge1157
    i32 2, label %sw.bb1.i
    i32 0, label %list_move.exit.do.end.i989_crit_edge
    i32 4, label %list_move.exit.do.end.i989_crit_edge1158
    i32 5, label %list_move.exit.do.end.i989_crit_edge1159
    i32 6, label %list_move.exit.do.end.i989_crit_edge1160
    i32 8, label %list_move.exit.do.end.i989_crit_edge1161
    i32 9, label %list_move.exit.do.end.i989_crit_edge1162
    i32 10, label %list_move.exit.do.end.i989_crit_edge1163
    i32 12, label %list_move.exit.do.end.i989_crit_edge1164
    i32 13, label %list_move.exit.do.end.i989_crit_edge1165
  ]

list_move.exit.do.end.i989_crit_edge1165:         ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i989

list_move.exit.do.end.i989_crit_edge1164:         ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i989

list_move.exit.do.end.i989_crit_edge1163:         ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i989

list_move.exit.do.end.i989_crit_edge1162:         ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i989

list_move.exit.do.end.i989_crit_edge1161:         ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i989

list_move.exit.do.end.i989_crit_edge1160:         ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i989

list_move.exit.do.end.i989_crit_edge1159:         ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i989

list_move.exit.do.end.i989_crit_edge1158:         ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i989

list_move.exit.do.end.i989_crit_edge:             ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i989

list_move.exit.sw.bb.i_crit_edge1157:             ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

list_move.exit.sw.bb.i_crit_edge1156:             ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

list_move.exit.sw.bb.i_crit_edge1155:             ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

list_move.exit.sw.bb.i_crit_edge:                 ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

list_move.exit.for.inc523_crit_edge:              ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc523

sw.bb.i:                                          ; preds = %list_move.exit.sw.bb.i_crit_edge, %list_move.exit.sw.bb.i_crit_edge1155, %list_move.exit.sw.bb.i_crit_edge1156, %list_move.exit.sw.bb.i_crit_edge1157
  %136 = ptrtoint ptr %local1.i964 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %local1.i964, align 4
  %csa_finalize_work.i = getelementptr i8, ptr %.pn898.in1099, i32 -128
  tail call void @ieee80211_queue_work(ptr noundef %137, ptr noundef %csa_finalize_work.i) #8
  br label %for.inc523

sw.bb1.i:                                         ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  %138 = ptrtoint ptr %local1.i964 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %local1.i964, align 4
  %chswitch_work.i = getelementptr i8, ptr %.pn898.in1099, i32 828
  tail call void @ieee80211_queue_work(ptr noundef %139, ptr noundef %chswitch_work.i) #8
  br label %for.inc523

do.end.i989:                                      ; preds = %list_move.exit.do.end.i989_crit_edge, %list_move.exit.do.end.i989_crit_edge1158, %list_move.exit.do.end.i989_crit_edge1159, %list_move.exit.do.end.i989_crit_edge1160, %list_move.exit.do.end.i989_crit_edge1161, %list_move.exit.do.end.i989_crit_edge1162, %list_move.exit.do.end.i989_crit_edge1163, %list_move.exit.do.end.i989_crit_edge1164, %list_move.exit.do.end.i989_crit_edge1165
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1095, i32 noundef 9, ptr noundef null) #8
  br label %for.inc523

for.inc523:                                       ; preds = %do.end.i989, %sw.bb1.i, %sw.bb.i, %list_move.exit.for.inc523_crit_edge, %ieee80211_vif_get_chanctx.exit979.for.inc523_crit_edge
  %cmp511.not = icmp eq ptr %.pn8981102, %reserved_vifs421
  br i1 %cmp511.not, label %for.inc523.for.end529_crit_edge, label %for.inc523.for.body514_crit_edge

for.inc523.for.body514_crit_edge:                 ; preds = %for.inc523
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body514

for.inc523.for.end529_crit_edge:                  ; preds = %for.inc523
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end529

for.end529:                                       ; preds = %for.inc523.for.end529_crit_edge, %for.end497.for.end529_crit_edge
  %140 = ptrtoint ptr %reserved_vifs421 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %reserved_vifs421, align 4
  %cmp543.not1105 = icmp eq ptr %141, %reserved_vifs421
  br i1 %cmp543.not1105, label %for.end529.for.inc640_crit_edge, label %for.end529.for.body546_crit_edge

for.end529.for.body546_crit_edge:                 ; preds = %for.end529
  br label %for.body546

for.end529.for.inc640_crit_edge:                  ; preds = %for.end529
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc640

for.body546:                                      ; preds = %for.inc633.for.body546_crit_edge, %for.end529.for.body546_crit_edge
  %.pn899.in1106 = phi ptr [ %.pn8991109, %for.inc633.for.body546_crit_edge ], [ %141, %for.end529.for.body546_crit_edge ]
  %sdata.41107 = getelementptr i8, ptr %.pn899.in1106, i32 -1960
  %142 = ptrtoint ptr %.pn899.in1106 to i32
  call void @__asan_load4_noabort(i32 %142)
  %.pn8991109 = load ptr, ptr %.pn899.in1106, align 8
  %call548 = tail call fastcc zeroext i1 @ieee80211_vif_has_in_place_reservation(ptr noundef %sdata.41107)
  br i1 %call548, label %do.end564, label %if.end580.critedge, !prof !123

do.end564:                                        ; preds = %for.body546
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1565, i32 noundef 9, ptr noundef null) #8
  br label %for.inc633

if.end580.critedge:                               ; preds = %for.body546
  %reserved_chanctx582 = getelementptr i8, ptr %.pn899.in1106, i32 8
  %143 = ptrtoint ptr %reserved_chanctx582 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %reserved_chanctx582, align 8
  %cmp583.not = icmp eq ptr %144, %ctx.11112
  br i1 %cmp583.not, label %if.end615.critedge, label %do.end599, !prof !125

do.end599:                                        ; preds = %if.end580.critedge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1568, i32 noundef 9, ptr noundef null) #8
  br label %for.inc633

if.end615.critedge:                               ; preds = %if.end580.critedge
  %reserved_ready616 = getelementptr i8, ptr %.pn899.in1106, i32 41
  %145 = ptrtoint ptr %reserved_ready616 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %reserved_ready616, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool617.not = icmp eq i8 %146, 0
  br i1 %tobool617.not, label %if.end615.critedge.for.inc633_crit_edge, label %if.end619

if.end615.critedge.for.inc633_crit_edge:          ; preds = %if.end615.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc633

if.end619:                                        ; preds = %if.end615.critedge
  %local1.i990 = getelementptr i8, ptr %.pn899.in1106, i32 -868
  %147 = ptrtoint ptr %local1.i990 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %local1.i990, align 4
  %dep_map.i991 = getelementptr inbounds %struct.ieee80211_local, ptr %148, i32 0, i32 89, i32 5
  %call.i.i992 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i991, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i992)
  %tobool.not.i993 = icmp eq i32 %call.i.i992, 0
  br i1 %tobool.not.i993, label %land.lhs.true.i996, label %if.end619.ieee80211_vif_get_chanctx.exit1005_crit_edge

if.end619.ieee80211_vif_get_chanctx.exit1005_crit_edge: ; preds = %if.end619
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit1005

land.lhs.true.i996:                               ; preds = %if.end619
  %call2.i994 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i994)
  %tobool3.not.i995 = icmp eq i32 %call2.i994, 0
  br i1 %tobool3.not.i995, label %land.lhs.true.i996.ieee80211_vif_get_chanctx.exit1005_crit_edge, label %land.lhs.true4.i998

land.lhs.true.i996.ieee80211_vif_get_chanctx.exit1005_crit_edge: ; preds = %land.lhs.true.i996
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit1005

land.lhs.true4.i998:                              ; preds = %land.lhs.true.i996
  %.b13.i997 = load i1, ptr @ieee80211_vif_get_chanctx.__warned, align 1
  br i1 %.b13.i997, label %land.lhs.true4.i998.ieee80211_vif_get_chanctx.exit1005_crit_edge, label %if.then.i999

land.lhs.true4.i998.ieee80211_vif_get_chanctx.exit1005_crit_edge: ; preds = %land.lhs.true4.i998
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit1005

if.then.i999:                                     ; preds = %land.lhs.true4.i998
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_vif_get_chanctx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 76, ptr noundef nonnull @.str.12) #8
  br label %ieee80211_vif_get_chanctx.exit1005

ieee80211_vif_get_chanctx.exit1005:               ; preds = %if.then.i999, %land.lhs.true4.i998.ieee80211_vif_get_chanctx.exit1005_crit_edge, %land.lhs.true.i996.ieee80211_vif_get_chanctx.exit1005_crit_edge, %if.end619.ieee80211_vif_get_chanctx.exit1005_crit_edge
  %chanctx_conf.i1000 = getelementptr i8, ptr %.pn899.in1106, i32 2940
  %149 = ptrtoint ptr %chanctx_conf.i1000 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %chanctx_conf.i1000, align 4
  %tobool6.not.i1001 = icmp eq ptr %150, null
  %add.ptr.i1002 = getelementptr i8, ptr %150, i32 -48
  %tobool621.not1035 = icmp eq ptr %add.ptr.i1002, null
  %tobool621.not = or i1 %tobool6.not.i1001, %tobool621.not1035
  br i1 %tobool621.not, label %if.else624, label %if.then622

if.then622:                                       ; preds = %ieee80211_vif_get_chanctx.exit1005
  call void @__sanitizer_cov_trace_pc() #10
  %call623 = tail call fastcc i32 @ieee80211_vif_use_reserved_reassign(ptr noundef %sdata.41107)
  br label %if.end626

if.else624:                                       ; preds = %ieee80211_vif_get_chanctx.exit1005
  call void @__sanitizer_cov_trace_pc() #10
  %call625 = tail call fastcc i32 @ieee80211_vif_use_reserved_assign(ptr noundef %sdata.41107)
  br label %if.end626

if.end626:                                        ; preds = %if.else624, %if.then622
  %err.0 = phi i32 [ %call623, %if.then622 ], [ %call625, %if.else624 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool627.not = icmp eq i32 %err.0, 0
  br i1 %tobool627.not, label %if.end626.for.inc633_crit_edge, label %if.then628

if.end626.for.inc633_crit_edge:                   ; preds = %if.end626
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc633

if.then628:                                       ; preds = %if.end626
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr i8, ptr %.pn899.in1106, i32 -856
  tail call void (ptr, ...) @__sdata_info(ptr noundef nonnull @.str.25, ptr noundef %name, i32 noundef %err.0) #8
  %call629 = tail call i32 @ieee80211_vif_unreserve_chanctx(ptr noundef %sdata.41107)
  %151 = ptrtoint ptr %wiphy631 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %wiphy631, align 8
  %wdev = getelementptr i8, ptr %.pn899.in1106, i32 -1952
  tail call void @cfg80211_stop_iface(ptr noundef %152, ptr noundef %wdev, i32 noundef 3264) #8
  br label %for.inc633

for.inc633:                                       ; preds = %if.then628, %if.end626.for.inc633_crit_edge, %if.end615.critedge.for.inc633_crit_edge, %do.end599, %do.end564
  %cmp543.not = icmp eq ptr %.pn8991109, %reserved_vifs421
  br i1 %cmp543.not, label %for.inc633.for.inc640_crit_edge, label %for.inc633.for.body546_crit_edge

for.inc633.for.body546_crit_edge:                 ; preds = %for.inc633
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body546

for.inc633.for.inc640_crit_edge:                  ; preds = %for.inc633
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc640

for.inc640:                                       ; preds = %for.inc633.for.inc640_crit_edge, %for.end529.for.inc640_crit_edge, %for.body378.for.inc640_crit_edge
  %153 = ptrtoint ptr %ctx.11112 to i32
  call void @__asan_load4_noabort(i32 %153)
  %ctx.1 = load ptr, ptr %ctx.11112, align 4
  %cmp375.not = icmp eq ptr %ctx.1, %chanctx_list
  br i1 %cmp375.not, label %for.inc640.for.end646_crit_edge, label %for.inc640.for.body378_crit_edge

for.inc640.for.body378_crit_edge:                 ; preds = %for.inc640
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body378

for.inc640.for.end646_crit_edge:                  ; preds = %for.inc640
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end646

for.end646:                                       ; preds = %for.inc640.for.end646_crit_edge, %if.end366.for.end646_crit_edge
  %154 = ptrtoint ptr %chanctx_list to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %chanctx_list, align 4
  %cmp660.not1114 = icmp eq ptr %155, %chanctx_list
  br i1 %cmp660.not1114, label %for.end646.cleanup738_crit_edge, label %for.end646.for.body663_crit_edge

for.end646.for.body663_crit_edge:                 ; preds = %for.end646
  br label %for.body663

for.end646.cleanup738_crit_edge:                  ; preds = %for.end646
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup738

for.body663:                                      ; preds = %for.inc682.for.body663_crit_edge, %for.end646.for.body663_crit_edge
  %ctx.21115 = phi ptr [ %ctx_tmp.01117, %for.inc682.for.body663_crit_edge ], [ %155, %for.end646.for.body663_crit_edge ]
  %156 = ptrtoint ptr %ctx.21115 to i32
  call void @__asan_load4_noabort(i32 %156)
  %ctx_tmp.01117 = load ptr, ptr %ctx.21115, align 4
  %replace_state664 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.21115, i32 0, i32 4
  %157 = ptrtoint ptr %replace_state664 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %replace_state664, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %158)
  %cmp665.not = icmp eq i32 %158, 1
  br i1 %cmp665.not, label %if.end667, label %for.body663.for.inc682_crit_edge

for.body663.for.inc682_crit_edge:                 ; preds = %for.body663
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc682

if.end667:                                        ; preds = %for.body663
  %replace_ctx668 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.21115, i32 0, i32 5
  %159 = ptrtoint ptr %replace_ctx668 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %replace_ctx668, align 4
  %replace_ctx669 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %160, i32 0, i32 5
  %161 = ptrtoint ptr %replace_ctx669 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %replace_ctx669, align 4
  %162 = load ptr, ptr %replace_ctx668, align 4
  %replace_state671 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %162, i32 0, i32 4
  %163 = ptrtoint ptr %replace_state671 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %replace_state671, align 4
  %call.i.i1006 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ctx.21115) #8
  br i1 %call.i.i1006, label %if.end.i.i1009, label %if.end667.list_del_rcu.exit_crit_edge

if.end667.list_del_rcu.exit_crit_edge:            ; preds = %if.end667
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_rcu.exit

if.end.i.i1009:                                   ; preds = %if.end667
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i1007 = getelementptr inbounds %struct.list_head, ptr %ctx.21115, i32 0, i32 1
  %164 = ptrtoint ptr %prev.i.i1007 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %prev.i.i1007, align 4
  %166 = ptrtoint ptr %ctx.21115 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ctx.21115, align 4
  %prev1.i.i.i1008 = getelementptr inbounds %struct.list_head, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %prev1.i.i.i1008 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %165, ptr %prev1.i.i.i1008, align 4
  %169 = ptrtoint ptr %165 to i32
  call void @__asan_store4_noabort(i32 %169)
  store volatile ptr %167, ptr %165, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i1009, %if.end667.list_del_rcu.exit_crit_edge
  %prev.i1010 = getelementptr inbounds %struct.list_head, ptr %ctx.21115, i32 0, i32 1
  %170 = ptrtoint ptr %prev.i1010 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i1010, align 4
  %tobool674.not = icmp eq ptr %ctx.21115, null
  br i1 %tobool674.not, label %list_del_rcu.exit.for.inc682_crit_edge, label %do.end678

list_del_rcu.exit.for.inc682_crit_edge:           ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc682

do.end678:                                        ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #10
  %callback_head = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.21115, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %callback_head, ptr noundef nonnull inttoptr (i32 8 to ptr)) #8
  br label %for.inc682

for.inc682:                                       ; preds = %do.end678, %list_del_rcu.exit.for.inc682_crit_edge, %for.body663.for.inc682_crit_edge
  %cmp660.not = icmp eq ptr %ctx_tmp.01117, %chanctx_list
  br i1 %cmp660.not, label %for.inc682.cleanup738_crit_edge, label %for.inc682.for.body663_crit_edge

for.inc682.for.body663_crit_edge:                 ; preds = %for.inc682
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body663

for.inc682.cleanup738_crit_edge:                  ; preds = %for.inc682
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup738

err689:                                           ; preds = %do.end403, %ieee80211_chsw_switch_hwconf.exit, %for.inc174.i.err689_crit_edge, %if.end112.i940.err689_crit_edge, %ieee80211_chsw_switch_vifs.exit.err689_crit_edge, %ieee80211_chsw_switch_vifs.exit.thread1024, %if.end7.i.i.i.err689_crit_edge, %if.end55.i.err689_crit_edge, %do.end325, %do.end286, %do.end247, %do.end210, %do.end144, %do.end92
  %err.1 = phi i32 [ -22, %do.end92 ], [ -16, %do.end144 ], [ %call144.i, %ieee80211_chsw_switch_vifs.exit.err689_crit_edge ], [ -22, %do.end403 ], [ -22, %ieee80211_chsw_switch_hwconf.exit ], [ -22, %do.end325 ], [ -22, %do.end286 ], [ -22, %do.end247 ], [ -22, %do.end210 ], [ -22, %ieee80211_chsw_switch_vifs.exit.thread1024 ], [ -12, %if.end7.i.i.i.err689_crit_edge ], [ -12, %if.end55.i.err689_crit_edge ], [ %call78.i, %if.end112.i940.err689_crit_edge ], [ %call78.i, %for.inc174.i.err689_crit_edge ]
  %171 = ptrtoint ptr %chanctx_list to i32
  call void @__asan_load4_noabort(i32 %171)
  %ctx.31120 = load ptr, ptr %chanctx_list, align 4
  %cmp698.not1121 = icmp eq ptr %ctx.31120, %chanctx_list
  br i1 %cmp698.not1121, label %err689.cleanup738_crit_edge, label %err689.for.body701_crit_edge

err689.for.body701_crit_edge:                     ; preds = %err689
  br label %for.body701

err689.cleanup738_crit_edge:                      ; preds = %err689
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup738

for.body701:                                      ; preds = %for.inc731.for.body701_crit_edge, %err689.for.body701_crit_edge
  %ctx.31122 = phi ptr [ %ctx.3, %for.inc731.for.body701_crit_edge ], [ %ctx.31120, %err689.for.body701_crit_edge ]
  %replace_state702 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.31122, i32 0, i32 4
  %172 = ptrtoint ptr %replace_state702 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %replace_state702, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %173)
  %cmp703.not = icmp eq i32 %173, 2
  br i1 %cmp703.not, label %if.end705, label %for.body701.for.inc731_crit_edge

for.body701.for.inc731_crit_edge:                 ; preds = %for.body701
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc731

if.end705:                                        ; preds = %for.body701
  %reserved_vifs707 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.31122, i32 0, i32 3
  %174 = ptrtoint ptr %reserved_vifs707 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %reserved_vifs707, align 4
  %cmp719.not1118 = icmp eq ptr %175, %reserved_vifs707
  br i1 %cmp719.not1118, label %if.end705.for.inc731_crit_edge, label %if.end705.for.body722_crit_edge

if.end705.for.body722_crit_edge:                  ; preds = %if.end705
  br label %for.body722

if.end705.for.inc731_crit_edge:                   ; preds = %if.end705
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc731

for.body722:                                      ; preds = %ieee80211_vif_chanctx_reservation_complete.exit1020.for.body722_crit_edge, %if.end705.for.body722_crit_edge
  %.pn900.in1119 = phi ptr [ %.pn900, %ieee80211_vif_chanctx_reservation_complete.exit1020.for.body722_crit_edge ], [ %175, %if.end705.for.body722_crit_edge ]
  %sdata.5 = getelementptr i8, ptr %.pn900.in1119, i32 -1960
  %176 = ptrtoint ptr %.pn900.in1119 to i32
  call void @__asan_load4_noabort(i32 %176)
  %.pn900 = load ptr, ptr %.pn900.in1119, align 8
  %call723 = tail call i32 @ieee80211_vif_unreserve_chanctx(ptr noundef %sdata.5)
  %vif.i1012 = getelementptr i8, ptr %.pn900.in1119, i32 2120
  %177 = ptrtoint ptr %vif.i1012 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %vif.i1012, align 8
  %179 = zext i32 %178 to i64
  call void @__sanitizer_cov_trace_switch(i64 %179, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %178, label %for.body722.ieee80211_vif_chanctx_reservation_complete.exit1020_crit_edge [
    i32 1, label %for.body722.sw.bb.i1015_crit_edge
    i32 3, label %for.body722.sw.bb.i1015_crit_edge1166
    i32 7, label %for.body722.sw.bb.i1015_crit_edge1167
    i32 11, label %for.body722.sw.bb.i1015_crit_edge1168
    i32 2, label %sw.bb1.i1018
    i32 0, label %for.body722.do.end.i1019_crit_edge
    i32 4, label %for.body722.do.end.i1019_crit_edge1169
    i32 5, label %for.body722.do.end.i1019_crit_edge1170
    i32 6, label %for.body722.do.end.i1019_crit_edge1171
    i32 8, label %for.body722.do.end.i1019_crit_edge1172
    i32 9, label %for.body722.do.end.i1019_crit_edge1173
    i32 10, label %for.body722.do.end.i1019_crit_edge1174
    i32 12, label %for.body722.do.end.i1019_crit_edge1175
    i32 13, label %for.body722.do.end.i1019_crit_edge1176
  ]

for.body722.do.end.i1019_crit_edge1176:           ; preds = %for.body722
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i1019

for.body722.do.end.i1019_crit_edge1175:           ; preds = %for.body722
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i1019

for.body722.do.end.i1019_crit_edge1174:           ; preds = %for.body722
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i1019

for.body722.do.end.i1019_crit_edge1173:           ; preds = %for.body722
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i1019

for.body722.do.end.i1019_crit_edge1172:           ; preds = %for.body722
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i1019

for.body722.do.end.i1019_crit_edge1171:           ; preds = %for.body722
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i1019

for.body722.do.end.i1019_crit_edge1170:           ; preds = %for.body722
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i1019

for.body722.do.end.i1019_crit_edge1169:           ; preds = %for.body722
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i1019

for.body722.do.end.i1019_crit_edge:               ; preds = %for.body722
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i1019

for.body722.sw.bb.i1015_crit_edge1168:            ; preds = %for.body722
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i1015

for.body722.sw.bb.i1015_crit_edge1167:            ; preds = %for.body722
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i1015

for.body722.sw.bb.i1015_crit_edge1166:            ; preds = %for.body722
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i1015

for.body722.sw.bb.i1015_crit_edge:                ; preds = %for.body722
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i1015

for.body722.ieee80211_vif_chanctx_reservation_complete.exit1020_crit_edge: ; preds = %for.body722
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_chanctx_reservation_complete.exit1020

sw.bb.i1015:                                      ; preds = %for.body722.sw.bb.i1015_crit_edge, %for.body722.sw.bb.i1015_crit_edge1166, %for.body722.sw.bb.i1015_crit_edge1167, %for.body722.sw.bb.i1015_crit_edge1168
  %local.i1013 = getelementptr i8, ptr %.pn900.in1119, i32 -868
  %180 = ptrtoint ptr %local.i1013 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %local.i1013, align 4
  %csa_finalize_work.i1014 = getelementptr i8, ptr %.pn900.in1119, i32 -128
  tail call void @ieee80211_queue_work(ptr noundef %181, ptr noundef %csa_finalize_work.i1014) #8
  br label %ieee80211_vif_chanctx_reservation_complete.exit1020

sw.bb1.i1018:                                     ; preds = %for.body722
  call void @__sanitizer_cov_trace_pc() #10
  %local2.i1016 = getelementptr i8, ptr %.pn900.in1119, i32 -868
  %182 = ptrtoint ptr %local2.i1016 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %local2.i1016, align 4
  %chswitch_work.i1017 = getelementptr i8, ptr %.pn900.in1119, i32 828
  tail call void @ieee80211_queue_work(ptr noundef %183, ptr noundef %chswitch_work.i1017) #8
  br label %ieee80211_vif_chanctx_reservation_complete.exit1020

do.end.i1019:                                     ; preds = %for.body722.do.end.i1019_crit_edge, %for.body722.do.end.i1019_crit_edge1169, %for.body722.do.end.i1019_crit_edge1170, %for.body722.do.end.i1019_crit_edge1171, %for.body722.do.end.i1019_crit_edge1172, %for.body722.do.end.i1019_crit_edge1173, %for.body722.do.end.i1019_crit_edge1174, %for.body722.do.end.i1019_crit_edge1175, %for.body722.do.end.i1019_crit_edge1176
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1095, i32 noundef 9, ptr noundef null) #8
  br label %ieee80211_vif_chanctx_reservation_complete.exit1020

ieee80211_vif_chanctx_reservation_complete.exit1020: ; preds = %do.end.i1019, %sw.bb1.i1018, %sw.bb.i1015, %for.body722.ieee80211_vif_chanctx_reservation_complete.exit1020_crit_edge
  %cmp719.not = icmp eq ptr %.pn900, %reserved_vifs707
  br i1 %cmp719.not, label %ieee80211_vif_chanctx_reservation_complete.exit1020.for.inc731_crit_edge, label %ieee80211_vif_chanctx_reservation_complete.exit1020.for.body722_crit_edge

ieee80211_vif_chanctx_reservation_complete.exit1020.for.body722_crit_edge: ; preds = %ieee80211_vif_chanctx_reservation_complete.exit1020
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body722

ieee80211_vif_chanctx_reservation_complete.exit1020.for.inc731_crit_edge: ; preds = %ieee80211_vif_chanctx_reservation_complete.exit1020
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc731

for.inc731:                                       ; preds = %ieee80211_vif_chanctx_reservation_complete.exit1020.for.inc731_crit_edge, %if.end705.for.inc731_crit_edge, %for.body701.for.inc731_crit_edge
  %184 = ptrtoint ptr %ctx.31122 to i32
  call void @__asan_load4_noabort(i32 %184)
  %ctx.3 = load ptr, ptr %ctx.31122, align 4
  %cmp698.not = icmp eq ptr %ctx.3, %chanctx_list
  br i1 %cmp698.not, label %for.inc731.cleanup738_crit_edge, label %for.inc731.for.body701_crit_edge

for.inc731.for.body701_crit_edge:                 ; preds = %for.inc731
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body701

for.inc731.cleanup738_crit_edge:                  ; preds = %for.inc731
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup738

cleanup738:                                       ; preds = %for.inc731.cleanup738_crit_edge, %err689.cleanup738_crit_edge, %for.inc682.cleanup738_crit_edge, %for.end646.cleanup738_crit_edge, %land.lhs.true.cleanup738_crit_edge, %if.then139.cleanup738_crit_edge
  %retval.0 = phi i32 [ -11, %if.then139.cleanup738_crit_edge ], [ %err.1, %err689.cleanup738_crit_edge ], [ 0, %for.end646.cleanup738_crit_edge ], [ %err.1, %for.inc731.cleanup738_crit_edge ], [ 0, %for.inc682.cleanup738_crit_edge ], [ -11, %land.lhs.true.cleanup738_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_vif_change_bandwidth(ptr noundef %sdata, ptr noundef %chandef, ptr nocapture noundef %changed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  %call = tail call zeroext i1 @cfg80211_chandef_usable(ptr noundef %3, ptr noundef %chandef, i32 noundef 1) #8
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %chanctx_mtx = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %chanctx_mtx, i32 noundef 0) #8
  %chandef3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32
  %4 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef, align 4
  %6 = ptrtoint ptr %chandef3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chandef3, align 4
  %cmp.i = icmp eq ptr %5, %7
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true.i:                                  ; preds = %if.end
  %width.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %8 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width.i, align 4
  %width2.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 1
  %10 = ptrtoint ptr %width2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp3.i = icmp eq i32 %9, %11
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true.i.if.end6_crit_edge

land.lhs.true.i.if.end6_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %center_freq1.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 2
  %12 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %center_freq1.i, align 4
  %center_freq15.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 2
  %14 = ptrtoint ptr %center_freq15.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %center_freq15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp6.i = icmp eq i32 %13, %15
  br i1 %cmp6.i, label %land.lhs.true7.i, label %land.lhs.true4.i.if.end6_crit_edge

land.lhs.true4.i.if.end6_crit_edge:               ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %freq1_offset.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 5
  %16 = ptrtoint ptr %freq1_offset.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %freq1_offset.i, align 4
  %freq1_offset8.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 5
  %18 = ptrtoint ptr %freq1_offset8.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %freq1_offset8.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %19)
  %cmp10.i = icmp eq i16 %17, %19
  br i1 %cmp10.i, label %cfg80211_chandef_identical.exit, label %land.lhs.true7.i.if.end6_crit_edge

land.lhs.true7.i.if.end6_crit_edge:               ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

cfg80211_chandef_identical.exit:                  ; preds = %land.lhs.true7.i
  %center_freq2.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 3
  %20 = ptrtoint ptr %center_freq2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %center_freq2.i, align 4
  %center_freq212.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 3
  %22 = ptrtoint ptr %center_freq212.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %center_freq212.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp13.i = icmp eq i32 %21, %23
  br i1 %cmp13.i, label %cfg80211_chandef_identical.exit.out_crit_edge, label %cfg80211_chandef_identical.exit.if.end6_crit_edge

cfg80211_chandef_identical.exit.if.end6_crit_edge: ; preds = %cfg80211_chandef_identical.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

cfg80211_chandef_identical.exit.out_crit_edge:    ; preds = %cfg80211_chandef_identical.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end6:                                          ; preds = %cfg80211_chandef_identical.exit.if.end6_crit_edge, %land.lhs.true7.i.if.end6_crit_edge, %land.lhs.true4.i.if.end6_crit_edge, %land.lhs.true.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %width = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %24 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp = icmp eq i32 %25, 0
  br i1 %cmp, label %if.end6.out_crit_edge, label %lor.lhs.false

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %if.end6
  %width10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 1
  %26 = ptrtoint ptr %width10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %width10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp11 = icmp eq i32 %27, 0
  br i1 %cmp11, label %lor.lhs.false.out_crit_edge, label %do.body

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body:                                          ; preds = %lor.lhs.false
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call16 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true18

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true18:                                  ; preds = %land.lhs.true
  %.b82 = load i1, ptr @ieee80211_vif_change_bandwidth.__warned, align 1
  br i1 %.b82, label %land.lhs.true18.do.end_crit_edge, label %if.then20

land.lhs.true18.do.end_crit_edge:                 ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_vif_change_bandwidth.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1813, ptr noundef nonnull @.str.12) #8
  br label %do.end

do.end:                                           ; preds = %if.then20, %land.lhs.true18.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %chanctx_conf = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %28 = ptrtoint ptr %chanctx_conf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chanctx_conf, align 4
  %tobool23.not = icmp eq ptr %29, null
  br i1 %tobool23.not, label %do.end.out_crit_edge, label %if.end25

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end25:                                         ; preds = %do.end
  %add.ptr = getelementptr i8, ptr %29, i32 -48
  %call27 = tail call ptr @cfg80211_chandef_compatible(ptr noundef nonnull %29, ptr noundef %chandef) #8
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end25.out_crit_edge, label %if.end30

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end30:                                         ; preds = %if.end25
  %replace_state = getelementptr i8, ptr %29, i32 -16
  %30 = ptrtoint ptr %replace_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %replace_state, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %31, label %if.end30.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end30.out_crit_edge
    i32 2, label %do.end44
  ]

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end30.sw.epilog_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end30
  %call31 = tail call fastcc ptr @ieee80211_chanctx_reserved_chandef(ptr noundef %1, ptr noundef %add.ptr, ptr noundef nonnull %call27)
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %sw.bb.out_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end44:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1843, i32 noundef 9, ptr noundef null) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end44, %sw.bb.sw.epilog_crit_edge, %if.end30.sw.epilog_crit_edge
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %33 = call ptr @memcpy(ptr %chandef3, ptr %chandef, i32 28)
  %34 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vif.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp.not.i = icmp eq i32 %35, 3
  br i1 %cmp.not.i, label %if.end.i, label %sw.epilog.ieee80211_vif_update_chandef.exit_crit_edge

sw.epilog.ieee80211_vif_update_chandef.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_update_chandef.exit

if.end.i:                                         ; preds = %sw.epilog
  %vlans.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 0, i32 4
  %36 = ptrtoint ptr %vlans.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn22.i = load ptr, ptr %vlans.i, align 4
  %cmp6.not23.i = icmp eq ptr %.pn22.i, %vlans.i
  br i1 %cmp6.not23.i, label %if.end.i.ieee80211_vif_update_chandef.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.ieee80211_vif_update_chandef.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_update_chandef.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn24.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn22.i, %if.end.i.for.body.i_crit_edge ]
  %chandef9.i = getelementptr i8, ptr %.pn24.i, i32 1636
  %37 = call ptr @memcpy(ptr %chandef9.i, ptr %chandef, i32 28)
  %38 = ptrtoint ptr %.pn24.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn.i = load ptr, ptr %.pn24.i, align 4
  %cmp6.not.i = icmp eq ptr %.pn.i, %vlans.i
  br i1 %cmp6.not.i, label %for.body.i.ieee80211_vif_update_chandef.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.ieee80211_vif_update_chandef.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_update_chandef.exit

ieee80211_vif_update_chandef.exit:                ; preds = %for.body.i.ieee80211_vif_update_chandef.exit_crit_edge, %if.end.i.ieee80211_vif_update_chandef.exit_crit_edge, %sw.epilog.ieee80211_vif_update_chandef.exit_crit_edge
  tail call void @ieee80211_recalc_chanctx_chantype(ptr noundef %1, ptr noundef %add.ptr)
  %39 = ptrtoint ptr %changed to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %changed, align 4
  %or = or i32 %40, 2097152
  store i32 %or, ptr %changed, align 4
  br label %out

out:                                              ; preds = %ieee80211_vif_update_chandef.exit, %sw.bb.out_crit_edge, %if.end30.out_crit_edge, %if.end25.out_crit_edge, %do.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end6.out_crit_edge, %cfg80211_chandef_identical.exit.out_crit_edge
  %ret.0 = phi i32 [ 0, %ieee80211_vif_update_chandef.exit ], [ 0, %cfg80211_chandef_identical.exit.out_crit_edge ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %if.end6.out_crit_edge ], [ -22, %do.end.out_crit_edge ], [ -22, %if.end25.out_crit_edge ], [ -16, %sw.bb.out_crit_edge ], [ -16, %if.end30.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %chanctx_mtx) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_chandef_usable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_chanctx_reserved_chandef(ptr noundef %local, ptr noundef readonly %ctx, ptr noundef %compat) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 89, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !123

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 90, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %reserved_vifs = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %reserved_vifs, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %compat.addr.0 = phi ptr [ %compat, %if.end ], [ %call33, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp26.not = icmp eq ptr %.pn, %reserved_vifs
  br i1 %cmp26.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %tobool29.not = icmp eq ptr %compat.addr.0, null
  %reserved_chandef = getelementptr i8, ptr %.pn, i32 12
  %spec.select = select i1 %tobool29.not, ptr %reserved_chandef, ptr %compat.addr.0
  %call33 = tail call ptr @cfg80211_chandef_compatible(ptr noundef %reserved_chandef, ptr noundef %spec.select) #8
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %compat.addr.2 = phi ptr [ null, %for.body.for.end_crit_edge ], [ %compat.addr.0, %for.cond.for.end_crit_edge ]
  ret ptr %compat.addr.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_vif_release_channel(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %do.end, label %land.rhs.if.end_crit_edge, !prof !123

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1860, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool23.not = icmp eq i32 %5, 0
  br i1 %tobool23.not, label %if.end.if.end50_crit_edge, label %land.rhs24

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

land.rhs24:                                       ; preds = %if.end
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %6 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %local, align 4
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 66, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end44, label %land.rhs24.if.end50_crit_edge, !prof !123

land.rhs24.if.end50_crit_edge:                    ; preds = %land.rhs24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end44:                                         ; preds = %land.rhs24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1862, i32 noundef 9, ptr noundef null) #8
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %land.rhs24.if.end50_crit_edge, %if.end.if.end50_crit_edge
  %local60 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %8 = ptrtoint ptr %local60 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %local60, align 4
  %chanctx_mtx = getelementptr inbounds %struct.ieee80211_local, ptr %9, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %chanctx_mtx, i32 noundef 0) #8
  tail call fastcc void @__ieee80211_vif_release_channel(ptr noundef %sdata)
  %10 = ptrtoint ptr %local60 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %local60, align 4
  %chanctx_mtx62 = getelementptr inbounds %struct.ieee80211_local, ptr %11, i32 0, i32 89
  tail call void @mutex_unlock(ptr noundef %chanctx_mtx62) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_vif_vlan_copy_chanctx(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.not = icmp eq i32 %3, 4
  br i1 %cmp.not, label %lor.rhs, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %bss = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 49
  %4 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bss, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %lor.rhs.do.end_crit_edge, label %if.end24, !prof !123

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1875, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end24:                                         ; preds = %lor.rhs
  %chanctx_mtx = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %chanctx_mtx, i32 noundef 0) #8
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not = icmp eq i32 %call.i, 0
  br i1 %tobool29.not, label %land.lhs.true, label %if.end24.do.end37_crit_edge

if.end24.do.end37_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end37

land.lhs.true:                                    ; preds = %if.end24
  %call30 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true.do.end37_crit_edge, label %land.lhs.true32

land.lhs.true.do.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end37

land.lhs.true32:                                  ; preds = %land.lhs.true
  %.b91 = load i1, ptr @ieee80211_vif_vlan_copy_chanctx.__warned, align 1
  br i1 %.b91, label %land.lhs.true32.do.end37_crit_edge, label %if.then34

land.lhs.true32.do.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end37

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_vif_vlan_copy_chanctx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1883, ptr noundef nonnull @.str.12) #8
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %land.lhs.true32.do.end37_crit_edge, %land.lhs.true.do.end37_crit_edge, %if.end24.do.end37_crit_edge
  %chanctx_conf = getelementptr i8, ptr %5, i32 2348
  %6 = ptrtoint ptr %chanctx_conf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chanctx_conf, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !133
  %chanctx_conf69 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %8 = ptrtoint ptr %chanctx_conf69 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %chanctx_conf69, align 4
  tail call void @mutex_unlock(ptr noundef %chanctx_mtx) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_iter_chan_contexts_atomic(ptr noundef %hw, ptr nocapture noundef readonly %iter, ptr noundef %iter_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !126
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b28 = load i1, ptr @ieee80211_iter_chan_contexts_atomic.__warned, align 1
  br i1 %.b28, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_iter_chan_contexts_atomic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1899, ptr noundef nonnull @.str.1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %chanctx_list = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 88
  %4 = ptrtoint ptr %chanctx_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %ctx.038 = load volatile ptr, ptr %chanctx_list, align 4
  %cmp.not39 = icmp eq ptr %ctx.038, %chanctx_list
  br i1 %cmp.not39, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %ctx.040 = phi ptr [ %ctx.0, %for.inc.for.body_crit_edge ], [ %ctx.038, %do.end.for.body_crit_edge ]
  %driver_present = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.040, i32 0, i32 7
  %5 = ptrtoint ptr %driver_present to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %driver_present, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool11.not = icmp eq i8 %6, 0
  br i1 %tobool11.not, label %for.body.for.inc_crit_edge, label %if.then12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conf = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx.040, i32 0, i32 8
  tail call void %iter(ptr noundef %hw, ptr noundef %conf, ptr noundef %iter_data) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %ctx.040 to i32
  call void @__asan_load4_noabort(i32 %7)
  %ctx.0 = load volatile ptr, ptr %ctx.040, align 4
  %cmp.not = icmp eq ptr %ctx.0, %chanctx_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i29 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i29, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i32

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i32:                                ; preds = %for.end
  %call1.i30 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !127
  %8 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i.i36 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i37, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_chandef_downgrade(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_get_max_required_bw(ptr noundef readonly %sdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !126
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b47 = load i1, ptr @ieee80211_get_max_required_bw.__warned, align 1
  br i1 %.b47, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_get_max_required_bw.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 234, ptr noundef nonnull @.str.1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %4 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local, align 4
  %sta_list = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 49
  %6 = ptrtoint ptr %sta_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %sta.059 = load volatile ptr, ptr %sta_list, align 4
  %cmp.not61 = icmp eq ptr %sta.059, %sta_list
  br i1 %cmp.not61, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %bss19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 49
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sta.063 = phi ptr [ %sta.059, %for.body.lr.ph ], [ %sta.0, %for.inc.for.body_crit_edge ]
  %max_bw.062 = phi i32 [ 0, %for.body.lr.ph ], [ %max_bw.1, %for.inc.for.body_crit_edge ]
  %sdata11 = getelementptr inbounds %struct.sta_info, ptr %sta.063, i32 0, i32 6
  %7 = ptrtoint ptr %sdata11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdata11, align 4
  %cmp12.not = icmp eq ptr %8, %sdata
  br i1 %cmp12.not, label %for.body.if.end22_crit_edge, label %land.lhs.true13

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

land.lhs.true13:                                  ; preds = %for.body
  %bss = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %8, i32 0, i32 49
  %9 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bss, align 4
  %tobool15.not = icmp eq ptr %10, null
  br i1 %tobool15.not, label %land.lhs.true13.for.inc_crit_edge, label %land.lhs.true16

land.lhs.true13.for.inc_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %11 = ptrtoint ptr %bss19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bss19, align 4
  %cmp20 = icmp eq ptr %10, %12
  br i1 %cmp20, label %land.lhs.true16.if.end22_crit_edge, label %land.lhs.true16.for.inc_crit_edge

land.lhs.true16.for.inc_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true16.if.end22_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true16.if.end22_crit_edge, %for.body.if.end22_crit_edge
  %call.i48 = tail call i32 @ieee80211_sta_cap_rx_bw(ptr noundef %sta.063) #8
  %13 = zext i32 %call.i48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %call.i48, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %if.end22.ieee80211_get_sta_bw.exit_crit_edge
    i32 2, label %sw.bb3.i
    i32 3, label %sw.bb4.i
  ]

if.end22.ieee80211_get_sta_bw.exit_crit_edge:     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_get_sta_bw.exit

sw.bb.i:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %ht_supported.i = getelementptr inbounds %struct.sta_info, ptr %sta.063, i32 0, i32 48, i32 3, i32 1
  %14 = ptrtoint ptr %ht_supported.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ht_supported.i, align 2, !range !124
  %16 = zext i8 %15 to i32
  br label %ieee80211_get_sta_bw.exit

sw.bb3.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_get_sta_bw.exit

sw.bb4.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_get_sta_bw.exit

do.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 222, i32 noundef 9, ptr noundef null) #8
  br label %ieee80211_get_sta_bw.exit

ieee80211_get_sta_bw.exit:                        ; preds = %do.end.i, %sw.bb4.i, %sw.bb3.i, %sw.bb.i, %if.end22.ieee80211_get_sta_bw.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %do.end.i ], [ 5, %sw.bb4.i ], [ 3, %sw.bb3.i ], [ %16, %sw.bb.i ], [ 2, %if.end22.ieee80211_get_sta_bw.exit_crit_edge ]
  %17 = tail call i32 @llvm.umax.i32(i32 %max_bw.062, i32 %retval.0.i)
  br label %for.inc

for.inc:                                          ; preds = %ieee80211_get_sta_bw.exit, %land.lhs.true16.for.inc_crit_edge, %land.lhs.true13.for.inc_crit_edge
  %max_bw.1 = phi i32 [ %17, %ieee80211_get_sta_bw.exit ], [ %max_bw.062, %land.lhs.true16.for.inc_crit_edge ], [ %max_bw.062, %land.lhs.true13.for.inc_crit_edge ]
  %18 = ptrtoint ptr %sta.063 to i32
  call void @__asan_load4_noabort(i32 %18)
  %sta.0 = load volatile ptr, ptr %sta.063, align 4
  %19 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %local, align 4
  %sta_list10 = getelementptr inbounds %struct.ieee80211_local, ptr %20, i32 0, i32 49
  %cmp.not = icmp eq ptr %sta.0, %sta_list10
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %max_bw.0.lcssa = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %max_bw.1, %for.inc.for.end_crit_edge ]
  %call.i49 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i49, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i52

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i52:                                ; preds = %for.end
  %call1.i50 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool.not.i51 = icmp eq i32 %call1.i50, 0
  br i1 %tobool.not.i51, label %land.lhs.true.i52.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i54

land.lhs.true.i52.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i54:                               ; preds = %land.lhs.true.i52
  %.b4.i53 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i53, label %land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge, label %if.then.i55

land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i55:                                      ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i55, %land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i52.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !127
  %21 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i.i56 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i56 to ptr
  %preempt_count.i.i.i.i57 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i57, align 4
  %sub.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i57, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret i32 %max_bw.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_sta_cap_rx_bw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_sta_cur_vht_bw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rate_control_rate_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_change_chanctx(ptr noundef %local, ptr noundef %ctx, i32 noundef %changed) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_change_chanctx, i32 0, i32 1), ptr blockaddress(@trace_drv_change_chanctx, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !134

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !125

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !135
  %call42 = tail call i32 @__traceiter_drv_change_chanctx(ptr noundef null, ptr noundef %local, ptr noundef %ctx, i32 noundef %changed) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !136
  %13 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !125

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_change_chanctx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_change_chanctx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_change_chanctx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_drv_change_chanctx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1574, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !138
  %31 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
define internal fastcc void @trace_drv_return_void(ptr noundef %local) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), ptr blockaddress(@trace_drv_return_void, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !134

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !125

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !139
  %call42 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %local) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !140
  %13 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !125

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_return_void.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_drv_return_void.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 205, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !138
  %31 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
declare dso_local i32 @__traceiter_drv_change_chanctx(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_del_chanctx(ptr noundef %local, ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 89, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !123

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 630, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %use_chanctx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 26
  %1 = ptrtoint ptr %use_chanctx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %use_chanctx, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool24.not = icmp eq i8 %2, 0
  br i1 %tobool24.not, label %if.then25, label %if.else75

if.then25:                                        ; preds = %if.end
  %_oper_chandef = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 86
  %3 = ptrtoint ptr %_oper_chandef to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_oper_chandef, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp26 = icmp eq i32 %6, 4
  br i1 %cmp26, label %if.then27, label %if.then25.if.end31_crit_edge

if.then25.if.end31_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %call29 = tail call i32 @ieee80211_s1g_channel_width(ptr noundef %4) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.then25.if.end31_crit_edge
  %.sink = phi i32 [ %call29, %if.then27 ], [ 0, %if.then25.if.end31_crit_edge ]
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 86, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %7, align 4
  %9 = ptrtoint ptr %_oper_chandef to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_oper_chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %center_freq, align 4
  %center_freq1 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 86, i32 2
  %13 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %center_freq1, align 4
  %freq_offset = getelementptr inbounds %struct.ieee80211_channel, ptr %10, i32 0, i32 2
  %14 = ptrtoint ptr %freq_offset to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %freq_offset, align 4
  %freq1_offset = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 86, i32 5
  %16 = ptrtoint ptr %freq1_offset to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %freq1_offset, align 4
  %center_freq2 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 86, i32 3
  %17 = ptrtoint ptr %center_freq2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %center_freq2, align 4
  %radar_enabled = getelementptr inbounds %struct.ieee80211_conf, ptr %local, i32 0, i32 8
  %18 = ptrtoint ptr %radar_enabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %radar_enabled, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool35.not = icmp eq i8 %19, 0
  br i1 %tobool35.not, label %if.end31.if.end63_crit_edge, label %land.rhs36

if.end31.if.end63_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

land.rhs36:                                       ; preds = %if.end31
  %chanctx_list = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 88
  %20 = ptrtoint ptr %chanctx_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %chanctx_list, align 4
  %cmp.i.not = icmp eq ptr %21, %chanctx_list
  br i1 %cmp.i.not, label %land.rhs36.if.end63_crit_edge, label %do.end57, !prof !125

land.rhs36.if.end63_crit_edge:                    ; preds = %land.rhs36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

do.end57:                                         ; preds = %land.rhs36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 650, i32 noundef 9, ptr noundef null) #8
  br label %if.end63

if.end63:                                         ; preds = %do.end57, %land.rhs36.if.end63_crit_edge, %if.end31.if.end63_crit_edge
  %22 = ptrtoint ptr %radar_enabled to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %radar_enabled, align 8
  %call74 = tail call i32 @ieee80211_hw_config(ptr noundef %local, i32 noundef 64) #8
  br label %if.end76

if.else75:                                        ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 892) #8
  %driver_present.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 7
  %23 = ptrtoint ptr %driver_present.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %driver_present.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %do.end13.i, label %if.end27.critedge.i, !prof !123

do.end13.i:                                       ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 894, i32 noundef 9, ptr noundef null) #8
  br label %if.end76

if.end27.critedge.i:                              ; preds = %if.else75
  tail call fastcc void @trace_drv_remove_chanctx(ptr noundef %local, ptr noundef %ctx) #8
  %ops.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %remove_chanctx.i = getelementptr inbounds %struct.ieee80211_ops, ptr %26, i32 0, i32 73
  %27 = ptrtoint ptr %remove_chanctx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %remove_chanctx.i, align 4
  %tobool28.not.i = icmp eq ptr %28, null
  br i1 %tobool28.not.i, label %if.end27.critedge.i.if.end32.i_crit_edge, label %if.then29.i

if.end27.critedge.i.if.end32.i_crit_edge:         ; preds = %if.end27.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then29.i:                                      ; preds = %if.end27.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  %conf.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 8
  tail call void %28(ptr noundef %local, ptr noundef %conf.i) #8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %if.end27.critedge.i.if.end32.i_crit_edge
  tail call fastcc void @trace_drv_return_void(ptr noundef %local) #8
  %29 = ptrtoint ptr %driver_present.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %driver_present.i, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.end32.i, %do.end13.i, %if.end63
  tail call void @ieee80211_recalc_idle(ptr noundef %local) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_s1g_channel_width(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_remove_chanctx(ptr noundef %local, ptr noundef %ctx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_remove_chanctx, i32 0, i32 1), ptr blockaddress(@trace_drv_remove_chanctx, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !134

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !125

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !141
  %call42 = tail call i32 @__traceiter_drv_remove_chanctx(ptr noundef null, ptr noundef %local, ptr noundef %ctx) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !142
  %13 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !125

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_remove_chanctx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_remove_chanctx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_remove_chanctx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_drv_remove_chanctx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1549, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !138
  %31 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
declare dso_local i32 @__traceiter_drv_remove_chanctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_max_num_channels(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_add_chanctx(ptr noundef %local, ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end55_crit_edge, label %land.rhs

entry.if.end55_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !123

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 577, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool26.not = icmp eq i32 %.pr, 0
  br i1 %tobool26.not, label %if.end.if.end55_crit_edge, label %land.rhs27

if.end.if.end55_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

land.rhs27:                                       ; preds = %if.end
  %dep_map28 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 89, i32 5
  %call.i103 = tail call i32 @lock_is_held_type(ptr noundef %dep_map28, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %cmp30.not = icmp eq i32 %call.i103, 0
  br i1 %cmp30.not, label %do.end49, label %land.rhs27.if.end55_crit_edge, !prof !123

land.rhs27.if.end55_crit_edge:                    ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.end49:                                         ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 578, i32 noundef 9, ptr noundef null) #8
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %land.rhs27.if.end55_crit_edge, %if.end.if.end55_crit_edge, %entry.if.end55_crit_edge
  %use_chanctx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 26
  %1 = ptrtoint ptr %use_chanctx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %use_chanctx, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool65.not = icmp eq i8 %2, 0
  br i1 %tobool65.not, label %if.then66, label %if.end55.if.end70_crit_edge

if.end55.if.end70_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then66:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %radar_enabled = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 8, i32 4
  %3 = ptrtoint ptr %radar_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %radar_enabled, align 2, !range !124
  %radar_enabled69 = getelementptr inbounds %struct.ieee80211_conf, ptr %local, i32 0, i32 8
  %5 = ptrtoint ptr %radar_enabled69 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %radar_enabled69, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %if.end55.if.end70_crit_edge
  %call71 = tail call i32 @ieee80211_idle_off(ptr noundef %local) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end70.if.end75_crit_edge, label %if.then73

if.end70.if.end75_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %call74 = tail call i32 @ieee80211_hw_config(ptr noundef %local, i32 noundef %call71) #8
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.end70.if.end75_crit_edge
  %6 = ptrtoint ptr %use_chanctx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_chanctx, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool77.not = icmp eq i8 %7, 0
  br i1 %tobool77.not, label %if.then78, label %if.else

if.then78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %_oper_chandef = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 86
  %conf79 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 8
  %8 = call ptr @memcpy(ptr %_oper_chandef, ptr %conf79, i32 28)
  %call80 = tail call i32 @ieee80211_hw_config(ptr noundef %local, i32 noundef 64) #8
  br label %cleanup

if.else:                                          ; preds = %if.end75
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 877) #8
  tail call fastcc void @trace_drv_add_chanctx(ptr noundef %local, ptr noundef %ctx) #8
  %ops.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %add_chanctx.i = getelementptr inbounds %struct.ieee80211_ops, ptr %10, i32 0, i32 72
  %11 = ptrtoint ptr %add_chanctx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add_chanctx.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.thread.i, label %if.end.i

if.end.thread.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_drv_return_int(ptr noundef %local, i32 noundef -95) #8
  br label %if.then83

if.end.i:                                         ; preds = %if.else
  %conf.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 8
  %call.i104 = tail call i32 %12(ptr noundef %local, ptr noundef %conf.i) #8
  tail call fastcc void @trace_drv_return_int(ptr noundef %local, i32 noundef %call.i104) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool6.not.i = icmp eq i32 %call.i104, 0
  br i1 %tobool6.not.i, label %drv_add_chanctx.exit, label %if.end.i.if.then83_crit_edge

if.end.i.if.then83_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then83

drv_add_chanctx.exit:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %driver_present.i = getelementptr inbounds %struct.ieee80211_chanctx, ptr %ctx, i32 0, i32 7
  %13 = ptrtoint ptr %driver_present.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %driver_present.i, align 4
  br label %cleanup

if.then83:                                        ; preds = %if.end.i.if.then83_crit_edge, %if.end.thread.i
  %ret.019.i.ph = phi i32 [ %call.i104, %if.end.i.if.then83_crit_edge ], [ -95, %if.end.thread.i ]
  tail call void @ieee80211_recalc_idle(ptr noundef %local) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then83, %drv_add_chanctx.exit, %if.then78
  %retval.0 = phi i32 [ %ret.019.i.ph, %if.then83 ], [ 0, %drv_add_chanctx.exit ], [ 0, %if.then78 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_idle_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_add_chanctx(ptr noundef %local, ptr noundef %ctx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_add_chanctx, i32 0, i32 1), ptr blockaddress(@trace_drv_add_chanctx, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !134

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !125

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !143
  %call42 = tail call i32 @__traceiter_drv_add_chanctx(ptr noundef null, ptr noundef %local, ptr noundef %ctx) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !144
  %13 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !125

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_add_chanctx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_add_chanctx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_add_chanctx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_drv_add_chanctx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1543, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !138
  %31 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
define internal fastcc void @trace_drv_return_int(ptr noundef %local, i32 noundef %ret) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), ptr blockaddress(@trace_drv_return_int, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !134

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !125

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !145
  %call42 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %local, i32 noundef %ret) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !146
  %13 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !125

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_return_int.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_drv_return_int.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 219, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !138
  %31 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
declare dso_local i32 @__traceiter_drv_add_chanctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_txpower(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_bss_info_change_notify(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_check_fast_xmit_iface(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_unassign_vif_chanctx(ptr noundef %local, ptr noundef %sdata, ptr noundef %ctx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_unassign_vif_chanctx, i32 0, i32 1), ptr blockaddress(@trace_drv_unassign_vif_chanctx, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !134

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !125

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !147
  %call42 = tail call i32 @__traceiter_drv_unassign_vif_chanctx(ptr noundef null, ptr noundef %local, ptr noundef %sdata, ptr noundef %ctx) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !148
  %13 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !125

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_unassign_vif_chanctx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_unassign_vif_chanctx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_unassign_vif_chanctx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_drv_unassign_vif_chanctx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1708, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !138
  %31 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
declare dso_local i32 @__traceiter_drv_unassign_vif_chanctx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_assign_vif_chanctx(ptr noundef %local, ptr noundef %sdata, ptr noundef %ctx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_assign_vif_chanctx, i32 0, i32 1), ptr blockaddress(@trace_drv_assign_vif_chanctx, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !134

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !125

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !149
  %call42 = tail call i32 @__traceiter_drv_assign_vif_chanctx(ptr noundef null, ptr noundef %local, ptr noundef %sdata, ptr noundef %ctx) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !150
  %13 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !125

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !113) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_assign_vif_chanctx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_assign_vif_chanctx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_assign_vif_chanctx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_drv_assign_vif_chanctx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1701, ptr noundef nonnull @.str.7) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !138
  %31 = tail call i32 @llvm.read_register.i32(metadata !113) #8
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
declare dso_local i32 @__traceiter_drv_assign_vif_chanctx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drv_switch_vif_chanctx(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ieee80211_vif_has_in_place_reservation(ptr nocapture noundef readonly %sdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %1 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %local, align 4
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %2, i32 0, i32 89, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !123

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1247, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %reserved_chanctx = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 35
  %3 = ptrtoint ptr %reserved_chanctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reserved_chanctx, align 8
  %local1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %5 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %local1.i, align 4
  %dep_map.i = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 89, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.ieee80211_vif_get_chanctx.exit_crit_edge

if.end.ieee80211_vif_get_chanctx.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.ieee80211_vif_get_chanctx.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.ieee80211_vif_get_chanctx.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b13.i = load i1, ptr @ieee80211_vif_get_chanctx.__warned, align 1
  br i1 %.b13.i, label %land.lhs.true4.i.ieee80211_vif_get_chanctx.exit_crit_edge, label %if.then.i

land.lhs.true4.i.ieee80211_vif_get_chanctx.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_get_chanctx.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_vif_get_chanctx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 76, ptr noundef nonnull @.str.12) #8
  br label %ieee80211_vif_get_chanctx.exit

ieee80211_vif_get_chanctx.exit:                   ; preds = %if.then.i, %land.lhs.true4.i.ieee80211_vif_get_chanctx.exit_crit_edge, %land.lhs.true.i.ieee80211_vif_get_chanctx.exit_crit_edge, %if.end.ieee80211_vif_get_chanctx.exit_crit_edge
  %chanctx_conf.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %7 = ptrtoint ptr %chanctx_conf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chanctx_conf.i, align 4
  %tobool6.not.i = icmp eq ptr %8, null
  %add.ptr.i = getelementptr i8, ptr %8, i32 -48
  %tobool25.not78 = icmp eq ptr %add.ptr.i, null
  %tobool25.not = or i1 %tobool6.not.i, %tobool25.not78
  br i1 %tobool25.not, label %ieee80211_vif_get_chanctx.exit.cleanup_crit_edge, label %if.end27

ieee80211_vif_get_chanctx.exit.cleanup_crit_edge: ; preds = %ieee80211_vif_get_chanctx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %ieee80211_vif_get_chanctx.exit
  %tobool29.not = icmp eq ptr %4, null
  br i1 %tobool29.not, label %do.end47, label %if.end63, !prof !123

do.end47:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1255, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end63:                                         ; preds = %if.end27
  %replace_state = getelementptr i8, ptr %8, i32 -16
  %9 = ptrtoint ptr %replace_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %replace_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp64.not = icmp eq i32 %10, 1
  br i1 %cmp64.not, label %if.end66, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end66:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %replace_state67 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %4, i32 0, i32 4
  %11 = ptrtoint ptr %replace_state67 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %replace_state67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp68.not = icmp eq i32 %12, 2
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.end63.cleanup_crit_edge, %do.end47, %ieee80211_vif_get_chanctx.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end47 ], [ false, %ieee80211_vif_get_chanctx.exit.cleanup_crit_edge ], [ false, %if.end63.cleanup_crit_edge ], [ %cmp68.not, %if.end66 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdata_info(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_stop_iface(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !20, !22, !23, !25, !26, !27, !28, !29, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !59, !60, !62, !63, !65, !66, !67, !69, !70, !72, !74, !76, !77, !79, !81, !82, !84, !85, !87, !89, !91, !92, !94, !96, !97, !99, !101, !103, !104, !106, !108, !109, !110, !111}
!llvm.named.register.sp = !{!113}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mac80211/chan.c", i32 504, i32 2}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../net/mac80211/chan.c", i32 507, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__warned", i1 false, i1 false}
!6 = !{!"../net/mac80211/chan.c", i32 685, i32 2}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../net/mac80211/chan.c", i32 699, i32 7}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../net/mac80211/chan.c", i32 704, i32 2}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../net/mac80211/chan.c", i32 713, i32 7}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/mac80211/chan.c", i32 819, i32 2}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../net/mac80211/chan.c", i32 845, i32 4}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../net/mac80211/chan.c", i32 850, i32 4}
!19 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../net/mac80211/chan.c", i32 872, i32 10}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/mac80211/chan.c", i32 1777, i32 4}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ieee80211_vif_use_reserved_context._entry, !24, !"_entry", i1 false, i1 false}
!29 = !{ptr @ieee80211_vif_use_reserved_context._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../net/mac80211/chan.c", i32 1812, i32 9}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../net/mac80211/chan.c", i32 1882, i32 9}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../net/mac80211/chan.c", i32 1899, i32 2}
!37 = !{ptr @__ksymtab_ieee80211_iter_chan_contexts_atomic, !38, !"__ksymtab_ieee80211_iter_chan_contexts_atomic", i1 false, i1 false}
!38 = !{!"../net/mac80211/chan.c", i32 1904, i32 1}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../net/mac80211/chan.c", i32 254, i32 2}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../net/mac80211/chan.c", i32 292, i32 4}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../net/mac80211/chan.c", i32 298, i32 10}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../net/mac80211/chan.c", i32 234, i32 2}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../net/mac80211/chan.c", i32 362, i32 2}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/mac80211/driver-ops.h", i32 908, i32 2}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../net/mac80211/driver-ops.h", i32 912, i32 3}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../net/mac80211/trace.h", i32 1551, i32 1}
!55 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!59 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../net/mac80211/trace.h", i32 202, i32 1}
!62 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!65 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!69 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../net/mac80211/chan.c", i32 917, i32 9}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../net/mac80211/chan.c", i32 667, i32 2}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../net/mac80211/trace.h", i32 1545, i32 1}
!76 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../net/mac80211/chan.c", i32 75, i32 9}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../net/mac80211/trace.h", i32 1539, i32 1}
!81 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../net/mac80211/trace.h", i32 207, i32 1}
!84 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../net/mac80211/chan.c", i32 1634, i32 9}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../net/mac80211/chan.c", i32 759, i32 9}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../net/mac80211/driver-ops.h", i32 945, i32 7}
!91 = !{ptr @.str.20, !90, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../net/mac80211/driver-ops.h", i32 950, i32 3}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../net/mac80211/trace.h", i32 1703, i32 1}
!96 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../net/mac80211/driver-ops.h", i32 924, i32 7}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../net/mac80211/driver-ops.h", i32 929, i32 3}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../net/mac80211/trace.h", i32 1696, i32 1}
!103 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!104 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!105 = !{!"../net/mac80211/chan.c", i32 530, i32 2}
!106 = !{ptr @.str.23, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/mac80211/chan.c", i32 1430, i32 5}
!108 = !{ptr @.str.24, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @ieee80211_vif_use_reserved_switch._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @ieee80211_vif_use_reserved_switch._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.25, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/mac80211/chan.c", i32 1581, i32 5}
!113 = !{!"sp"}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{!"branch_weights", i32 1, i32 2000}
!124 = !{i8 0, i8 2}
!125 = !{!"branch_weights", i32 2000, i32 1}
!126 = !{i64 2149969158}
!127 = !{i64 2149969424}
!128 = !{i64 2161817476}
!129 = !{i64 2149994550}
!130 = !{i64 2161743952}
!131 = !{i64 2161843685}
!132 = !{i64 2161906671}
!133 = !{i64 2161966021}
!134 = !{i64 2148538601, i64 2148538606, i64 2148538619, i64 2148538663, i64 2148538697, i64 2148538718}
!135 = !{i64 2160121975}
!136 = !{i64 2160122212}
!137 = !{i64 2149977717}
!138 = !{i64 2149978753}
!139 = !{i64 2158781193}
!140 = !{i64 2158781396}
!141 = !{i64 2160104605}
!142 = !{i64 2160104824}
!143 = !{i64 2160087702}
!144 = !{i64 2160087915}
!145 = !{i64 2158797483}
!146 = !{i64 2158797694}
!147 = !{i64 2160181111}
!148 = !{i64 2160181356}
!149 = !{i64 2160162843}
!150 = !{i64 2160163084}
