; ModuleID = '/llk/IR_all_yes/net/mac80211/iface.c_pt.bc'
source_filename = "../net/mac80211/iface.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%struct.atomic_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.160, %struct.anon.194, %struct.ieee80211_vif }
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
%union.anon.160 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
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
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
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
%struct.local_debugfsdentries = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.122, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.122 = type { ptr }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.125, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.125 = type { i64, i64, i8 }
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
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.161 }
%union.anon.161 = type { %struct.anon.167, [16 x i8] }
%struct.anon.167 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.anon.174 = type { i8, %union.anon.175 }
%union.anon.175 = type <{ %struct.anon.180, [17 x i8] }>
%struct.anon.180 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_if_ap = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ps_data, %struct.atomic_t, i8 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ieee80211_if_ibss = type { %struct.timer_list, %struct.work_struct, i32, i32, i8, i8, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, ptr, %struct.cfg80211_chan_def, i32, ptr, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.spinlock, %struct.list_head, i32 }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.vif_params = type { i32, i32, [6 x i8], ptr, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.net_device_path_ctx = type { ptr, ptr, i32, [2 x %struct.anon.114] }
%struct.anon.114 = type { i16, i16 }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.148, [17 x i16], %struct.anon.149, %struct.anon.150, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, ptr, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.ieee80211_sta_rx_stats = type { i32, i32, i32, i32, i32, i32, i8, [4 x i8], i32, %struct.u64_stats_sync, i64, [17 x i64] }
%struct.anon.148 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.149 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.150 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_ampdu_mlme = type { %struct.mutex, [16 x ptr], [16 x i8], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], %struct.work_struct, [16 x ptr], [16 x ptr], [16 x i32], [16 x i8], i8 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_radiotap_header = type { i8, i8, i16, i32, [0 x i32] }

@__ieee80211_recalc_txpower.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/mac80211/iface.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ieee80211_add_virtual_monitor.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s-monitor\00", [21 x i8] zeroinitializer }, align 32
@ieee80211_add_virtual_monitor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&sdata->work)\00", [32 x i8] zeroinitializer }, align 32
@ieee80211_del_virtual_monitor.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_del_virtual_monitor.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@ieee80211_do_open.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_if_change_type.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_if_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ieee80211_if_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@ieee80211_if_add.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"(work_completion)(&(&sdata->dfs_cac_timer_work)->work)\00", [41 x i8] zeroinitializer }, align 32
@ieee80211_if_add.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&(&sdata->dfs_cac_timer_work)->timer\00", [59 x i8] zeroinitializer }, align 32
@ieee80211_if_add.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"(work_completion)(&(&sdata->dec_tailroom_needed_wk)->work)\00", [37 x i8] zeroinitializer }, align 32
@ieee80211_if_add.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"&(&sdata->dec_tailroom_needed_wk)->timer\00", [55 x i8] zeroinitializer }, align 32
@ieee80211_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@ieee80211_if_remove.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_sdata_stop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_remove_interfaces.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: open count remains %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mac80211_netdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @netdev_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/mac80211/driver-ops.h\00", [38 x i8] zeroinitializer }, align 32
@drv_update_vif_offload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_drv_update_vif_offload = external dso_local global %struct.tracepoint, align 4
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/mac80211/trace.h\00", [43 x i8] zeroinitializer }, align 32
@trace_drv_update_vif_offload.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@trace_drv_return_void.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_check_queues.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_check_queues.__already_done.23 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_check_queues.__already_done.24 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_check_queues.__already_done.25 = internal unnamed_addr global i1 false, section ".data.once", align 1
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@ieee80211_dataif_8023_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr @ieee80211_uninit, ptr @ieee80211_open, ptr @ieee80211_stop, ptr @ieee80211_subif_start_xmit_8023, ptr null, ptr @ieee80211_netdev_select_queue, ptr null, ptr @ieee80211_set_multicast_list, ptr @ieee80211_change_mac, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ieee80211_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ieee80211_netdev_fill_forward_path }, [80 x i8] zeroinitializer }, align 32
@ieee80211_dataif_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr @ieee80211_uninit, ptr @ieee80211_open, ptr @ieee80211_stop, ptr @ieee80211_subif_start_xmit, ptr null, ptr @ieee80211_netdev_select_queue, ptr null, ptr @ieee80211_set_multicast_list, ptr @ieee80211_change_mac, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ieee80211_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ieee80211_check_concurrent_iface.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_netdev_fill_forward_path.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@drv_net_fill_forward_path.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_net_fill_forward_path = external dso_local global %struct.tracepoint, align 4
@trace_drv_net_fill_forward_path.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_drv_return_int = external dso_local global %struct.tracepoint, align 4
@trace_drv_return_int.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_drv_config_iface_filter = external dso_local global %struct.tracepoint, align 4
@trace_drv_config_iface_filter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"frame for unexpected interface type\00", [60 x i8] zeroinitializer }, align 32
@ieee80211_runtime_change_iftype.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"type change: do_open returned %d\00", [63 x i8] zeroinitializer }, align 32
@ieee80211_setup_sdata.bssid_wildcard = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@ieee80211_setup_sdata.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ieee80211_setup_sdata.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&sdata->recalc_smps)\00", [57 x i8] zeroinitializer }, align 32
@ieee80211_setup_sdata.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&sdata->csa_finalize_work)\00", [51 x i8] zeroinitializer }, align 32
@ieee80211_setup_sdata.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&sdata->color_change_finalize_work)\00", [42 x i8] zeroinitializer }, align 32
@ieee80211_monitorif_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr @ieee80211_uninit, ptr @ieee80211_open, ptr @ieee80211_stop, ptr @ieee80211_monitor_start_xmit, ptr null, ptr @ieee80211_monitor_select_queue, ptr null, ptr @ieee80211_set_multicast_list, ptr @ieee80211_change_mac, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ieee80211_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ieee80211_setup_sdata.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&sdata->u.nan.func_lock\00", [40 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@ieee80211_assign_perm_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str, i32 1918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016not contiguous\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ieee80211_assign_perm_addr\00", [37 x i8] zeroinitializer }, align 32
@ieee80211_assign_perm_addr._entry_ptr = internal global ptr @ieee80211_assign_perm_addr._entry, section ".printk_index", align 4
@ieee80211_do_stop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mac80211_wiphy_privid = external dso_local local_unnamed_addr constant ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 12]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 7, i64 9]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 21, i64 22]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 7]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 7, i64 11]
@__sancov_gen_cov_switch_values.47 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 3, i64 4, i64 5, i64 8, i64 9, i64 13]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 12]
@__sancov_gen_cov_switch_values.52 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 7, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 10]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 11]
@__sancov_gen_cov_switch_values.57 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 8, i64 9, i64 11]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.59 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 12]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 6, i64 10, i64 12]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 11]
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 54, i32 17 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1022, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1035, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1078, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1095, i32 10 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 2031, i32 18 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 2082, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 2084, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 2212, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [25 x i8] c"mac80211_netdev_notifier\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 2261, i32 30 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 695, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 723, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1412, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [29 x i8] c"../net/mac80211/driver-ops.h\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1413, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [24 x i8] c"../net/mac80211/trace.h\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 2779, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 108, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1984, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [26 x i8] c"ieee80211_dataif_8023_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 850, i32 36 }
@___asan_gen_.158 = private unnamed_addr constant [21 x i8] c"ieee80211_dataif_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 742, i32 36 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1535, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1807, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [15 x i8] c"bssid_wildcard\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1632, i32 18 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1661, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1662, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1663, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1664, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [24 x i8] c"ieee80211_monitorif_ops\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 781, i32 36 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1708, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 378, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.213 = private constant [24 x i8] c"../net/mac80211/iface.c\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1918, i32 4 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @ieee80211_assign_perm_addr._entry, ptr @ieee80211_assign_perm_addr._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ieee80211_add_virtual_monitor.__key, ptr @.str.4, ptr @.str.5, ptr @ieee80211_if_add.__key, ptr @.str.6, ptr @ieee80211_if_add.__key.7, ptr @.str.8, ptr @ieee80211_if_add.__key.9, ptr @.str.10, ptr @ieee80211_if_add.__key.11, ptr @.str.12, ptr @ieee80211_if_add.__key.13, ptr @.str.14, ptr @.str.15, ptr @mac80211_netdev_notifier, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @skb_queue_head_init.__key, ptr @.str.26, ptr @ieee80211_dataif_8023_ops, ptr @ieee80211_dataif_ops, ptr @.str.27, ptr @.str.28, ptr @ieee80211_setup_sdata.bssid_wildcard, ptr @ieee80211_setup_sdata.__key, ptr @ieee80211_setup_sdata.__key.29, ptr @.str.30, ptr @ieee80211_setup_sdata.__key.31, ptr @.str.32, ptr @ieee80211_setup_sdata.__key.33, ptr @.str.34, ptr @ieee80211_monitorif_ops, ptr @ieee80211_setup_sdata.__key.35, ptr @.str.36, ptr @xa_init_flags.__key, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_add_virtual_monitor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_if_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_if_add.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_if_add.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_if_add.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_if_add.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac80211_netdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_dataif_8023_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_dataif_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_setup_sdata.bssid_wildcard to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_setup_sdata.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_setup_sdata.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_setup_sdata.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_setup_sdata.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_monitorif_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_setup_sdata.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_assign_perm_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__ieee80211_recalc_txpower(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !132) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !142
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %chanctx_conf1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %4 = ptrtoint ptr %chanctx_conf1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %chanctx_conf1, align 4
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b55 = load i1, ptr @__ieee80211_recalc_txpower.__warned, align 1
  br i1 %.b55, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__ieee80211_recalc_txpower.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 54, ptr noundef nonnull @.str.1) #14
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end8
  %call.i56 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i56, label %if.then11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i59

if.then11.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i59:                                ; preds = %if.then11
  %call1.i57 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57)
  %tobool.not.i58 = icmp eq i32 %call1.i57, 0
  br i1 %tobool.not.i58, label %land.lhs.true.i59.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i61

land.lhs.true.i59.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i61:                               ; preds = %land.lhs.true.i59
  %.b4.i60 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i60, label %land.lhs.true2.i61.rcu_read_unlock.exit_crit_edge, label %if.then.i62

land.lhs.true2.i61.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i62:                                      ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i62, %land.lhs.true2.i61.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i59.rcu_read_unlock.exit_crit_edge, %if.then11.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !143
  %6 = tail call i32 @llvm.read_register.i32(metadata !132) #14
  %and.i.i.i.i.i63 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i63 to ptr
  %preempt_count.i.i.i.i64 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i64, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i64, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %cleanup

if.end12:                                         ; preds = %do.end8
  %width.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %sw.epilog.i [
    i32 6, label %sw.bb.i
    i32 7, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %max_reg_power.i = getelementptr inbounds %struct.ieee80211_channel, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %max_reg_power.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_reg_power.i, align 4
  %sub.i = add i32 %16, -6
  %max_power.i = getelementptr inbounds %struct.ieee80211_channel, ptr %14, i32 0, i32 6
  %17 = ptrtoint ptr %max_power.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_power.i, align 4
  %19 = tail call i32 @llvm.smin.i32(i32 %sub.i, i32 %18) #14
  br label %ieee80211_chandef_max_power.exit

sw.bb2.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %max_reg_power4.i = getelementptr inbounds %struct.ieee80211_channel, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %max_reg_power4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_reg_power4.i, align 4
  %sub5.i = add i32 %23, -3
  %max_power7.i = getelementptr inbounds %struct.ieee80211_channel, ptr %21, i32 0, i32 6
  %24 = ptrtoint ptr %max_power7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_power7.i, align 4
  %26 = tail call i32 @llvm.smin.i32(i32 %sub5.i, i32 %25) #14
  br label %ieee80211_chandef_max_power.exit

sw.epilog.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 4
  %max_power15.i = getelementptr inbounds %struct.ieee80211_channel, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %max_power15.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_power15.i, align 4
  br label %ieee80211_chandef_max_power.exit

ieee80211_chandef_max_power.exit:                 ; preds = %sw.epilog.i, %sw.bb2.i, %sw.bb.i
  %retval.0.i = phi i32 [ %30, %sw.epilog.i ], [ %26, %sw.bb2.i ], [ %19, %sw.bb.i ]
  %call.i65 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i65, label %ieee80211_chandef_max_power.exit.rcu_read_unlock.exit75_crit_edge, label %land.lhs.true.i68

ieee80211_chandef_max_power.exit.rcu_read_unlock.exit75_crit_edge: ; preds = %ieee80211_chandef_max_power.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit75

land.lhs.true.i68:                                ; preds = %ieee80211_chandef_max_power.exit
  %call1.i66 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66)
  %tobool.not.i67 = icmp eq i32 %call1.i66, 0
  br i1 %tobool.not.i67, label %land.lhs.true.i68.rcu_read_unlock.exit75_crit_edge, label %land.lhs.true2.i70

land.lhs.true.i68.rcu_read_unlock.exit75_crit_edge: ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit75

land.lhs.true2.i70:                               ; preds = %land.lhs.true.i68
  %.b4.i69 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i69, label %land.lhs.true2.i70.rcu_read_unlock.exit75_crit_edge, label %if.then.i71

land.lhs.true2.i70.rcu_read_unlock.exit75_crit_edge: ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit75

if.then.i71:                                      ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #14
  br label %rcu_read_unlock.exit75

rcu_read_unlock.exit75:                           ; preds = %if.then.i71, %land.lhs.true2.i70.rcu_read_unlock.exit75_crit_edge, %land.lhs.true.i68.rcu_read_unlock.exit75_crit_edge, %ieee80211_chandef_max_power.exit.rcu_read_unlock.exit75_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !143
  %31 = tail call i32 @llvm.read_register.i32(metadata !132) #14
  %and.i.i.i.i.i72 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i72 to ptr
  %preempt_count.i.i.i.i73 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i73, align 4
  %sub.i.i.i74 = add i32 %34, -1
  store volatile i32 %sub.i.i.i74, ptr %preempt_count.i.i.i.i73, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %user_power_level = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 45
  %35 = ptrtoint ptr %user_power_level to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %user_power_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %36)
  %cmp.not = icmp eq i32 %36, -2147483648
  %37 = tail call i32 @llvm.smin.i32(i32 %retval.0.i, i32 %36)
  %power.0 = select i1 %cmp.not, i32 %retval.0.i, i32 %37
  %ap_power_level = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 46
  %38 = ptrtoint ptr %ap_power_level to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ap_power_level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %39)
  %cmp19.not = icmp eq i32 %39, -2147483648
  %40 = tail call i32 @llvm.smin.i32(i32 %power.0, i32 %39)
  %power.1 = select i1 %cmp19.not, i32 %power.0, i32 %40
  %txpower = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 42
  %41 = ptrtoint ptr %txpower to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %txpower, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %power.1, i32 %42)
  %cmp30.not = icmp eq i32 %power.1, %42
  br i1 %cmp30.not, label %rcu_read_unlock.exit75.cleanup_crit_edge, label %if.then31

rcu_read_unlock.exit75.cleanup_crit_edge:         ; preds = %rcu_read_unlock.exit75
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then31:                                        ; preds = %rcu_read_unlock.exit75
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %txpower to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %power.1, ptr %txpower, align 8
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %44 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %local, align 4
  %call35 = tail call i32 @ieee80211_hw_config(ptr noundef %45, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %rcu_read_unlock.exit75.cleanup_crit_edge, %rcu_read_unlock.exit
  %retval.0 = phi i1 [ true, %if.then31 ], [ false, %rcu_read_unlock.exit ], [ false, %rcu_read_unlock.exit75.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_hw_config(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_recalc_txpower(ptr noundef %sdata, i1 noundef zeroext %update_bss) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @__ieee80211_recalc_txpower(ptr noundef %sdata)
  br i1 %call, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  br i1 %update_bss, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %state.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 9
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %sdata, i32 noundef 262144) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_bss_info_change_notify(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_idle_off(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ieee80211_recalc_idle(ptr noundef %local, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ieee80211_recalc_idle(ptr noundef %local, i1 noundef zeroext %force_active) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !144

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  br i1 %force_active, label %if.end.lor.end_crit_edge, label %lor.lhs.false

if.end.lor.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end

lor.lhs.false:                                    ; preds = %if.end
  %chanctx_list = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 88
  %1 = ptrtoint ptr %chanctx_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %chanctx_list, align 4
  %cmp.i.not = icmp eq ptr %2, %chanctx_list
  br i1 %cmp.i.not, label %lor.rhs, label %lor.lhs.false.lor.end_crit_edge

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %monitors = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 14
  %3 = ptrtoint ptr %monitors to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %monitors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool27 = icmp ne i32 %4, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.lor.end_crit_edge, %if.end.lor.end_crit_edge
  %5 = phi i1 [ true, %lor.lhs.false.lor.end_crit_edge ], [ true, %if.end.lor.end_crit_edge ], [ %tobool27, %lor.rhs ]
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %remain_on_channel = getelementptr inbounds %struct.ieee80211_ops, ptr %7, i32 0, i32 57
  %8 = ptrtoint ptr %remain_on_channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remain_on_channel, align 4
  %tobool29.not = icmp eq ptr %9, null
  br i1 %tobool29.not, label %land.rhs30, label %lor.end.land.end35_crit_edge

lor.end.land.end35_crit_edge:                     ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end35

land.rhs30:                                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #16
  %roc_list = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 139
  %10 = ptrtoint ptr %roc_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %roc_list, align 4
  %cmp.i91 = icmp ne ptr %11, %roc_list
  br label %land.end35

land.end35:                                       ; preds = %land.rhs30, %lor.end.land.end35_crit_edge
  %12 = phi i1 [ false, %lor.end.land.end35_crit_edge ], [ %cmp.i91, %land.rhs30 ]
  %scanning37 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 67
  %13 = ptrtoint ptr %scanning37 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %scanning37, align 4
  %and1.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool39.not = icmp eq i32 %and1.i, 0
  br i1 %tobool39.not, label %lor.rhs40, label %land.end35.lor.end44_crit_edge

land.end35.lor.end44_crit_edge:                   ; preds = %land.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end44

lor.rhs40:                                        ; preds = %land.end35
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %scanning37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %scanning37, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool43 = icmp ne i32 %17, 0
  br label %lor.end44

lor.end44:                                        ; preds = %lor.rhs40, %land.end35.lor.end44_crit_edge
  %18 = phi i1 [ true, %land.end35.lor.end44_crit_edge ], [ %tobool43, %lor.rhs40 ]
  %brmerge = select i1 %12, i1 true, i1 %18
  %led_trig_start.0 = select i1 %brmerge, i32 2, i32 0
  %led_trig_stop.0 = select i1 %brmerge, i32 0, i32 2
  %or54 = or i32 %led_trig_start.0, 4
  %or56 = or i32 %led_trig_stop.0, 4
  %led_trig_start.1 = select i1 %5, i32 %or54, i32 %led_trig_start.0
  %led_trig_stop.1 = select i1 %5, i32 %led_trig_stop.0, i32 %or56
  tail call void @ieee80211_mod_tpt_led_trig(ptr noundef %local, i32 noundef %led_trig_start.1, i32 noundef %led_trig_stop.1) #14
  %brmerge89 = select i1 %brmerge, i1 true, i1 %5
  %19 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %local, align 8
  %and.i = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %brmerge89, label %if.then63, label %if.end65

if.then63:                                        ; preds = %lor.end44
  br i1 %tobool.not.i, label %if.then63.cleanup_crit_edge, label %if.end.i

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #16
  %and4.i = and i32 %20, -5
  br label %cleanup.sink.split

if.end65:                                         ; preds = %lor.end44
  br i1 %tobool.not.i, label %if.end.i95, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i95:                                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_flush_queues(ptr noundef %local, ptr noundef null, i1 noundef zeroext false) #14
  %21 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %local, align 8
  %or.i = or i32 %22, 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i95, %if.end.i
  %or.i.sink = phi i32 [ %or.i, %if.end.i95 ], [ %and4.i, %if.end.i ]
  %23 = ptrtoint ptr %local to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i.sink, ptr %local, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end65.cleanup_crit_edge, %if.then63.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then63.cleanup_crit_edge ], [ 0, %if.end65.cleanup_crit_edge ], [ 256, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_recalc_idle(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ieee80211_recalc_idle(ptr noundef %local, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 @ieee80211_hw_config(ptr noundef %local, i32 noundef %call) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_recalc_offload(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.ieee80211_hw, ptr %local, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i.i, align 4
  %2 = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %iflist_mtx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %iflist_mtx, i32 noundef 0) #14
  %interfaces = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 62
  %3 = ptrtoint ptr %interfaces to i32
  call void @__asan_load4_noabort(i32 %3)
  %sdata.019 = load ptr, ptr %interfaces, align 8
  %cmp.not20 = icmp eq ptr %sdata.019, %interfaces
  br i1 %cmp.not20, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %sdata.021 = phi ptr [ %sdata.0, %for.inc.for.body_crit_edge ], [ %sdata.019, %if.end.for.body_crit_edge ]
  %state.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.021, i32 0, i32 9
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i18.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i18.not, label %for.body.for.inc_crit_edge, label %if.end4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end4:                                          ; preds = %for.body
  %local1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.021, i32 0, i32 7
  %6 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %local1.i, align 4
  %call.i = tail call fastcc zeroext i1 @ieee80211_set_sdata_offload_flags(ptr noundef %sdata.021) #14
  br i1 %call.i, label %if.then.i, label %if.end4.if.end.i_crit_edge

if.end4.if.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.end4
  tail call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 1412) #14
  %flags.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.021, i32 0, i32 8
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.then.i.if.end39.i.i_crit_edge

if.then.i.if.end39.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.then.i
  %.b67.i.i = load i1, ptr @drv_update_vif_offload.__already_done, align 1
  br i1 %.b67.i.i, label %land.rhs.i.i.if.end39.i.i_crit_edge, label %if.then.i.i, !prof !145

land.rhs.i.i.if.end39.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @drv_update_vif_offload.__already_done, align 1
  %dev.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.021, i32 0, i32 6
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 8
  %tobool22.not.i.i = icmp eq ptr %11, null
  %name24.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.021, i32 0, i32 10
  %cond.i.i = select i1 %tobool22.not.i.i, ptr %name24.i.i, ptr %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 1413, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef %cond.i.i, i32 noundef %9) #14
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.if.end39.i.i_crit_edge, %if.then.i.if.end39.i.i_crit_edge
  %ops.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 8
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %update_vif_offload.i.i = getelementptr inbounds %struct.ieee80211_ops, ptr %13, i32 0, i32 105
  %14 = ptrtoint ptr %update_vif_offload.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %update_vif_offload.i.i, align 4
  %tobool50.not.i.i = icmp eq ptr %15, null
  br i1 %tobool50.not.i.i, label %if.end39.i.i.drv_update_vif_offload.exit.i_crit_edge, label %if.end52.i.i

if.end39.i.i.drv_update_vif_offload.exit.i_crit_edge: ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %drv_update_vif_offload.exit.i

if.end52.i.i:                                     ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @trace_drv_update_vif_offload(ptr noundef %7, ptr noundef %sdata.021) #14
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i, align 4
  %update_vif_offload54.i.i = getelementptr inbounds %struct.ieee80211_ops, ptr %17, i32 0, i32 105
  %18 = ptrtoint ptr %update_vif_offload54.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %update_vif_offload54.i.i, align 4
  %vif.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.021, i32 0, i32 59
  tail call void %19(ptr noundef %7, ptr noundef %vif.i.i) #14
  tail call fastcc void @trace_drv_return_void(ptr noundef %7) #14
  br label %drv_update_vif_offload.exit.i

drv_update_vif_offload.exit.i:                    ; preds = %if.end52.i.i, %if.end39.i.i.drv_update_vif_offload.exit.i_crit_edge
  %20 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %local1.i, align 4
  %vif.i22.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.021, i32 0, i32 59
  %22 = ptrtoint ptr %vif.i22.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vif.i22.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp.i.i = icmp eq i32 %23, 4
  br i1 %cmp.i.i, label %if.then.i24.i, label %drv_update_vif_offload.exit.i.if.end5.i.i_crit_edge

drv_update_vif_offload.exit.i.if.end5.i.i_crit_edge: ; preds = %drv_update_vif_offload.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i.i

if.then.i24.i:                                    ; preds = %drv_update_vif_offload.exit.i
  %bss2.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.021, i32 0, i32 49
  %24 = ptrtoint ptr %bss2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bss2.i.i, align 4
  %tobool.not.i23.i = icmp eq ptr %25, null
  br i1 %tobool.not.i23.i, label %if.then.i24.i.if.end.i_crit_edge, label %if.end.i.i

if.then.i24.i.if.end.i_crit_edge:                 ; preds = %if.then.i24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.then.i24.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 -2552
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i, %drv_update_vif_offload.exit.i.if.end5.i.i_crit_edge
  %bss.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ %sdata.021, %drv_update_vif_offload.exit.i.if.end5.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr %struct.ieee80211_hw, ptr %21, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %28 = and i32 %27, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i.i, label %if.end5.i.i.if.end.i_crit_edge, label %lor.lhs.false.i.i

if.end5.i.i.if.end.i_crit_edge:                   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

lor.lhs.false.i.i:                                ; preds = %if.end5.i.i
  %vif6.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %bss.0.i.i, i32 0, i32 59
  %29 = ptrtoint ptr %vif6.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vif6.i.i, align 8
  %31 = and i32 %30, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %switch.i.i.i = icmp eq i32 %31, 2
  br i1 %switch.i.i.i, label %if.end10.i.i, label %lor.lhs.false.i.i.if.end.i_crit_edge

lor.lhs.false.i.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end10.i.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %offload_flags.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %bss.0.i.i, i32 0, i32 59, i32 11
  %32 = ptrtoint ptr %offload_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offload_flags.i.i, align 4
  %34 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %35 = icmp ne i32 %34, 0
  %use_4addr.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.021, i32 0, i32 1, i32 8
  %36 = ptrtoint ptr %use_4addr.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %use_4addr.i.i, align 8, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool13.not.i.i = icmp eq i8 %37, 0
  %38 = and i32 %33, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %39 = icmp eq i32 %38, 3
  %enabled.0.off0.i.i = select i1 %tobool13.not.i.i, i1 %35, i1 %39
  %cond.i25.i = select i1 %enabled.0.off0.i.i, ptr @ieee80211_dataif_8023_ops, ptr @ieee80211_dataif_ops
  %dev.i26.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.021, i32 0, i32 6
  %40 = ptrtoint ptr %dev.i26.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i26.i, align 8
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 16
  %42 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %cond.i25.i, ptr %netdev_ops.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end10.i.i, %lor.lhs.false.i.i.if.end.i_crit_edge, %if.end5.i.i.if.end.i_crit_edge, %if.then.i24.i.if.end.i_crit_edge, %if.end4.if.end.i_crit_edge
  %interfaces.i = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 62
  %43 = ptrtoint ptr %interfaces.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %vsdata.051.i = load ptr, ptr %interfaces.i, align 8
  %cmp.not52.i = icmp eq ptr %vsdata.051.i, %interfaces.i
  br i1 %cmp.not52.i, label %if.end.i.for.inc_crit_edge, label %for.body.lr.ph.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %u.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.021, i32 0, i32 57
  %vif6.i39.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.021, i32 0, i32 59
  %offload_flags.i42.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.021, i32 0, i32 59, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %vsdata.053.i = phi ptr [ %vsdata.051.i, %for.body.lr.ph.i ], [ %vsdata.0.i, %for.inc.i.for.body.i_crit_edge ]
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %vsdata.053.i, i32 0, i32 59
  %44 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vif.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %cmp3.not.i = icmp eq i32 %45, 4
  br i1 %cmp3.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %bss.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %vsdata.053.i, i32 0, i32 49
  %46 = ptrtoint ptr %bss.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bss.i, align 4
  %cmp4.not.i = icmp ne ptr %47, %u.i
  %tobool.not.i31.i = icmp eq ptr %47, null
  %or.cond.i = or i1 %cmp4.not.i, %tobool.not.i31.i
  br i1 %or.cond.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end5.i38.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end5.i38.i:                                    ; preds = %lor.lhs.false.i
  %local1.i27.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %vsdata.053.i, i32 0, i32 7
  %48 = ptrtoint ptr %local1.i27.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %local1.i27.i, align 4
  %arrayidx.i.i.i36.i = getelementptr %struct.ieee80211_hw, ptr %49, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %arrayidx.i.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %arrayidx.i.i.i36.i, align 4
  %52 = and i32 %51, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.i.not.i37.i = icmp eq i32 %52, 0
  br i1 %tobool.i.not.i37.i, label %if.end5.i38.i.for.inc.i_crit_edge, label %lor.lhs.false.i41.i

if.end5.i38.i.for.inc.i_crit_edge:                ; preds = %if.end5.i38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

lor.lhs.false.i41.i:                              ; preds = %if.end5.i38.i
  %53 = ptrtoint ptr %vif6.i39.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vif6.i39.i, align 8
  %55 = and i32 %54, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %switch.i.i40.i = icmp eq i32 %55, 2
  br i1 %switch.i.i40.i, label %if.end10.i49.i, label %lor.lhs.false.i41.i.for.inc.i_crit_edge

lor.lhs.false.i41.i.for.inc.i_crit_edge:          ; preds = %lor.lhs.false.i41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end10.i49.i:                                   ; preds = %lor.lhs.false.i41.i
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %offload_flags.i42.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %offload_flags.i42.i, align 4
  %58 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %59 = icmp ne i32 %58, 0
  %use_4addr.i43.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %vsdata.053.i, i32 0, i32 1, i32 8
  %60 = ptrtoint ptr %use_4addr.i43.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %use_4addr.i43.i, align 8, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool13.not.i44.i = icmp eq i8 %61, 0
  %62 = and i32 %57, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %62)
  %63 = icmp eq i32 %62, 3
  %enabled.0.off0.i45.i = select i1 %tobool13.not.i44.i, i1 %59, i1 %63
  %cond.i46.i = select i1 %enabled.0.off0.i45.i, ptr @ieee80211_dataif_8023_ops, ptr @ieee80211_dataif_ops
  %dev.i47.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %vsdata.053.i, i32 0, i32 6
  %64 = ptrtoint ptr %dev.i47.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i47.i, align 8
  %netdev_ops.i48.i = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 16
  %66 = ptrtoint ptr %netdev_ops.i48.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %cond.i46.i, ptr %netdev_ops.i48.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i49.i, %lor.lhs.false.i41.i.for.inc.i_crit_edge, %if.end5.i38.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %67 = ptrtoint ptr %vsdata.053.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %vsdata.0.i = load ptr, ptr %vsdata.053.i, align 8
  %cmp.not.i = icmp eq ptr %vsdata.0.i, %interfaces.i
  br i1 %cmp.not.i, label %for.inc.i.for.inc_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %for.inc.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %68 = ptrtoint ptr %sdata.021 to i32
  call void @__asan_load4_noabort(i32 %68)
  %sdata.0 = load ptr, ptr %sdata.021, align 8
  %cmp.not = icmp eq ptr %sdata.0, %interfaces
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %iflist_mtx) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ieee80211_adjust_monitor_flags(ptr nocapture noundef readonly %sdata, i32 noundef %offset) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %u = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %u, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body3_crit_edge, label %if.then

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fif_fcsfail = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %fif_fcsfail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fif_fcsfail, align 4
  %add = add i32 %5, %offset
  store i32 %add, ptr %fif_fcsfail, align 4
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry.do.body3_crit_edge
  %and4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.body3.do.body11_crit_edge, label %if.then6

do.body3.do.body11_crit_edge:                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11

if.then6:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #16
  %fif_plcpfail = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %fif_plcpfail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fif_plcpfail, align 8
  %add7 = add i32 %7, %offset
  store i32 %add7, ptr %fif_plcpfail, align 8
  br label %do.body11

do.body11:                                        ; preds = %if.then6, %do.body3.do.body11_crit_edge
  %and12 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.do.body27_crit_edge, label %if.then14

do.body11.do.body27_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27

if.then14:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  %fif_control = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %fif_control to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fif_control, align 4
  %add15 = add i32 %9, %offset
  store i32 %add15, ptr %fif_control, align 4
  %fif_pspoll = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %fif_pspoll to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fif_pspoll, align 4
  %add23 = add i32 %11, %offset
  store i32 %add23, ptr %fif_pspoll, align 4
  br label %do.body27

do.body27:                                        ; preds = %if.then14, %do.body11.do.body27_crit_edge
  %and28 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body27.do.end34_crit_edge, label %if.then30

do.body27.do.end34_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end34

if.then30:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #16
  %fif_other_bss = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 19
  %12 = ptrtoint ptr %fif_other_bss to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fif_other_bss, align 8
  %add31 = add i32 %13, %offset
  store i32 %add31, ptr %fif_other_bss, align 8
  br label %do.end34

do.end34:                                         ; preds = %if.then30, %do.body27.do.end34_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_add_virtual_monitor(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 4
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %2 = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.rhs, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

land.rhs:                                         ; preds = %if.end
  %.b248 = load i1, ptr @ieee80211_add_virtual_monitor.__already_done, align 1
  br i1 %.b248, label %land.rhs.if.end32_crit_edge, label %if.then10, !prof !145

land.rhs.if.end32_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then10:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ieee80211_add_virtual_monitor.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1022, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 1022) #14
  br label %if.end32

if.end32:                                         ; preds = %if.then10, %land.rhs.if.end32_crit_edge, %if.end.if.end32_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool42.not = icmp eq i32 %3, 0
  br i1 %tobool42.not, label %if.end32.if.end70_crit_edge, label %land.rhs43

if.end32.if.end70_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

land.rhs43:                                       ; preds = %if.end32
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 1
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 8
  %dep_map = getelementptr inbounds %struct.mutex, ptr %5, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end64, label %land.rhs43.if.end70_crit_edge, !prof !144

land.rhs43.if.end70_crit_edge:                    ; preds = %land.rhs43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

do.end64:                                         ; preds = %land.rhs43
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1023, i32 noundef 9, ptr noundef null) #14
  br label %if.end70

if.end70:                                         ; preds = %do.end64, %land.rhs43.if.end70_crit_edge, %if.end32.if.end70_crit_edge
  %monitor_sdata = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 147
  %6 = ptrtoint ptr %monitor_sdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %monitor_sdata, align 4
  %tobool80.not = icmp eq ptr %7, null
  br i1 %tobool80.not, label %if.end8.i.i, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end70
  %vif_data_size = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 7
  %8 = ptrtoint ptr %vif_data_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vif_data_size, align 4
  %add = add i32 %9, 4928
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #17
  %tobool85.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool85.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end87

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end87:                                         ; preds = %if.end8.i.i
  %local88 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %local88 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %local, ptr %local88, align 4
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 59
  %11 = ptrtoint ptr %vif to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 6, ptr %vif, align 16
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 10
  %wiphy90 = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 1
  %12 = ptrtoint ptr %wiphy90 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy90, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i249, label %if.end87.wiphy_name.exit_crit_edge

if.end87.wiphy_name.exit_crit_edge:               ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  br label %wiphy_name.exit

if.end.i.i249:                                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i249, %if.end87.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i249 ], [ %15, %if.end87.wiphy_name.exit_crit_edge ]
  %call92 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 16, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i.i)
  %iftype = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 6, ptr %iftype, align 4
  %encrypt_headroom = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 24
  %19 = ptrtoint ptr %encrypt_headroom to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %encrypt_headroom, align 32
  %20 = ptrtoint ptr %local88 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %local88, align 4
  %flags.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %21, i32 0, i32 4
  %queues.i = getelementptr inbounds %struct.ieee80211_hw, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags.i.i, align 4
  %24 = shl i32 %23, 13
  %sext.i = ashr i32 %24, 31
  %..i = trunc i32 %sext.i to i8
  %arrayidx9.i = getelementptr %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 59, i32 7, i32 0
  %25 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %..i, ptr %arrayidx9.i, align 2
  %26 = load volatile i32, ptr %flags.i.i, align 4
  %27 = and i32 %26, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not.1.i = icmp eq i32 %27, 0
  br i1 %tobool.i.not.1.i, label %if.else.1.i, label %if.then.1.i

if.then.1.i:                                      ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.1.i = getelementptr %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 59, i32 7, i32 1
  %28 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %arrayidx.1.i, align 1
  br label %for.inc.1.i

if.else.1.i:                                      ; preds = %wiphy_name.exit
  %29 = ptrtoint ptr %queues.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %30)
  %cmp3.1.i = icmp ugt i16 %30, 3
  %arrayidx9.1.i = getelementptr %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 59, i32 7, i32 1
  br i1 %cmp3.1.i, label %if.then5.1.i, label %if.else10.1.i

if.else10.1.i:                                    ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx9.1.i, align 1
  br label %for.inc.1.i

if.then5.1.i:                                     ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %arrayidx9.1.i, align 1
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then5.1.i, %if.else10.1.i, %if.then.1.i
  %33 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags.i.i, align 4
  %35 = and i32 %34, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.2.i = icmp eq i32 %35, 0
  br i1 %tobool.i.not.2.i, label %if.else.2.i, label %if.then.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.2.i = getelementptr %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 59, i32 7, i32 2
  %36 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %arrayidx.2.i, align 4
  br label %for.inc.2.i

if.else.2.i:                                      ; preds = %for.inc.1.i
  %37 = ptrtoint ptr %queues.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %38)
  %cmp3.2.i = icmp ugt i16 %38, 3
  %arrayidx9.2.i = getelementptr %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 59, i32 7, i32 2
  br i1 %cmp3.2.i, label %if.then5.2.i, label %if.else10.2.i

if.else10.2.i:                                    ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx9.2.i, align 4
  br label %for.inc.2.i

if.then5.2.i:                                     ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %arrayidx9.2.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then5.2.i, %if.else10.2.i, %if.then.2.i
  %41 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags.i.i, align 4
  %43 = and i32 %42, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i.not.3.i = icmp eq i32 %43, 0
  br i1 %tobool.i.not.3.i, label %if.else.3.i, label %if.then.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.3.i = getelementptr %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 59, i32 7, i32 3
  %44 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -1, ptr %arrayidx.3.i, align 1
  br label %ieee80211_set_default_queues.exit

if.else.3.i:                                      ; preds = %for.inc.2.i
  %45 = ptrtoint ptr %queues.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %46)
  %cmp3.3.i = icmp ugt i16 %46, 3
  %arrayidx9.3.i = getelementptr %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 59, i32 7, i32 3
  br i1 %cmp3.3.i, label %if.then5.3.i, label %if.else10.3.i

if.else10.3.i:                                    ; preds = %if.else.3.i
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx9.3.i, align 1
  br label %ieee80211_set_default_queues.exit

if.then5.3.i:                                     ; preds = %if.else.3.i
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 3, ptr %arrayidx9.3.i, align 1
  br label %ieee80211_set_default_queues.exit

ieee80211_set_default_queues.exit:                ; preds = %if.then5.3.i, %if.else10.3.i, %if.then.3.i
  %cab_queue.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 59, i32 6
  %49 = ptrtoint ptr %cab_queue.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %cab_queue.i, align 1
  %call93 = tail call i32 @drv_add_interface(ptr noundef %local, ptr noundef nonnull %call9.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool95.not = icmp eq i32 %call93, 0
  br i1 %tobool95.not, label %if.end127, label %do.end111, !prof !145

do.end111:                                        ; preds = %ieee80211_set_default_queues.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1044, i32 noundef 9, ptr noundef null) #14
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #14
  br label %cleanup

if.end127:                                        ; preds = %ieee80211_set_default_queues.exit
  %state = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #14
  %50 = ptrtoint ptr %local88 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %local88, align 4
  %queues.i250 = getelementptr inbounds %struct.ieee80211_hw, ptr %51, i32 0, i32 11
  %52 = ptrtoint ptr %queues.i250 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %queues.i250, align 4
  %54 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx9.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %55)
  %cmp8.i = icmp eq i8 %55, -1
  br i1 %cmp8.i, label %if.end127.land.rhs.i_crit_edge, label %if.end49.i

if.end127.land.rhs.i_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

for.cond.i:                                       ; preds = %if.end49.i
  %arrayidx.1.i251 = getelementptr %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 59, i32 7, i32 1
  %56 = ptrtoint ptr %arrayidx.1.i251 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.1.i251, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %57)
  %cmp8.1.i = icmp eq i8 %57, -1
  br i1 %cmp8.1.i, label %for.cond.i.land.rhs.i_crit_edge, label %if.end49.1.i

for.cond.i.land.rhs.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

if.end49.1.i:                                     ; preds = %for.cond.i
  %58 = zext i8 %57 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %58)
  %cmp55.not.1.i = icmp ugt i16 %53, %58
  br i1 %cmp55.not.1.i, label %for.cond.1.i, label %if.end49.1.i.land.rhs64.i_crit_edge

if.end49.1.i.land.rhs64.i_crit_edge:              ; preds = %if.end49.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs64.i

for.cond.1.i:                                     ; preds = %if.end49.1.i
  %arrayidx.2.i252 = getelementptr %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 59, i32 7, i32 2
  %59 = ptrtoint ptr %arrayidx.2.i252 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.2.i252, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %60)
  %cmp8.2.i = icmp eq i8 %60, -1
  br i1 %cmp8.2.i, label %for.cond.1.i.land.rhs.i_crit_edge, label %if.end49.2.i

for.cond.1.i.land.rhs.i_crit_edge:                ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

if.end49.2.i:                                     ; preds = %for.cond.1.i
  %61 = zext i8 %60 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %61)
  %cmp55.not.2.i = icmp ugt i16 %53, %61
  br i1 %cmp55.not.2.i, label %for.cond.2.i, label %if.end49.2.i.land.rhs64.i_crit_edge

if.end49.2.i.land.rhs64.i_crit_edge:              ; preds = %if.end49.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs64.i

for.cond.2.i:                                     ; preds = %if.end49.2.i
  %arrayidx.3.i253 = getelementptr %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 59, i32 7, i32 3
  %62 = ptrtoint ptr %arrayidx.3.i253 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.3.i253, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %63)
  %cmp8.3.i = icmp eq i8 %63, -1
  br i1 %cmp8.3.i, label %for.cond.2.i.land.rhs.i_crit_edge, label %if.end49.3.i

for.cond.2.i.land.rhs.i_crit_edge:                ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

if.end49.3.i:                                     ; preds = %for.cond.2.i
  %64 = zext i8 %63 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %64)
  %cmp55.not.3.i = icmp ugt i16 %53, %64
  br i1 %cmp55.not.3.i, label %if.end131, label %if.end49.3.i.land.rhs64.i_crit_edge

if.end49.3.i.land.rhs64.i_crit_edge:              ; preds = %if.end49.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs64.i

land.rhs.i:                                       ; preds = %for.cond.2.i.land.rhs.i_crit_edge, %for.cond.1.i.land.rhs.i_crit_edge, %for.cond.i.land.rhs.i_crit_edge, %if.end127.land.rhs.i_crit_edge
  %.b279.i = load i1, ptr @ieee80211_check_queues.__already_done, align 1
  br i1 %.b279.i, label %land.rhs.i.if.then130_crit_edge, label %land.rhs.i.if.then130.sink.split_crit_edge, !prof !145

land.rhs.i.if.then130.sink.split_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then130.sink.split

land.rhs.i.if.then130_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then130

if.end49.i:                                       ; preds = %if.end127
  %65 = zext i8 %55 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %65)
  %cmp55.not.i = icmp ugt i16 %53, %65
  br i1 %cmp55.not.i, label %for.cond.i, label %if.end49.i.land.rhs64.i_crit_edge

if.end49.i.land.rhs64.i_crit_edge:                ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs64.i

land.rhs64.i:                                     ; preds = %if.end49.i.land.rhs64.i_crit_edge, %if.end49.3.i.land.rhs64.i_crit_edge, %if.end49.2.i.land.rhs64.i_crit_edge, %if.end49.1.i.land.rhs64.i_crit_edge
  %.b273278.i = load i1, ptr @ieee80211_check_queues.__already_done.23, align 1
  br i1 %.b273278.i, label %land.rhs64.i.if.then130_crit_edge, label %land.rhs64.i.if.then130.sink.split_crit_edge, !prof !145

land.rhs64.i.if.then130.sink.split_crit_edge:     ; preds = %land.rhs64.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then130.sink.split

land.rhs64.i.if.then130_crit_edge:                ; preds = %land.rhs64.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then130

if.then130.sink.split:                            ; preds = %land.rhs64.i.if.then130.sink.split_crit_edge, %land.rhs.i.if.then130.sink.split_crit_edge
  %ieee80211_check_queues.__already_done.sink = phi ptr [ @ieee80211_check_queues.__already_done, %land.rhs.i.if.then130.sink.split_crit_edge ], [ @ieee80211_check_queues.__already_done.23, %land.rhs64.i.if.then130.sink.split_crit_edge ]
  %.sink = phi i32 [ 323, %land.rhs.i.if.then130.sink.split_crit_edge ], [ 326, %land.rhs64.i.if.then130.sink.split_crit_edge ]
  %66 = ptrtoint ptr %ieee80211_check_queues.__already_done.sink to i32
  call void @__asan_store1_noabort(i32 %66)
  store i1 true, ptr %ieee80211_check_queues.__already_done.sink, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #14
  br label %if.then130

if.then130:                                       ; preds = %if.then130.sink.split, %land.rhs64.i.if.then130_crit_edge, %land.rhs.i.if.then130_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #14
  br label %cleanup

if.end131:                                        ; preds = %if.end49.3.i
  %67 = ptrtoint ptr %cab_queue.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -1, ptr %cab_queue.i, align 1
  %iflist_mtx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %iflist_mtx, i32 noundef 0) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !147
  %68 = ptrtoint ptr %monitor_sdata to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %call9.i.i, ptr %monitor_sdata, align 4
  tail call void @mutex_unlock(ptr noundef %iflist_mtx) #14
  %mtx171 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66
  tail call void @mutex_lock_nested(ptr noundef %mtx171, i32 noundef 0) #14
  %monitor_chandef = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 148
  %call172 = tail call i32 @ieee80211_vif_use_channel(ptr noundef nonnull %call9.i.i, ptr noundef %monitor_chandef, i32 noundef 1) #14
  tail call void @mutex_unlock(ptr noundef %mtx171) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool174.not = icmp eq i32 %call172, 0
  br i1 %tobool174.not, label %if.end191, label %if.then175

if.then175:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_lock_nested(ptr noundef %iflist_mtx, i32 noundef 0) #14
  %69 = ptrtoint ptr %monitor_sdata to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr null, ptr %monitor_sdata, align 4
  tail call void @mutex_unlock(ptr noundef %iflist_mtx) #14
  tail call void @synchronize_net() #14
  tail call void @drv_remove_interface(ptr noundef %local, ptr noundef nonnull %call9.i.i) #14
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #14
  br label %cleanup

if.end191:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #16
  %skb_queue = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 41
  %lock.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 41, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #14
  %70 = ptrtoint ptr %skb_queue to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %skb_queue, ptr %skb_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 41, i32 0, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %skb_queue, ptr %prev.i.i, align 16
  %qlen.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 41, i32 1
  %72 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %qlen.i.i, align 4
  %status_queue = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 42
  %lock.i255 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 42, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i255, ptr noundef nonnull @.str.26, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #14
  %73 = ptrtoint ptr %status_queue to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %status_queue, ptr %status_queue, align 4
  %prev.i.i256 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 42, i32 0, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i.i256 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %status_queue, ptr %prev.i.i256, align 8
  %qlen.i.i257 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 42, i32 1
  %75 = ptrtoint ptr %qlen.i.i257 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %qlen.i.i257, align 4
  %work = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 40
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #14
  %76 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -64, ptr %work, align 128
  %lockdep_map = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 40, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @ieee80211_add_virtual_monitor.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry196 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 40, i32 1
  %77 = ptrtoint ptr %entry196 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %entry196, ptr %entry196, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 40, i32 1, i32 1
  %78 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %entry196, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 40, i32 2
  %79 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @ieee80211_iface_work, ptr %func, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end191, %if.then175, %if.then130, %do.end111, %if.end8.i.i.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call93, %do.end111 ], [ -22, %if.then130 ], [ %call172, %if.then175 ], [ 0, %if.end191 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end70.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drv_add_interface(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_check_queues(ptr nocapture noundef %sdata, i32 noundef %iftype) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local, align 4
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %queues to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queues, align 4
  %4 = zext i32 %iftype to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %iftype, label %for.body.preheader [
    i32 12, label %entry.cleanup_crit_edge
    i32 10, label %entry.if.then123_crit_edge
  ]

entry.if.then123_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then123

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 7, i32 0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp8 = icmp eq i8 %6, -1
  br i1 %cmp8, label %for.body.preheader.land.rhs_crit_edge, label %if.end49

for.body.preheader.land.rhs_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

for.cond:                                         ; preds = %if.end49
  %arrayidx.1 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 7, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp8.1 = icmp eq i8 %8, -1
  br i1 %cmp8.1, label %for.cond.land.rhs_crit_edge, label %if.end49.1

for.cond.land.rhs_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

if.end49.1:                                       ; preds = %for.cond
  %9 = zext i8 %8 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %9)
  %cmp55.not.1 = icmp ugt i16 %3, %9
  br i1 %cmp55.not.1, label %for.cond.1, label %if.end49.1.land.rhs64_crit_edge

if.end49.1.land.rhs64_crit_edge:                  ; preds = %if.end49.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs64

for.cond.1:                                       ; preds = %if.end49.1
  %arrayidx.2 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 7, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp8.2 = icmp eq i8 %11, -1
  br i1 %cmp8.2, label %for.cond.1.land.rhs_crit_edge, label %if.end49.2

for.cond.1.land.rhs_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

if.end49.2:                                       ; preds = %for.cond.1
  %12 = zext i8 %11 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %12)
  %cmp55.not.2 = icmp ugt i16 %3, %12
  br i1 %cmp55.not.2, label %for.cond.2, label %if.end49.2.land.rhs64_crit_edge

if.end49.2.land.rhs64_crit_edge:                  ; preds = %if.end49.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs64

for.cond.2:                                       ; preds = %if.end49.2
  %arrayidx.3 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 7, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp8.3 = icmp eq i8 %14, -1
  br i1 %cmp8.3, label %for.cond.2.land.rhs_crit_edge, label %if.end49.3

for.cond.2.land.rhs_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

if.end49.3:                                       ; preds = %for.cond.2
  %15 = zext i8 %14 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %15)
  %cmp55.not.3 = icmp ugt i16 %3, %15
  br i1 %cmp55.not.3, label %for.cond.3, label %if.end49.3.land.rhs64_crit_edge

if.end49.3.land.rhs64_crit_edge:                  ; preds = %if.end49.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs64

for.cond.3:                                       ; preds = %if.end49.3
  %16 = zext i32 %iftype to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %iftype, label %for.cond.3.if.then123_crit_edge [
    i32 3, label %for.cond.3.lor.lhs.false_crit_edge
    i32 9, label %for.cond.3.lor.lhs.false_crit_edge284
    i32 7, label %for.cond.3.lor.lhs.false_crit_edge285
  ]

for.cond.3.lor.lhs.false_crit_edge285:            ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

for.cond.3.lor.lhs.false_crit_edge284:            ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

for.cond.3.lor.lhs.false_crit_edge:               ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

for.cond.3.if.then123_crit_edge:                  ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then123

land.rhs:                                         ; preds = %for.cond.2.land.rhs_crit_edge, %for.cond.1.land.rhs_crit_edge, %for.cond.land.rhs_crit_edge, %for.body.preheader.land.rhs_crit_edge
  %.b279 = load i1, ptr @ieee80211_check_queues.__already_done, align 1
  br i1 %.b279, label %land.rhs.cleanup_crit_edge, label %if.then17, !prof !145

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then17:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ieee80211_check_queues.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 323, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end49:                                         ; preds = %for.body.preheader
  %17 = zext i8 %6 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %17)
  %cmp55.not = icmp ugt i16 %3, %17
  br i1 %cmp55.not, label %for.cond, label %if.end49.land.rhs64_crit_edge

if.end49.land.rhs64_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs64

land.rhs64:                                       ; preds = %if.end49.land.rhs64_crit_edge, %if.end49.3.land.rhs64_crit_edge, %if.end49.2.land.rhs64_crit_edge, %if.end49.1.land.rhs64_crit_edge
  %.b273278 = load i1, ptr @ieee80211_check_queues.__already_done.23, align 1
  br i1 %.b273278, label %land.rhs64.cleanup_crit_edge, label %if.then75, !prof !145

land.rhs64.cleanup_crit_edge:                     ; preds = %land.rhs64
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then75:                                        ; preds = %land.rhs64
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ieee80211_check_queues.__already_done.23, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 326, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.cond.3.lor.lhs.false_crit_edge, %for.cond.3.lor.lhs.false_crit_edge284, %for.cond.3.lor.lhs.false_crit_edge285
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i, align 4
  %20 = and i32 %19, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not = icmp eq i32 %20, 0
  br i1 %tobool.i.not, label %lor.lhs.false.if.then123_crit_edge, label %if.end125

lor.lhs.false.if.then123_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then123

if.then123:                                       ; preds = %lor.lhs.false.if.then123_crit_edge, %for.cond.3.if.then123_crit_edge, %entry.if.then123_crit_edge
  %cab_queue = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 6
  %21 = ptrtoint ptr %cab_queue to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %cab_queue, align 1
  br label %cleanup

if.end125:                                        ; preds = %lor.lhs.false
  %cab_queue128 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 6
  %22 = ptrtoint ptr %cab_queue128 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cab_queue128, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp130 = icmp eq i8 %23, -1
  br i1 %cmp130, label %land.rhs139, label %if.end187

land.rhs139:                                      ; preds = %if.end125
  %.b274277 = load i1, ptr @ieee80211_check_queues.__already_done.24, align 1
  br i1 %.b274277, label %land.rhs139.cleanup_crit_edge, label %if.then150, !prof !145

land.rhs139.cleanup_crit_edge:                    ; preds = %land.rhs139
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then150:                                       ; preds = %land.rhs139
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ieee80211_check_queues.__already_done.24, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 339, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end187:                                        ; preds = %if.end125
  %24 = zext i8 %23 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %24)
  %cmp192.not = icmp ugt i16 %3, %24
  br i1 %cmp192.not, label %if.end187.cleanup_crit_edge, label %land.rhs201

if.end187.cleanup_crit_edge:                      ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.rhs201:                                      ; preds = %if.end187
  %.b275276 = load i1, ptr @ieee80211_check_queues.__already_done.25, align 1
  br i1 %.b275276, label %land.rhs201.cleanup_crit_edge, label %if.then212, !prof !145

land.rhs201.cleanup_crit_edge:                    ; preds = %land.rhs201
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then212:                                       ; preds = %land.rhs201
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ieee80211_check_queues.__already_done.25, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 342, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then212, %land.rhs201.cleanup_crit_edge, %if.end187.cleanup_crit_edge, %if.then150, %land.rhs139.cleanup_crit_edge, %if.then123, %if.then75, %land.rhs64.cleanup_crit_edge, %if.then17, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then123 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.then17 ], [ -22, %if.then75 ], [ -22, %if.then150 ], [ -22, %land.rhs.cleanup_crit_edge ], [ -22, %land.rhs64.cleanup_crit_edge ], [ -22, %land.rhs139.cleanup_crit_edge ], [ 0, %if.end187.cleanup_crit_edge ], [ -22, %if.then212 ], [ -22, %land.rhs201.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_vif_use_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drv_remove_interface(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_iface_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2048
  %local1 = getelementptr i8, ptr %work, i32 -956
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %state.i = getelementptr i8, ptr %work, i32 -948
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %scanning = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 67
  %4 = ptrtoint ptr %scanning to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %scanning, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %in_reconfig.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 36
  %6 = ptrtoint ptr %in_reconfig.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_reconfig.i, align 2, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.end4
  %quiescing.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 34
  %8 = ptrtoint ptr %quiescing.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %quiescing.i, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not.i = icmp eq i8 %9, 0
  br i1 %tobool1.not.i, label %ieee80211_can_run_worker.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

ieee80211_can_run_worker.exit:                    ; preds = %if.end.i
  %suspended.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 31
  %10 = ptrtoint ptr %suspended.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %suspended.i, align 1, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not.i = icmp eq i8 %11, 0
  br i1 %tobool4.not.i, label %while.cond.preheader, label %ieee80211_can_run_worker.exit.cleanup_crit_edge

ieee80211_can_run_worker.exit.cleanup_crit_edge:  ; preds = %ieee80211_can_run_worker.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.cond.preheader:                             ; preds = %ieee80211_can_run_worker.exit
  %skb_queue = getelementptr i8, ptr %work, i32 44
  %call865 = tail call ptr @skb_dequeue(ptr noundef %skb_queue) #14
  %tobool9.not66 = icmp eq ptr %call865, null
  br i1 %tobool9.not66, label %while.cond.preheader.while.cond14.preheader_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.cond14.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond14.preheader

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %sta_mtx49.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 46
  %vif223.i = getelementptr i8, ptr %work, i32 2032
  br label %while.body

while.cond14.preheader:                           ; preds = %if.end13.while.cond14.preheader_crit_edge, %while.cond.preheader.while.cond14.preheader_crit_edge
  %status_queue = getelementptr i8, ptr %work, i32 100
  %call1568 = tail call ptr @skb_dequeue(ptr noundef %status_queue) #14
  %tobool16.not69 = icmp eq ptr %call1568, null
  br i1 %tobool16.not69, label %while.cond14.preheader.while.end19_crit_edge, label %while.cond14.preheader.while.body17_crit_edge

while.cond14.preheader.while.body17_crit_edge:    ; preds = %while.cond14.preheader
  br label %while.body17

while.cond14.preheader.while.end19_crit_edge:     ; preds = %while.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end19

while.body:                                       ; preds = %if.end13.while.body_crit_edge, %while.body.lr.ph
  %call867 = phi ptr [ %call865, %while.body.lr.ph ], [ %call8, %if.end13.while.body_crit_edge ]
  %kcov_handle.i = getelementptr inbounds %struct.sk_buff, ptr %call867, i32 0, i32 15, i32 0, i32 22
  %12 = ptrtoint ptr %kcov_handle.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %kcov_handle.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %13)
  %tobool2.not.i.i = icmp ult i64 %13, 4294967296
  %retval.0.i.i = select i1 %tobool2.not.i.i, i64 %13, i64 0
  tail call void @kcov_remote_start(i64 noundef %retval.0.i.i) #14
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call867, i32 0, i32 15, i32 0, i32 18
  %14 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30451, i16 %15)
  %cmp = icmp eq i16 %15, -30451
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_process_tdls_channel_switch(ptr noundef %add.ptr, ptr noundef nonnull %call867) #14
  br label %if.end13

if.else:                                          ; preds = %while.body
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call867, i32 0, i32 19
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 2
  %20 = and i16 %19, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12288, i16 %20)
  %cmp.i.i = icmp eq i16 %20, -12288
  br i1 %cmp.i.i, label %land.lhs.true.i, label %if.else.if.else104.i_crit_edge

if.else.if.else104.i_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else104.i

land.lhs.true.i:                                  ; preds = %if.else
  %u.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %17, i32 0, i32 6
  %21 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %u.i, align 2
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %22, label %land.lhs.true.i.if.else104.i_crit_edge [
    i8 3, label %if.then.i
    i8 21, label %if.then37.i
    i8 22, label %if.then96.i
  ]

land.lhs.true.i.if.else104.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else104.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %len2.i = getelementptr inbounds %struct.sk_buff, ptr %call867, i32 0, i32 6
  %24 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len2.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %sta_mtx49.i, i32 noundef 0) #14
  %sa.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %17, i32 0, i32 3
  %call3.i = tail call ptr @sta_info_get_bss(ptr noundef %add.ptr, ptr noundef %sa.i) #14
  %tobool.not.i50 = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i50, label %if.then.i.if.end26.i_crit_edge, label %if.then4.i

if.then.i.if.end26.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i

if.then4.i:                                       ; preds = %if.then.i
  %u6.i = getelementptr inbounds %struct.anon.174, ptr %u.i, i32 0, i32 1
  %26 = ptrtoint ptr %u6.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %u6.i, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %27, label %do.end.i [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb8.i
    i8 2, label %sw.bb9.i
  ]

sw.bb.i:                                          ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_process_addba_request(ptr noundef %1, ptr noundef nonnull %call3.i, ptr noundef %17, i32 noundef %25) #14
  br label %if.end26.i

sw.bb8.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_process_addba_resp(ptr noundef %1, ptr noundef nonnull %call3.i, ptr noundef %17, i32 noundef %25) #14
  br label %if.end26.i

sw.bb9.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_process_delba(ptr noundef %add.ptr, ptr noundef nonnull %call3.i, ptr noundef %17, i32 noundef %25) #14
  br label %if.end26.i

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1440, i32 noundef 9, ptr noundef null) #14
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end.i, %sw.bb9.i, %sw.bb8.i, %sw.bb.i, %if.then.i.if.end26.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %sta_mtx49.i) #14
  br label %if.end13

if.then37.i:                                      ; preds = %land.lhs.true.i
  %u39.i = getelementptr inbounds %struct.anon.174, ptr %u.i, i32 0, i32 1
  %29 = ptrtoint ptr %u39.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %u39.i, align 1
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %30, label %do.end71.i [
    i8 2, label %sw.bb42.i
    i8 1, label %sw.bb57.i
  ]

sw.bb42.i:                                        ; preds = %if.then37.i
  %band45.i = getelementptr inbounds %struct.sk_buff, ptr %call867, i32 0, i32 3, i32 36
  %32 = ptrtoint ptr %band45.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %band45.i, align 4
  %operating_mode.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %17, i32 0, i32 6, i32 0, i32 1
  %34 = ptrtoint ptr %operating_mode.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %operating_mode.i, align 1
  tail call void @mutex_lock_nested(ptr noundef %sta_mtx49.i, i32 noundef 0) #14
  %sa50.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %17, i32 0, i32 3
  %call52.i = tail call ptr @sta_info_get_bss(ptr noundef %add.ptr, ptr noundef %sa50.i) #14
  %tobool53.not.i = icmp eq ptr %call52.i, null
  br i1 %tobool53.not.i, label %sw.bb42.i.if.end55.i_crit_edge, label %if.then54.i

sw.bb42.i.if.end55.i_crit_edge:                   ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55.i

if.then54.i:                                      ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv46.i = zext i8 %33 to i32
  tail call void @ieee80211_vht_handle_opmode(ptr noundef %add.ptr, ptr noundef nonnull %call52.i, i8 noundef zeroext %35, i32 noundef %conv46.i) #14
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then54.i, %sw.bb42.i.if.end55.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %sta_mtx49.i) #14
  br label %if.end13

sw.bb57.i:                                        ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_process_mu_groups(ptr noundef %add.ptr, ptr noundef %17) #14
  br label %if.end13

do.end71.i:                                       ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1472, i32 noundef 9, ptr noundef null) #14
  br label %if.end13

if.then96.i:                                      ; preds = %land.lhs.true.i
  %u98.i = getelementptr inbounds %struct.anon.174, ptr %u.i, i32 0, i32 1
  %36 = ptrtoint ptr %u98.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %u98.i, align 1
  %38 = and i8 %37, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %38)
  %switch.i = icmp eq i8 %38, 6
  br i1 %switch.i, label %sw.bb101.i, label %if.then96.i.if.end13_crit_edge

if.then96.i.if.end13_crit_edge:                   ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

sw.bb101.i:                                       ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_s1g_rx_twt_action(ptr noundef %add.ptr, ptr noundef nonnull %call867) #14
  br label %if.end13

if.else104.i:                                     ; preds = %land.lhs.true.i.if.else104.i_crit_edge, %if.else.if.else104.i_crit_edge
  %39 = and i16 %19, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %39)
  %cmp.i328.i = icmp eq i16 %39, 3072
  br i1 %cmp.i328.i, label %if.then107.i, label %if.else139.i

if.then107.i:                                     ; preds = %if.else104.i
  %40 = ptrtoint ptr %vif223.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vif223.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp108.i = icmp eq i32 %41, 2
  br i1 %cmp108.i, label %if.then110.i, label %do.end124.i

if.then110.i:                                     ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_sta_rx_queued_ext(ptr noundef %add.ptr, ptr noundef nonnull %call867) #14
  br label %if.end13

do.end124.i:                                      ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1489, i32 noundef 9, ptr noundef null) #14
  br label %if.end13

if.else139.i:                                     ; preds = %if.else104.i
  %42 = and i16 %19, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %42)
  %cmp.i329.i = icmp eq i16 %42, -30720
  br i1 %cmp.i329.i, label %if.then142.i, label %if.else222.i

if.then142.i:                                     ; preds = %if.else139.i
  %43 = and i16 %19, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool147.not.i = icmp eq i16 %43, 0
  br i1 %tobool147.not.i, label %if.then142.i.if.end169.i_crit_edge, label %do.end163.i, !prof !145

if.then142.i.if.end169.i_crit_edge:               ; preds = %if.then142.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end169.i

do.end163.i:                                      ; preds = %if.then142.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1503, i32 noundef 9, ptr noundef null) #14
  br label %if.end169.i

if.end169.i:                                      ; preds = %do.end163.i, %if.then142.i.if.end169.i_crit_edge
  %seq_ctrl.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %17, i32 0, i32 5
  %44 = ptrtoint ptr %seq_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %seq_ctrl.i, align 2
  %46 = and i16 %45, 3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool180.not.i = icmp eq i16 %46, 0
  br i1 %tobool180.not.i, label %do.end198.i, label %if.end169.i.if.end204.i_crit_edge, !prof !144

if.end169.i.if.end204.i_crit_edge:                ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end204.i

do.end198.i:                                      ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1505, i32 noundef 9, ptr noundef null) #14
  br label %if.end204.i

if.end204.i:                                      ; preds = %do.end198.i, %if.end169.i.if.end204.i_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %sta_mtx49.i, i32 noundef 0) #14
  %sa213.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %17, i32 0, i32 3
  %call215.i = tail call ptr @sta_info_get_bss(ptr noundef %add.ptr, ptr noundef %sa213.i) #14
  %tobool216.not.i = icmp eq ptr %call215.i, null
  br i1 %tobool216.not.i, label %if.end204.i.if.end220.i_crit_edge, label %if.then217.i

if.end204.i.if.end220.i_crit_edge:                ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end220.i

if.then217.i:                                     ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %17, align 2
  %49 = and i16 %48, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %49)
  %cmp.i.i.i.i = icmp eq i16 %49, 3
  %retval.0.v.i.i.i = select i1 %cmp.i.i.i.i, i32 30, i32 24
  %retval.0.i.i.i = getelementptr i8, ptr %17, i32 %retval.0.v.i.i.i
  %50 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %retval.0.i.i.i, align 1
  %52 = and i8 %51, 15
  %conv219.i = zext i8 %52 to i16
  tail call void @__ieee80211_stop_rx_ba_session(ptr noundef nonnull %call215.i, i16 noundef zeroext %conv219.i, i16 noundef zeroext 0, i16 noundef zeroext 38, i1 noundef zeroext true) #14
  br label %if.end220.i

if.end220.i:                                      ; preds = %if.then217.i, %if.end204.i.if.end220.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %sta_mtx49.i) #14
  br label %if.end13

if.else222.i:                                     ; preds = %if.else139.i
  %53 = ptrtoint ptr %vif223.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vif223.i, align 8
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %54, label %do.end245.i [
    i32 2, label %sw.bb225.i
    i32 1, label %sw.bb226.i
    i32 7, label %if.end231.i
  ]

sw.bb225.i:                                       ; preds = %if.else222.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_sta_rx_queued_mgmt(ptr noundef %add.ptr, ptr noundef nonnull %call867) #14
  br label %if.end13

sw.bb226.i:                                       ; preds = %if.else222.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_ibss_rx_queued_mgmt(ptr noundef %add.ptr, ptr noundef nonnull %call867) #14
  br label %if.end13

if.end231.i:                                      ; preds = %if.else222.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_mesh_rx_queued_mgmt(ptr noundef %add.ptr, ptr noundef nonnull %call867) #14
  br label %if.end13

do.end245.i:                                      ; preds = %if.else222.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1535, i32 noundef 9, ptr noundef nonnull @.str.27) #14
  br label %if.end13

if.end13:                                         ; preds = %do.end245.i, %if.end231.i, %sw.bb226.i, %sw.bb225.i, %if.end220.i, %do.end124.i, %if.then110.i, %sw.bb101.i, %if.then96.i.if.end13_crit_edge, %do.end71.i, %sw.bb57.i, %if.end55.i, %if.end26.i, %if.then12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call867, i32 noundef 0) #14
  tail call void @kcov_remote_stop() #14
  %call8 = tail call ptr @skb_dequeue(ptr noundef %skb_queue) #14
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end13.while.cond14.preheader_crit_edge, label %if.end13.while.body_crit_edge

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end13.while.cond14.preheader_crit_edge:        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond14.preheader

while.body17:                                     ; preds = %ieee80211_iface_process_status.exit.while.body17_crit_edge, %while.cond14.preheader.while.body17_crit_edge
  %call1570 = phi ptr [ %call15, %ieee80211_iface_process_status.exit.while.body17_crit_edge ], [ %call1568, %while.cond14.preheader.while.body17_crit_edge ]
  %kcov_handle.i51 = getelementptr inbounds %struct.sk_buff, ptr %call1570, i32 0, i32 15, i32 0, i32 22
  %56 = ptrtoint ptr %kcov_handle.i51 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %kcov_handle.i51, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %57)
  %tobool2.not.i.i52 = icmp ult i64 %57, 4294967296
  %retval.0.i.i53 = select i1 %tobool2.not.i.i52, i64 %57, i64 0
  tail call void @kcov_remote_start(i64 noundef %retval.0.i.i53) #14
  %data.i54 = getelementptr inbounds %struct.sk_buff, ptr %call1570, i32 0, i32 19
  %58 = ptrtoint ptr %data.i54 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i54, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %59, align 2
  %62 = and i16 %61, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12288, i16 %62)
  %cmp.i.i55 = icmp eq i16 %62, -12288
  br i1 %cmp.i.i55, label %land.lhs.true.i58, label %while.body17.ieee80211_iface_process_status.exit_crit_edge

while.body17.ieee80211_iface_process_status.exit_crit_edge: ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_iface_process_status.exit

land.lhs.true.i58:                                ; preds = %while.body17
  %u.i56 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %59, i32 0, i32 6
  %63 = ptrtoint ptr %u.i56 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %u.i56, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %64)
  %cmp.i57 = icmp eq i8 %64, 22
  br i1 %cmp.i57, label %if.then.i60, label %land.lhs.true.i58.ieee80211_iface_process_status.exit_crit_edge

land.lhs.true.i58.ieee80211_iface_process_status.exit_crit_edge: ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_iface_process_status.exit

if.then.i60:                                      ; preds = %land.lhs.true.i58
  %u3.i = getelementptr inbounds %struct.anon.174, ptr %u.i56, i32 0, i32 1
  %65 = ptrtoint ptr %u3.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %u3.i, align 1
  %67 = and i8 %66, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %67)
  %switch.i59 = icmp eq i8 %67, 6
  br i1 %switch.i59, label %sw.bb.i61, label %if.then.i60.ieee80211_iface_process_status.exit_crit_edge

if.then.i60.ieee80211_iface_process_status.exit_crit_edge: ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_iface_process_status.exit

sw.bb.i61:                                        ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_s1g_status_twt_action(ptr noundef %add.ptr, ptr noundef nonnull %call1570) #14
  br label %ieee80211_iface_process_status.exit

ieee80211_iface_process_status.exit:              ; preds = %sw.bb.i61, %if.then.i60.ieee80211_iface_process_status.exit_crit_edge, %land.lhs.true.i58.ieee80211_iface_process_status.exit_crit_edge, %while.body17.ieee80211_iface_process_status.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1570, i32 noundef 0) #14
  tail call void @kcov_remote_stop() #14
  %call15 = tail call ptr @skb_dequeue(ptr noundef %status_queue) #14
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %ieee80211_iface_process_status.exit.while.end19_crit_edge, label %ieee80211_iface_process_status.exit.while.body17_crit_edge

ieee80211_iface_process_status.exit.while.body17_crit_edge: ; preds = %ieee80211_iface_process_status.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body17

ieee80211_iface_process_status.exit.while.end19_crit_edge: ; preds = %ieee80211_iface_process_status.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end19

while.end19:                                      ; preds = %ieee80211_iface_process_status.exit.while.end19_crit_edge, %while.cond14.preheader.while.end19_crit_edge
  %vif = getelementptr i8, ptr %work, i32 2032
  %68 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %vif, align 8
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %69, label %while.end19.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb20
    i32 7, label %if.end25
    i32 11, label %sw.bb26
  ]

while.end19.cleanup_crit_edge:                    ; preds = %while.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %while.end19
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_sta_work(ptr noundef %add.ptr) #14
  br label %cleanup

sw.bb20:                                          ; preds = %while.end19
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_ibss_work(ptr noundef %add.ptr) #14
  br label %cleanup

if.end25:                                         ; preds = %while.end19
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_mesh_work(ptr noundef %add.ptr) #14
  br label %cleanup

sw.bb26:                                          ; preds = %while.end19
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_ocb_work(ptr noundef %add.ptr) #14
  br label %cleanup

cleanup:                                          ; preds = %sw.bb26, %if.end25, %sw.bb20, %sw.bb, %while.end19.cleanup_crit_edge, %ieee80211_can_run_worker.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_del_virtual_monitor(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 4
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %2 = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.rhs, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

land.rhs:                                         ; preds = %if.end
  %.b132 = load i1, ptr @ieee80211_del_virtual_monitor.__already_done, align 1
  br i1 %.b132, label %land.rhs.if.end32_crit_edge, label %if.then10, !prof !145

land.rhs.if.end32_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then10:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ieee80211_del_virtual_monitor.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1090, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 1090) #14
  br label %if.end32

if.end32:                                         ; preds = %if.then10, %land.rhs.if.end32_crit_edge, %if.end.if.end32_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool42.not = icmp eq i32 %3, 0
  br i1 %tobool42.not, label %if.end32.if.end70_crit_edge, label %land.rhs43

if.end32.if.end70_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

land.rhs43:                                       ; preds = %if.end32
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 1
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 8
  %dep_map = getelementptr inbounds %struct.mutex, ptr %5, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end64, label %land.rhs43.if.end70_crit_edge, !prof !144

land.rhs43.if.end70_crit_edge:                    ; preds = %land.rhs43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

do.end64:                                         ; preds = %land.rhs43
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1091, i32 noundef 9, ptr noundef null) #14
  br label %if.end70

if.end70:                                         ; preds = %do.end64, %land.rhs43.if.end70_crit_edge, %if.end32.if.end70_crit_edge
  %iflist_mtx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %iflist_mtx, i32 noundef 0) #14
  %dep_map82 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 64, i32 5
  %call.i133 = tail call i32 @lock_is_held_type(ptr noundef %dep_map82, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %tobool84.not = icmp eq i32 %call.i133, 0
  br i1 %tobool84.not, label %land.lhs.true, label %if.end70.do.end92_crit_edge

if.end70.do.end92_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end92

land.lhs.true:                                    ; preds = %if.end70
  %call85 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %land.lhs.true.do.end92_crit_edge, label %land.lhs.true87

land.lhs.true.do.end92_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end92

land.lhs.true87:                                  ; preds = %land.lhs.true
  %.b130131 = load i1, ptr @ieee80211_del_virtual_monitor.__warned, align 1
  br i1 %.b130131, label %land.lhs.true87.do.end92_crit_edge, label %if.then89

land.lhs.true87.do.end92_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end92

if.then89:                                        ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ieee80211_del_virtual_monitor.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1096, ptr noundef nonnull @.str.5) #14
  br label %do.end92

do.end92:                                         ; preds = %if.then89, %land.lhs.true87.do.end92_crit_edge, %land.lhs.true.do.end92_crit_edge, %if.end70.do.end92_crit_edge
  %monitor_sdata = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 147
  %6 = ptrtoint ptr %monitor_sdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %monitor_sdata, align 4
  %tobool94.not = icmp eq ptr %7, null
  br i1 %tobool94.not, label %if.then95, label %do.body103

if.then95:                                        ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %iflist_mtx) #14
  br label %cleanup

do.body103:                                       ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %monitor_sdata to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %monitor_sdata, align 4
  tail call void @mutex_unlock(ptr noundef %iflist_mtx) #14
  tail call void @synchronize_net() #14
  %mtx112 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66
  tail call void @mutex_lock_nested(ptr noundef %mtx112, i32 noundef 0) #14
  tail call void @ieee80211_vif_release_channel(ptr noundef nonnull %7) #14
  tail call void @mutex_unlock(ptr noundef %mtx112) #14
  tail call void @drv_remove_interface(ptr noundef %local, ptr noundef nonnull %7) #14
  tail call void @kfree(ptr noundef nonnull %7) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body103, %if.then95, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_vif_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_do_open(ptr noundef %wdev, i1 noundef zeroext %coming_up) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %wdev, i32 -8
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %local1 = getelementptr i8, ptr %wdev, i32 1084
  %2 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local1, align 4
  %vif = getelementptr i8, ptr %wdev, i32 4072
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 3, label %sw.bb28
    i32 5, label %entry.do.end_crit_edge
    i32 9, label %entry.do.end_crit_edge567
    i32 8, label %entry.do.end_crit_edge568
    i32 13, label %entry.do.end_crit_edge569
    i32 0, label %entry.do.end_crit_edge570
  ]

entry.do.end_crit_edge570:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

entry.do.end_crit_edge569:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

entry.do.end_crit_edge568:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

entry.do.end_crit_edge567:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %bss = getelementptr i8, ptr %wdev, i32 2316
  %7 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bss, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %sw.bb.cleanup361_crit_edge, label %if.end

sw.bb.cleanup361_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup361

if.end:                                           ; preds = %sw.bb
  %mtx = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 66
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #14
  %u = getelementptr i8, ptr %wdev, i32 2544
  %9 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bss, align 4
  %vlans = getelementptr inbounds %struct.ieee80211_if_ap, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %vlans to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vlans, align 4
  %call.i.i510 = tail call zeroext i1 @__list_add_valid(ptr noundef %u, ptr noundef %vlans, ptr noundef %12) #14
  br i1 %call.i.i510, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %u, ptr %prev1.i.i, align 4
  %14 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %u, align 4
  %prev3.i.i = getelementptr i8, ptr %wdev, i32 2548
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %vlans, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %vlans to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %u, ptr %vlans, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx) #14
  %17 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bss, align 4
  %control_port_protocol = getelementptr i8, ptr %18, i32 -1054
  %19 = ptrtoint ptr %control_port_protocol to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %control_port_protocol, align 2
  %control_port_protocol5 = getelementptr i8, ptr %wdev, i32 1490
  %21 = ptrtoint ptr %control_port_protocol5 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %control_port_protocol5, align 2
  %control_port_no_encrypt = getelementptr i8, ptr %18, i32 -1052
  %22 = ptrtoint ptr %control_port_no_encrypt to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %control_port_no_encrypt, align 4, !range !146
  %control_port_no_encrypt7 = getelementptr i8, ptr %wdev, i32 1492
  %24 = ptrtoint ptr %control_port_no_encrypt7 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %control_port_no_encrypt7, align 4
  %control_port_over_nl80211 = getelementptr i8, ptr %18, i32 -1050
  %25 = ptrtoint ptr %control_port_over_nl80211 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %control_port_over_nl80211, align 2, !range !146
  %control_port_over_nl8021110 = getelementptr i8, ptr %wdev, i32 1494
  %27 = ptrtoint ptr %control_port_over_nl8021110 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %control_port_over_nl8021110, align 2
  %control_port_no_preauth = getelementptr i8, ptr %18, i32 -1051
  %28 = ptrtoint ptr %control_port_no_preauth to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %control_port_no_preauth, align 1, !range !146
  %control_port_no_preauth13 = getelementptr i8, ptr %wdev, i32 1493
  %30 = ptrtoint ptr %control_port_no_preauth13 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %control_port_no_preauth13, align 1
  %cab_queue = getelementptr i8, ptr %18, i32 2337
  %31 = ptrtoint ptr %cab_queue to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cab_queue, align 1
  %cab_queue17 = getelementptr i8, ptr %wdev, i32 4881
  %33 = ptrtoint ptr %cab_queue17 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %cab_queue17, align 1
  %hw_queue = getelementptr i8, ptr %wdev, i32 4882
  %hw_queue20 = getelementptr i8, ptr %18, i32 2338
  %34 = ptrtoint ptr %hw_queue20 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %hw_queue20, align 2
  %36 = ptrtoint ptr %hw_queue to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %hw_queue, align 2
  %chandef = getelementptr i8, ptr %wdev, i32 4180
  %chandef25 = getelementptr i8, ptr %18, i32 1636
  %37 = call ptr @memcpy(ptr %chandef, ptr %chandef25, i32 28)
  %key_mtx = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 65
  tail call void @mutex_lock_nested(ptr noundef %key_mtx, i32 noundef 0) #14
  %crypto_tx_tailroom_needed_cnt = getelementptr i8, ptr %18, i32 -1572
  %38 = ptrtoint ptr %crypto_tx_tailroom_needed_cnt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %crypto_tx_tailroom_needed_cnt, align 4
  %crypto_tx_tailroom_needed_cnt26 = getelementptr i8, ptr %wdev, i32 972
  %40 = ptrtoint ptr %crypto_tx_tailroom_needed_cnt26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %crypto_tx_tailroom_needed_cnt26, align 4
  %add = add i32 %41, %39
  store i32 %add, ptr %crypto_tx_tailroom_needed_cnt26, align 4
  tail call void @mutex_unlock(ptr noundef %key_mtx) #14
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %u29 = getelementptr i8, ptr %wdev, i32 2544
  %bss30 = getelementptr i8, ptr %wdev, i32 2316
  %42 = ptrtoint ptr %bss30 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %u29, ptr %bss30, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry.do.end_crit_edge, %entry.do.end_crit_edge567, %entry.do.end_crit_edge568, %entry.do.end_crit_edge569, %entry.do.end_crit_edge570
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1181, i32 noundef 9, ptr noundef null) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb28, %list_add.exit, %entry.sw.epilog_crit_edge
  %open_count = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 13
  %43 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %open_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp = icmp eq i32 %44, 0
  br i1 %cmp, label %if.then51, label %sw.epilog.if.end56_crit_edge

sw.epilog.if.end56_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

if.then51:                                        ; preds = %sw.epilog
  %call52 = tail call i32 @drv_start(ptr noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.then51.err_del_bss_crit_edge

if.then51.err_del_bss_crit_edge:                  ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_del_bss

if.end55:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_led_radio(ptr noundef %3, i1 noundef zeroext true) #14
  tail call void @ieee80211_mod_tpt_led_trig(ptr noundef %3, i32 noundef 1, i32 noundef 0) #14
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %sw.epilog.if.end56_crit_edge
  %hw_reconf_flags.0 = phi i32 [ -1, %if.end55 ], [ 0, %sw.epilog.if.end56_crit_edge ]
  %tobool57.not = icmp eq ptr %1, null
  br i1 %tobool57.not, label %if.end56.if.end68_crit_edge, label %land.lhs.true

if.end56.if.end68_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

land.lhs.true:                                    ; preds = %if.end56
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %45 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_addr, align 64
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %add.ptr.i511 = getelementptr i8, ptr %46, i32 4
  %49 = ptrtoint ptr %add.ptr.i511 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr.i511, align 2
  %conv.i = zext i16 %50 to i32
  %or.i = or i32 %48, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then59, label %land.lhs.true.if.end68_crit_edge

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

if.then59:                                        ; preds = %land.lhs.true
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 1
  %51 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wiphy, align 8
  %perm_addr = getelementptr inbounds %struct.wiphy, ptr %52, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef nonnull %1, i32 noundef 0, ptr noundef %perm_addr, i32 noundef 6) #14
  %perm_addr61 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 54
  %53 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_addr, align 64
  %55 = call ptr @memcpy(ptr %perm_addr61, ptr %54, i32 6)
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %54, align 4
  %58 = and i32 %57, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.i.not.i = icmp eq i32 %58, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.then59.err_stop_crit_edge

if.then59.err_stop_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_stop

is_valid_ether_addr.exit:                         ; preds = %if.then59
  %add.ptr.i.i = getelementptr i8, ptr %54, i32 4
  %59 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %60 to i32
  %or.i.i = or i32 %57, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.err_stop_crit_edge, label %is_valid_ether_addr.exit.if.end68_crit_edge

is_valid_ether_addr.exit.if.end68_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

is_valid_ether_addr.exit.err_stop_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_stop

if.end68:                                         ; preds = %is_valid_ether_addr.exit.if.end68_crit_edge, %land.lhs.true.if.end68_crit_edge, %if.end56.if.end68_crit_edge
  %61 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vif, align 8
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %62, label %sw.default [
    i32 4, label %do.body72
    i32 6, label %sw.bb88
  ]

do.body72:                                        ; preds = %if.end68
  %call73 = tail call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call73, label %do.body72.do.end82_crit_edge, label %land.lhs.true74

do.body72.do.end82_crit_edge:                     ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end82

land.lhs.true74:                                  ; preds = %do.body72
  %call75 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %land.lhs.true74.do.end82_crit_edge, label %land.lhs.true77

land.lhs.true74.do.end82_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end82

land.lhs.true77:                                  ; preds = %land.lhs.true74
  %.b509 = load i1, ptr @ieee80211_do_open.__warned, align 1
  br i1 %.b509, label %land.lhs.true77.do.end82_crit_edge, label %if.then79

land.lhs.true77.do.end82_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end82

if.then79:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ieee80211_do_open.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1213, ptr noundef nonnull @.str.5) #14
  br label %do.end82

do.end82:                                         ; preds = %if.then79, %land.lhs.true77.do.end82_crit_edge, %land.lhs.true74.do.end82_crit_edge, %do.body72.do.end82_crit_edge
  %bss84 = getelementptr i8, ptr %wdev, i32 2316
  %64 = ptrtoint ptr %bss84 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bss84, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %tobool85.not = icmp eq ptr %67, null
  br i1 %tobool85.not, label %if.else, label %if.then86

if.then86:                                        ; preds = %do.end82
  tail call void @ieee80211_vif_vlan_copy_chanctx(ptr noundef %add.ptr.i) #14
  tail call void @netif_carrier_on(ptr noundef %1) #14
  %68 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %local1, align 4
  %70 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %71)
  %cmp.i512 = icmp eq i32 %71, 4
  br i1 %cmp.i512, label %if.then.i, label %if.then86.if.end5.i_crit_edge

if.then86.if.end5.i_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.then.i:                                        ; preds = %if.then86
  %72 = ptrtoint ptr %bss84 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bss84, align 4
  %tobool.not.i = icmp eq ptr %73, null
  br i1 %tobool.not.i, label %if.then.i.sw.epilog204_crit_edge, label %if.end.i

if.then.i.sw.epilog204_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog204

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i513 = getelementptr i8, ptr %73, i32 -2552
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i, %if.then86.if.end5.i_crit_edge
  %bss.0.i = phi ptr [ %add.ptr.i513, %if.end.i ], [ %add.ptr.i, %if.then86.if.end5.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.ieee80211_hw, ptr %69, i32 0, i32 4, i32 1
  %74 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %76 = and i32 %75, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.i.not.i514 = icmp eq i32 %76, 0
  br i1 %tobool.i.not.i514, label %if.end5.i.sw.epilog204_crit_edge, label %lor.lhs.false.i

if.end5.i.sw.epilog204_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog204

lor.lhs.false.i:                                  ; preds = %if.end5.i
  %vif6.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %bss.0.i, i32 0, i32 59
  %77 = ptrtoint ptr %vif6.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %vif6.i, align 8
  %79 = and i32 %78, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %79)
  %switch.i.i = icmp eq i32 %79, 2
  br i1 %switch.i.i, label %if.end10.i, label %lor.lhs.false.i.sw.epilog204_crit_edge

lor.lhs.false.i.sw.epilog204_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog204

if.end10.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  %offload_flags.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %bss.0.i, i32 0, i32 59, i32 11
  %80 = ptrtoint ptr %offload_flags.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %offload_flags.i, align 4
  %82 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %83 = icmp ne i32 %82, 0
  %use_4addr.i = getelementptr i8, ptr %wdev, i32 128
  %84 = ptrtoint ptr %use_4addr.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %use_4addr.i, align 8, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool13.not.i = icmp eq i8 %85, 0
  %86 = and i32 %81, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %86)
  %87 = icmp eq i32 %86, 3
  %enabled.0.off0.i = select i1 %tobool13.not.i, i1 %83, i1 %87
  %cond.i = select i1 %enabled.0.off0.i, ptr @ieee80211_dataif_8023_ops, ptr @ieee80211_dataif_ops
  %dev.i = getelementptr i8, ptr %wdev, i32 1080
  %88 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i, align 8
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %89, i32 0, i32 16
  %90 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %cond.i, ptr %netdev_ops.i, align 8
  br label %sw.epilog204

if.else:                                          ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_carrier_off(ptr noundef %1) #14
  br label %sw.epilog204

sw.bb88:                                          ; preds = %if.end68
  %u89 = getelementptr i8, ptr %wdev, i32 2544
  %91 = ptrtoint ptr %u89 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %u89, align 8
  %and = and i32 %92, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool90.not = icmp eq i32 %and, 0
  br i1 %tobool90.not, label %if.end92, label %if.then91

if.then91:                                        ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #16
  %cooked_mntrs = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 15
  %93 = ptrtoint ptr %cooked_mntrs to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cooked_mntrs, align 8
  %inc = add i32 %94, 1
  store i32 %inc, ptr %cooked_mntrs, align 8
  br label %sw.epilog204

if.end92:                                         ; preds = %sw.bb88
  %and95 = and i32 %92, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.else102, label %if.then97

if.then97:                                        ; preds = %if.end92
  %call98 = tail call i32 @drv_add_interface(ptr noundef %3, ptr noundef %add.ptr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.then97.if.end113_crit_edge, label %if.then97.err_stop_crit_edge

if.then97.err_stop_crit_edge:                     ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_stop

if.then97.if.end113_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

if.else102:                                       ; preds = %if.end92
  %monitors = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 14
  %95 = ptrtoint ptr %monitors to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %monitors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp103 = icmp eq i32 %96, 0
  br i1 %cmp103, label %land.lhs.true104, label %if.else102.if.end113_crit_edge

if.else102.if.end113_crit_edge:                   ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

land.lhs.true104:                                 ; preds = %if.else102
  %97 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %open_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp106 = icmp eq i32 %98, 0
  br i1 %cmp106, label %if.then107, label %land.lhs.true104.if.end113_crit_edge

land.lhs.true104.if.end113_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

if.then107:                                       ; preds = %land.lhs.true104
  %call108 = tail call i32 @ieee80211_add_virtual_monitor(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.then107.if.end113_crit_edge, label %if.then107.err_stop_crit_edge

if.then107.err_stop_crit_edge:                    ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_stop

if.then107.if.end113_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

if.end113:                                        ; preds = %if.then107.if.end113_crit_edge, %land.lhs.true104.if.end113_crit_edge, %if.else102.if.end113_crit_edge, %if.then97.if.end113_crit_edge
  %monitors114 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 14
  %99 = ptrtoint ptr %monitors114 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %monitors114, align 4
  %inc115 = add i32 %100, 1
  store i32 %inc115, ptr %monitors114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp117 = icmp eq i32 %100, 0
  br i1 %cmp117, label %if.then118, label %if.end113.if.end122_crit_edge

if.end113.if.end122_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end122

if.then118:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #16
  %101 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %3, align 8
  %or = or i32 %102, 1
  store i32 %or, ptr %3, align 8
  %or121 = or i32 %hw_reconf_flags.0, 8
  br label %if.end122

if.end122:                                        ; preds = %if.then118, %if.end113.if.end122_crit_edge
  %hw_reconf_flags.1 = phi i32 [ %or121, %if.then118 ], [ %hw_reconf_flags.0, %if.end113.if.end122_crit_edge ]
  %103 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %local1, align 4
  %105 = ptrtoint ptr %u89 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %u89, align 8
  %and.i = and i32 %106, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i516 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i516, label %if.end122.do.body3.i_crit_edge, label %if.then.i517

if.end122.do.body3.i_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body3.i

if.then.i517:                                     ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  %fif_fcsfail.i = getelementptr inbounds %struct.ieee80211_local, ptr %104, i32 0, i32 16
  %107 = ptrtoint ptr %fif_fcsfail.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %fif_fcsfail.i, align 4
  %add.i = add i32 %108, 1
  store i32 %add.i, ptr %fif_fcsfail.i, align 4
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i517, %if.end122.do.body3.i_crit_edge
  %and4.i = and i32 %106, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %do.body3.i.do.body11.i_crit_edge, label %if.then6.i

do.body3.i.do.body11.i_crit_edge:                 ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11.i

if.then6.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  %fif_plcpfail.i = getelementptr inbounds %struct.ieee80211_local, ptr %104, i32 0, i32 17
  %109 = ptrtoint ptr %fif_plcpfail.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %fif_plcpfail.i, align 8
  %add7.i = add i32 %110, 1
  store i32 %add7.i, ptr %fif_plcpfail.i, align 8
  br label %do.body11.i

do.body11.i:                                      ; preds = %if.then6.i, %do.body3.i.do.body11.i_crit_edge
  %and12.i = and i32 %106, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i518 = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i518, label %do.body11.i.do.body27.i_crit_edge, label %if.then14.i

do.body11.i.do.body27.i_crit_edge:                ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27.i

if.then14.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #16
  %fif_control.i = getelementptr inbounds %struct.ieee80211_local, ptr %104, i32 0, i32 18
  %111 = ptrtoint ptr %fif_control.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %fif_control.i, align 4
  %add15.i = add i32 %112, 1
  store i32 %add15.i, ptr %fif_control.i, align 4
  %fif_pspoll.i = getelementptr inbounds %struct.ieee80211_local, ptr %104, i32 0, i32 20
  %113 = ptrtoint ptr %fif_pspoll.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %fif_pspoll.i, align 4
  %add23.i = add i32 %114, 1
  store i32 %add23.i, ptr %fif_pspoll.i, align 4
  br label %do.body27.i

do.body27.i:                                      ; preds = %if.then14.i, %do.body11.i.do.body27.i_crit_edge
  %and28.i = and i32 %106, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %do.body27.i.ieee80211_adjust_monitor_flags.exit_crit_edge, label %if.then30.i

do.body27.i.ieee80211_adjust_monitor_flags.exit_crit_edge: ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_adjust_monitor_flags.exit

if.then30.i:                                      ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #16
  %fif_other_bss.i = getelementptr inbounds %struct.ieee80211_local, ptr %104, i32 0, i32 19
  %115 = ptrtoint ptr %fif_other_bss.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %fif_other_bss.i, align 8
  %add31.i = add i32 %116, 1
  store i32 %add31.i, ptr %fif_other_bss.i, align 8
  br label %ieee80211_adjust_monitor_flags.exit

ieee80211_adjust_monitor_flags.exit:              ; preds = %if.then30.i, %do.body27.i.ieee80211_adjust_monitor_flags.exit_crit_edge
  tail call void @ieee80211_configure_filter(ptr noundef %3) #14
  tail call void @ieee80211_recalc_offload(ptr noundef %3)
  %mtx123 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 66
  tail call void @mutex_lock_nested(ptr noundef %mtx123, i32 noundef 0) #14
  %call.i = tail call fastcc i32 @__ieee80211_recalc_idle(ptr noundef %3, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i519 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i519, label %ieee80211_adjust_monitor_flags.exit.ieee80211_recalc_idle.exit_crit_edge, label %if.then.i520

ieee80211_adjust_monitor_flags.exit.ieee80211_recalc_idle.exit_crit_edge: ; preds = %ieee80211_adjust_monitor_flags.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_recalc_idle.exit

if.then.i520:                                     ; preds = %ieee80211_adjust_monitor_flags.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = tail call i32 @ieee80211_hw_config(ptr noundef %3, i32 noundef %call.i) #14
  br label %ieee80211_recalc_idle.exit

ieee80211_recalc_idle.exit:                       ; preds = %if.then.i520, %ieee80211_adjust_monitor_flags.exit.ieee80211_recalc_idle.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx123) #14
  tail call void @netif_carrier_on(ptr noundef %1) #14
  br label %sw.epilog204

sw.default:                                       ; preds = %if.end68
  br i1 %coming_up, label %if.then126, label %sw.default.if.end138_crit_edge

sw.default.if.end138_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end138

if.then126:                                       ; preds = %sw.default
  tail call void @ieee80211_del_virtual_monitor(ptr noundef %3)
  %call127 = tail call fastcc zeroext i1 @ieee80211_set_sdata_offload_flags(ptr noundef %add.ptr.i)
  %call128 = tail call i32 @drv_add_interface(ptr noundef %3, ptr noundef %add.ptr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end131, label %if.then126.err_stop_crit_edge

if.then126.err_stop_crit_edge:                    ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_stop

if.end131:                                        ; preds = %if.then126
  %117 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %local1, align 4
  %119 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %120)
  %cmp.i524 = icmp eq i32 %120, 4
  br i1 %cmp.i524, label %if.then.i527, label %if.end131.if.end5.i533_crit_edge

if.end131.if.end5.i533_crit_edge:                 ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i533

if.then.i527:                                     ; preds = %if.end131
  %bss2.i525 = getelementptr i8, ptr %wdev, i32 2316
  %121 = ptrtoint ptr %bss2.i525 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bss2.i525, align 4
  %tobool.not.i526 = icmp eq ptr %122, null
  br i1 %tobool.not.i526, label %if.then.i527.ieee80211_set_vif_encap_ops.exit545_crit_edge, label %if.end.i529

if.then.i527.ieee80211_set_vif_encap_ops.exit545_crit_edge: ; preds = %if.then.i527
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_set_vif_encap_ops.exit545

if.end.i529:                                      ; preds = %if.then.i527
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i528 = getelementptr i8, ptr %122, i32 -2552
  br label %if.end5.i533

if.end5.i533:                                     ; preds = %if.end.i529, %if.end131.if.end5.i533_crit_edge
  %bss.0.i530 = phi ptr [ %add.ptr.i528, %if.end.i529 ], [ %add.ptr.i, %if.end131.if.end5.i533_crit_edge ]
  %arrayidx.i.i.i531 = getelementptr %struct.ieee80211_hw, ptr %118, i32 0, i32 4, i32 1
  %123 = ptrtoint ptr %arrayidx.i.i.i531 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %arrayidx.i.i.i531, align 4
  %125 = and i32 %124, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.i.not.i532 = icmp eq i32 %125, 0
  br i1 %tobool.i.not.i532, label %if.end5.i533.ieee80211_set_vif_encap_ops.exit545_crit_edge, label %lor.lhs.false.i536

if.end5.i533.ieee80211_set_vif_encap_ops.exit545_crit_edge: ; preds = %if.end5.i533
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_set_vif_encap_ops.exit545

lor.lhs.false.i536:                               ; preds = %if.end5.i533
  %vif6.i534 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %bss.0.i530, i32 0, i32 59
  %126 = ptrtoint ptr %vif6.i534 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %vif6.i534, align 8
  %128 = and i32 %127, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %128)
  %switch.i.i535 = icmp eq i32 %128, 2
  br i1 %switch.i.i535, label %if.end10.i544, label %lor.lhs.false.i536.ieee80211_set_vif_encap_ops.exit545_crit_edge

lor.lhs.false.i536.ieee80211_set_vif_encap_ops.exit545_crit_edge: ; preds = %lor.lhs.false.i536
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_set_vif_encap_ops.exit545

if.end10.i544:                                    ; preds = %lor.lhs.false.i536
  call void @__sanitizer_cov_trace_pc() #16
  %offload_flags.i537 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %bss.0.i530, i32 0, i32 59, i32 11
  %129 = ptrtoint ptr %offload_flags.i537 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %offload_flags.i537, align 4
  %131 = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %132 = icmp ne i32 %131, 0
  %use_4addr.i538 = getelementptr i8, ptr %wdev, i32 128
  %133 = ptrtoint ptr %use_4addr.i538 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %use_4addr.i538, align 8, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool13.not.i539 = icmp eq i8 %134, 0
  %135 = and i32 %130, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %135)
  %136 = icmp eq i32 %135, 3
  %enabled.0.off0.i540 = select i1 %tobool13.not.i539, i1 %132, i1 %136
  %cond.i541 = select i1 %enabled.0.off0.i540, ptr @ieee80211_dataif_8023_ops, ptr @ieee80211_dataif_ops
  %dev.i542 = getelementptr i8, ptr %wdev, i32 1080
  %137 = ptrtoint ptr %dev.i542 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev.i542, align 8
  %netdev_ops.i543 = getelementptr inbounds %struct.net_device, ptr %138, i32 0, i32 16
  %139 = ptrtoint ptr %netdev_ops.i543 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %cond.i541, ptr %netdev_ops.i543, align 8
  br label %ieee80211_set_vif_encap_ops.exit545

ieee80211_set_vif_encap_ops.exit545:              ; preds = %if.end10.i544, %lor.lhs.false.i536.ieee80211_set_vif_encap_ops.exit545_crit_edge, %if.end5.i533.ieee80211_set_vif_encap_ops.exit545_crit_edge, %if.then.i527.ieee80211_set_vif_encap_ops.exit545_crit_edge
  %140 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %vif, align 8
  %p2p.i = getelementptr i8, ptr %wdev, i32 4878
  %142 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %p2p.i, align 2, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool.not.i546 = icmp eq i8 %143, 0
  br i1 %tobool.not.i546, label %ieee80211_set_vif_encap_ops.exit545.if.end.i.i547_crit_edge, label %if.then.i.i

ieee80211_set_vif_encap_ops.exit545.if.end.i.i547_crit_edge: ; preds = %ieee80211_set_vif_encap_ops.exit545
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i547

if.then.i.i:                                      ; preds = %ieee80211_set_vif_encap_ops.exit545
  %144 = zext i32 %141 to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %141, label %if.then.i.i.if.end.i.i547_crit_edge [
    i32 2, label %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge
    i32 3, label %sw.bb1.i.i
  ]

if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_vif_type_p2p.exit

if.then.i.i.if.end.i.i547_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i547

sw.bb1.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_vif_type_p2p.exit

if.end.i.i547:                                    ; preds = %if.then.i.i.if.end.i.i547_crit_edge, %ieee80211_set_vif_encap_ops.exit545.if.end.i.i547_crit_edge
  br label %ieee80211_vif_type_p2p.exit

ieee80211_vif_type_p2p.exit:                      ; preds = %if.end.i.i547, %sw.bb1.i.i, %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge
  %retval.0.i.i = phi i32 [ %141, %if.end.i.i547 ], [ 9, %sw.bb1.i.i ], [ 8, %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge ]
  %call134 = tail call fastcc i32 @ieee80211_check_queues(ptr noundef %add.ptr.i, i32 noundef %retval.0.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end138thread-pre-split, label %err_del_interface

if.end138thread-pre-split:                        ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #16
  %145 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %145)
  %.pr = load i32, ptr %vif, align 8
  br label %if.end138

if.end138:                                        ; preds = %if.end138thread-pre-split, %sw.default.if.end138_crit_edge
  %146 = phi i32 [ %.pr, %if.end138thread-pre-split ], [ %62, %sw.default.if.end138_crit_edge ]
  %147 = zext i32 %146 to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %146, label %if.end138.if.end153_crit_edge [
    i32 3, label %if.then142
    i32 1, label %if.then149
  ]

if.end138.if.end153_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end153

if.then142:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #16
  %fif_pspoll = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 20
  %148 = ptrtoint ptr %fif_pspoll to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %fif_pspoll, align 4
  %inc143 = add i32 %149, 1
  store i32 %inc143, ptr %fif_pspoll, align 4
  %fif_probe_req = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 21
  %150 = ptrtoint ptr %fif_probe_req to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %fif_probe_req, align 8
  %inc144 = add i32 %151, 1
  store i32 %inc144, ptr %fif_probe_req, align 8
  tail call void @ieee80211_configure_filter(ptr noundef %3) #14
  br label %if.end153

if.then149:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #16
  %fif_probe_req150 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 21
  %152 = ptrtoint ptr %fif_probe_req150 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %fif_probe_req150, align 8
  %inc151 = add i32 %153, 1
  store i32 %inc151, ptr %fif_probe_req150, align 8
  br label %if.end153

if.end153:                                        ; preds = %if.then149, %if.then142, %if.end138.if.end153_crit_edge
  %probe_req_reg = getelementptr i8, ptr %wdev, i32 4908
  %154 = ptrtoint ptr %probe_req_reg to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %probe_req_reg, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool155.not = icmp eq i8 %155, 0
  br i1 %tobool155.not, label %if.end153.if.end157_crit_edge, label %if.then156

if.end153.if.end157_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end157

if.then156:                                       ; preds = %if.end153
  tail call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 215) #14
  tail call fastcc void @trace_drv_config_iface_filter(ptr noundef %3, ptr noundef %add.ptr.i) #14
  %ops.i = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 8
  %156 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ops.i, align 4
  %config_iface_filter.i = getelementptr inbounds %struct.ieee80211_ops, ptr %157, i32 0, i32 15
  %158 = ptrtoint ptr %config_iface_filter.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %config_iface_filter.i, align 4
  %tobool.not.i548 = icmp eq ptr %159, null
  br i1 %tobool.not.i548, label %if.then156.drv_config_iface_filter.exit_crit_edge, label %if.then.i550

if.then156.drv_config_iface_filter.exit_crit_edge: ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #16
  br label %drv_config_iface_filter.exit

if.then.i550:                                     ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %159(ptr noundef %3, ptr noundef %vif, i32 noundef 256, i32 noundef 256) #14
  br label %drv_config_iface_filter.exit

drv_config_iface_filter.exit:                     ; preds = %if.then.i550, %if.then156.drv_config_iface_filter.exit_crit_edge
  tail call fastcc void @trace_drv_return_void(ptr noundef %3) #14
  br label %if.end157

if.end157:                                        ; preds = %drv_config_iface_filter.exit, %if.end153.if.end157_crit_edge
  %160 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %vif, align 8
  %162 = zext i32 %161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %161, label %if.then165 [
    i32 10, label %if.end157.if.end168_crit_edge
    i32 12, label %if.end157.if.end168_crit_edge571
  ]

if.end157.if.end168_crit_edge571:                 ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end168

if.end157.if.end168_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end168

if.then165:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #16
  %call166 = tail call i32 @ieee80211_reset_erp_info(ptr noundef %add.ptr.i) #14
  br label %if.end168

if.end168:                                        ; preds = %if.then165, %if.end157.if.end168_crit_edge, %if.end157.if.end168_crit_edge571
  %changed.0 = phi i32 [ %call166, %if.then165 ], [ 0, %if.end157.if.end168_crit_edge ], [ 0, %if.end157.if.end168_crit_edge571 ]
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %add.ptr.i, i32 noundef %changed.0) #14
  %163 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %vif, align 8
  %165 = zext i32 %164 to i64
  call void @__sanitizer_cov_trace_switch(i64 %165, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %164, label %do.end186 [
    i32 2, label %if.end168.sw.bb171_crit_edge
    i32 1, label %if.end168.sw.bb171_crit_edge572
    i32 3, label %if.end168.sw.bb171_crit_edge573
    i32 7, label %if.end168.sw.bb171_crit_edge574
    i32 11, label %if.end168.sw.bb171_crit_edge575
    i32 10, label %if.end168.sw.epilog200_crit_edge
    i32 12, label %if.end168.sw.epilog200_crit_edge576
  ]

if.end168.sw.epilog200_crit_edge576:              ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog200

if.end168.sw.epilog200_crit_edge:                 ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog200

if.end168.sw.bb171_crit_edge575:                  ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb171

if.end168.sw.bb171_crit_edge574:                  ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb171

if.end168.sw.bb171_crit_edge573:                  ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb171

if.end168.sw.bb171_crit_edge572:                  ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb171

if.end168.sw.bb171_crit_edge:                     ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb171

sw.bb171:                                         ; preds = %if.end168.sw.bb171_crit_edge, %if.end168.sw.bb171_crit_edge572, %if.end168.sw.bb171_crit_edge573, %if.end168.sw.bb171_crit_edge574, %if.end168.sw.bb171_crit_edge575
  tail call void @netif_carrier_off(ptr noundef %1) #14
  br label %sw.epilog200

do.end186:                                        ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1301, i32 noundef 9, ptr noundef null) #14
  br label %sw.epilog200

sw.epilog200:                                     ; preds = %do.end186, %sw.bb171, %if.end168.sw.epilog200_crit_edge, %if.end168.sw.epilog200_crit_edge576
  %166 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %167)
  %cmp203 = icmp ne i32 %167, 2
  tail call void @ieee80211_set_wmm_default(ptr noundef %add.ptr.i, i1 noundef zeroext true, i1 noundef zeroext %cmp203) #14
  br label %sw.epilog204

sw.epilog204:                                     ; preds = %sw.epilog200, %ieee80211_recalc_idle.exit, %if.then91, %if.else, %if.end10.i, %lor.lhs.false.i.sw.epilog204_crit_edge, %if.end5.i.sw.epilog204_crit_edge, %if.then.i.sw.epilog204_crit_edge
  %hw_reconf_flags.2 = phi i32 [ %hw_reconf_flags.0, %sw.epilog200 ], [ %hw_reconf_flags.0, %if.then91 ], [ %hw_reconf_flags.1, %ieee80211_recalc_idle.exit ], [ %hw_reconf_flags.0, %if.else ], [ %hw_reconf_flags.0, %if.then.i.sw.epilog204_crit_edge ], [ %hw_reconf_flags.0, %if.end5.i.sw.epilog204_crit_edge ], [ %hw_reconf_flags.0, %lor.lhs.false.i.sw.epilog204_crit_edge ], [ %hw_reconf_flags.0, %if.end10.i ]
  %state = getelementptr i8, ptr %wdev, i32 1092
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #14
  %168 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %vif, align 8
  %170 = zext i32 %169 to i64
  call void @__sanitizer_cov_trace_switch(i64 %170, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %169, label %sw.epilog204.sw.epilog257_crit_edge [
    i32 10, label %do.body208
    i32 6, label %sw.bb247
  ]

sw.epilog204.sw.epilog257_crit_edge:              ; preds = %sw.epilog204
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog257

do.body208:                                       ; preds = %sw.epilog204
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !148
  %p2p_sdata235 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 146
  %171 = ptrtoint ptr %p2p_sdata235 to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile ptr %add.ptr.i, ptr %p2p_sdata235, align 8
  br label %sw.epilog257

sw.bb247:                                         ; preds = %sw.epilog204
  %u248 = getelementptr i8, ptr %wdev, i32 2544
  %172 = ptrtoint ptr %u248 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %u248, align 8
  %and250 = and i32 %173, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250)
  %tobool251.not = icmp eq i32 %and250, 0
  br i1 %tobool251.not, label %if.end253, label %sw.bb247.sw.epilog257_crit_edge

sw.bb247.sw.epilog257_crit_edge:                  ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog257

if.end253:                                        ; preds = %sw.bb247
  %list255 = getelementptr i8, ptr %wdev, i32 2556
  %mon_list = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 63
  %prev.i = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 63, i32 1
  %174 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %prev.i, align 4
  %call.i.i552 = tail call zeroext i1 @__list_add_valid(ptr noundef %list255, ptr noundef %175, ptr noundef %mon_list) #14
  br i1 %call.i.i552, label %if.end.i.i553, label %if.end253.sw.epilog257_crit_edge

if.end253.sw.epilog257_crit_edge:                 ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog257

if.end.i.i553:                                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #16
  %176 = ptrtoint ptr %list255 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %mon_list, ptr %list255, align 4
  %prev2.i.i = getelementptr i8, ptr %wdev, i32 2560
  %177 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %175, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !149
  %178 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile ptr %list255, ptr %175, align 4
  %179 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %list255, ptr %prev.i, align 4
  br label %sw.epilog257

sw.epilog257:                                     ; preds = %if.end.i.i553, %if.end253.sw.epilog257_crit_edge, %sw.bb247.sw.epilog257_crit_edge, %do.body208, %sw.epilog204.sw.epilog257_crit_edge
  %flags258 = getelementptr i8, ptr %wdev, i32 1088
  %180 = ptrtoint ptr %flags258 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %flags258, align 8
  %and259 = and i32 %181, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and259)
  %tobool260.not = icmp eq i32 %and259, 0
  br i1 %tobool260.not, label %sw.epilog257.if.end262_crit_edge, label %if.then261

sw.epilog257.if.end262_crit_edge:                 ; preds = %sw.epilog257
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end262

if.then261:                                       ; preds = %sw.epilog257
  call void @__sanitizer_cov_trace_pc() #16
  %iff_allmultis = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 57
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %iff_allmultis, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %iff_allmultis, i32 1, i32 3, i32 1) #14
  %182 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %iff_allmultis, ptr %iff_allmultis, i32 1, ptr elementtype(i32) %iff_allmultis) #14, !srcloc !150
  br label %if.end262

if.end262:                                        ; preds = %if.then261, %sw.epilog257.if.end262_crit_edge
  br i1 %coming_up, label %if.then264, label %if.end262.if.end267_crit_edge

if.end262.if.end267_crit_edge:                    ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end267

if.then264:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #16
  %183 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %open_count, align 8
  %inc266 = add i32 %184, 1
  store i32 %inc266, ptr %open_count, align 8
  br label %if.end267

if.end267:                                        ; preds = %if.then264, %if.end262.if.end267_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hw_reconf_flags.2)
  %tobool268.not = icmp eq i32 %hw_reconf_flags.2, 0
  br i1 %tobool268.not, label %if.end267.if.end271_crit_edge, label %if.then269

if.end267.if.end271_crit_edge:                    ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end271

if.then269:                                       ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #16
  %call270 = tail call i32 @ieee80211_hw_config(ptr noundef %3, i32 noundef %hw_reconf_flags.2) #14
  br label %if.end271

if.end271:                                        ; preds = %if.then269, %if.end267.if.end271_crit_edge
  tail call void @ieee80211_recalc_ps(ptr noundef %3) #14
  %185 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %vif, align 8
  %187 = zext i32 %186 to i64
  call void @__sanitizer_cov_trace_switch(i64 %187, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %186, label %lor.lhs.false278 [
    i32 6, label %if.end271.if.then280_crit_edge
    i32 4, label %if.end271.if.then280_crit_edge577
  ]

if.end271.if.then280_crit_edge577:                ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then280

if.end271.if.then280_crit_edge:                   ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then280

lor.lhs.false278:                                 ; preds = %if.end271
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 8
  %188 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %ops, align 4
  %wake_tx_queue = getelementptr inbounds %struct.ieee80211_ops, ptr %189, i32 0, i32 92
  %190 = ptrtoint ptr %wake_tx_queue to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %wake_tx_queue, align 4
  %tobool279.not = icmp eq ptr %191, null
  br i1 %tobool279.not, label %if.else284, label %lor.lhs.false278.if.then280_crit_edge

lor.lhs.false278.if.then280_crit_edge:            ; preds = %lor.lhs.false278
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then280

if.then280:                                       ; preds = %lor.lhs.false278.if.then280_crit_edge, %if.end271.if.then280_crit_edge, %if.end271.if.then280_crit_edge577
  br i1 %tobool57.not, label %if.then280.cleanup361_crit_edge, label %if.then282

if.then280.cleanup361_crit_edge:                  ; preds = %if.then280
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup361

if.then282:                                       ; preds = %if.then280
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 104
  %192 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %cmp4.not.i = icmp eq i32 %193, 0
  br i1 %cmp4.not.i, label %if.then282.cleanup361_crit_edge, label %for.body.lr.ph.i

if.then282.cleanup361_crit_edge:                  ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup361

for.body.lr.ph.i:                                 ; preds = %if.then282
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %194 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %195, i32 %i.05.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %inc.i = add nuw i32 %i.05.i, 1
  %196 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i554 = icmp ult i32 %inc.i, %197
  br i1 %cmp.i554, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup361_crit_edge

for.body.i.cleanup361_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup361

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.else284:                                       ; preds = %lor.lhs.false278
  br i1 %tobool57.not, label %if.else284.cleanup361_crit_edge, label %if.then286

if.else284.cleanup361_crit_edge:                  ; preds = %if.else284
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup361

if.then286:                                       ; preds = %if.else284
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 11
  %198 = ptrtoint ptr %queues to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %queues, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %199)
  %cmp289 = icmp ult i16 %199, 4
  %spec.select = select i1 %cmp289, i32 1, i32 4
  %queue_stop_reason_lock = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 12
  %call299 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_stop_reason_lock) #14
  %cab_queue305 = getelementptr i8, ptr %wdev, i32 4881
  %200 = ptrtoint ptr %cab_queue305 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %cab_queue305, align 1
  %conv306 = zext i8 %201 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %201)
  %cmp307 = icmp eq i8 %201, -1
  br i1 %cmp307, label %if.then286.if.then321_crit_edge, label %lor.lhs.false309

if.then286.if.then321_crit_edge:                  ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then321

lor.lhs.false309:                                 ; preds = %if.then286
  %arrayidx = getelementptr %struct.ieee80211_local, ptr %3, i32 0, i32 10, i32 %conv306
  %202 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %cmp312 = icmp eq i32 %203, 0
  br i1 %cmp312, label %land.lhs.true314, label %lor.lhs.false309.if.end341_crit_edge

lor.lhs.false309.if.end341_crit_edge:             ; preds = %lor.lhs.false309
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end341

land.lhs.true314:                                 ; preds = %lor.lhs.false309
  %arrayidx318 = getelementptr %struct.ieee80211_local, ptr %3, i32 0, i32 53, i32 %conv306
  %204 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %arrayidx318, align 4
  %cmp.i555.not = icmp eq ptr %205, %arrayidx318
  br i1 %cmp.i555.not, label %land.lhs.true314.if.then321_crit_edge, label %land.lhs.true314.if.end341_crit_edge

land.lhs.true314.if.end341_crit_edge:             ; preds = %land.lhs.true314
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end341

land.lhs.true314.if.then321_crit_edge:            ; preds = %land.lhs.true314
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then321

if.then321:                                       ; preds = %land.lhs.true314.if.then321_crit_edge, %if.then286.if.then321_crit_edge
  %_tx.i.i560 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  br label %for.body

for.body:                                         ; preds = %if.end339.for.body_crit_edge, %if.then321
  %ac.0565 = phi i32 [ 0, %if.then321 ], [ %inc340, %if.end339.for.body_crit_edge ]
  %arrayidx326 = getelementptr %struct.ieee80211_sub_if_data, ptr %add.ptr.i, i32 0, i32 59, i32 7, i32 %ac.0565
  %206 = ptrtoint ptr %arrayidx326 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx326, align 1
  %conv327 = zext i8 %207 to i32
  %arrayidx329 = getelementptr %struct.ieee80211_local, ptr %3, i32 0, i32 10, i32 %conv327
  %208 = ptrtoint ptr %arrayidx329 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx329, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %cmp330 = icmp eq i32 %209, 0
  br i1 %cmp330, label %land.lhs.true332, label %for.body.if.end339_crit_edge

for.body.if.end339_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end339

land.lhs.true332:                                 ; preds = %for.body
  %arrayidx334 = getelementptr %struct.ieee80211_local, ptr %3, i32 0, i32 53, i32 %conv327
  %210 = ptrtoint ptr %arrayidx334 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %arrayidx334, align 4
  %cmp.i557.not = icmp eq ptr %211, %arrayidx334
  br i1 %cmp.i557.not, label %if.then337, label %land.lhs.true332.if.end339_crit_edge

land.lhs.true332.if.end339_crit_edge:             ; preds = %land.lhs.true332
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end339

if.then337:                                       ; preds = %land.lhs.true332
  call void @__sanitizer_cov_trace_pc() #16
  %212 = ptrtoint ptr %_tx.i.i560 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %_tx.i.i560, align 128
  %state.i.i561 = getelementptr %struct.netdev_queue, ptr %213, i32 %ac.0565, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i561) #14
  br label %if.end339

if.end339:                                        ; preds = %if.then337, %land.lhs.true332.if.end339_crit_edge, %for.body.if.end339_crit_edge
  %inc340 = add nuw nsw i32 %ac.0565, 1
  %exitcond.not = icmp eq i32 %inc340, %spec.select
  br i1 %exitcond.not, label %if.end339.if.end341_crit_edge, label %if.end339.for.body_crit_edge

if.end339.for.body_crit_edge:                     ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end339.if.end341_crit_edge:                    ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end341

if.end341:                                        ; preds = %if.end339.if.end341_crit_edge, %land.lhs.true314.if.end341_crit_edge, %lor.lhs.false309.if.end341_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_stop_reason_lock, i32 noundef %call299) #14
  br label %cleanup361

err_del_interface:                                ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @drv_remove_interface(ptr noundef %3, ptr noundef %add.ptr.i) #14
  br label %err_stop

err_stop:                                         ; preds = %err_del_interface, %if.then126.err_stop_crit_edge, %if.then107.err_stop_crit_edge, %if.then97.err_stop_crit_edge, %is_valid_ether_addr.exit.err_stop_crit_edge, %if.then59.err_stop_crit_edge
  %res.0 = phi i32 [ %call128, %if.then126.err_stop_crit_edge ], [ %call134, %err_del_interface ], [ %call98, %if.then97.err_stop_crit_edge ], [ %call108, %if.then107.err_stop_crit_edge ], [ -99, %is_valid_ether_addr.exit.err_stop_crit_edge ], [ -99, %if.then59.err_stop_crit_edge ]
  %214 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %open_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool346.not = icmp eq i32 %215, 0
  br i1 %tobool346.not, label %if.then347, label %err_stop.err_del_bss_crit_edge

err_stop.err_del_bss_crit_edge:                   ; preds = %err_stop
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_del_bss

if.then347:                                       ; preds = %err_stop
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @drv_stop(ptr noundef %3) #14
  br label %err_del_bss

err_del_bss:                                      ; preds = %if.then347, %err_stop.err_del_bss_crit_edge, %if.then51.err_del_bss_crit_edge
  %res.1 = phi i32 [ %call52, %if.then51.err_del_bss_crit_edge ], [ %res.0, %err_stop.err_del_bss_crit_edge ], [ %res.0, %if.then347 ]
  %bss349 = getelementptr i8, ptr %wdev, i32 2316
  %216 = ptrtoint ptr %bss349 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr null, ptr %bss349, align 4
  %217 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %218)
  %cmp352 = icmp eq i32 %218, 4
  br i1 %cmp352, label %if.then354, label %err_del_bss.if.end359_crit_edge

err_del_bss.if.end359_crit_edge:                  ; preds = %err_del_bss
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end359

if.then354:                                       ; preds = %err_del_bss
  %mtx355 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 66
  tail call void @mutex_lock_nested(ptr noundef %mtx355, i32 noundef 0) #14
  %u356 = getelementptr i8, ptr %wdev, i32 2544
  %call.i.i562 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %u356) #14
  br i1 %call.i.i562, label %if.end.i.i563, label %if.then354.list_del.exit_crit_edge

if.then354.list_del.exit_crit_edge:               ; preds = %if.then354
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i563:                                    ; preds = %if.then354
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr i8, ptr %wdev, i32 2548
  %219 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %prev.i.i, align 4
  %221 = ptrtoint ptr %u356 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %u356, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %220, ptr %prev1.i.i.i, align 4
  %224 = ptrtoint ptr %220 to i32
  call void @__asan_store4_noabort(i32 %224)
  store volatile ptr %222, ptr %220, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i563, %if.then354.list_del.exit_crit_edge
  %225 = ptrtoint ptr %u356 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr inttoptr (i32 256 to ptr), ptr %u356, align 4
  %prev.i564 = getelementptr i8, ptr %wdev, i32 2548
  %226 = ptrtoint ptr %prev.i564 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i564, align 4
  tail call void @mutex_unlock(ptr noundef %mtx355) #14
  br label %if.end359

if.end359:                                        ; preds = %list_del.exit, %err_del_bss.if.end359_crit_edge
  %state360 = getelementptr i8, ptr %wdev, i32 1092
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state360) #14
  br label %cleanup361

cleanup361:                                       ; preds = %if.end359, %if.end341, %if.else284.cleanup361_crit_edge, %for.body.i.cleanup361_crit_edge, %if.then282.cleanup361_crit_edge, %if.then280.cleanup361_crit_edge, %sw.bb.cleanup361_crit_edge
  %retval.1 = phi i32 [ %res.1, %if.end359 ], [ 0, %if.else284.cleanup361_crit_edge ], [ 0, %if.end341 ], [ 0, %if.then280.cleanup361_crit_edge ], [ -67, %sw.bb.cleanup361_crit_edge ], [ 0, %if.then282.cleanup361_crit_edge ], [ 0, %for.body.i.cleanup361_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drv_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_led_radio(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_mod_tpt_led_trig(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_vif_vlan_copy_chanctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_configure_filter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ieee80211_set_sdata_offload_flags(ptr noundef %sdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %offload_flags = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 11
  %2 = ptrtoint ptr %offload_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offload_flags, align 4
  %arrayidx.i.i = getelementptr %struct.ieee80211_hw, ptr %1, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i.i, align 4
  %6 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %7 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vif, align 8
  %9 = and i32 %8, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %switch.i = icmp eq i32 %9, 2
  br i1 %switch.i, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %or = or i32 %3, 1
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i.i, align 4
  %12 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i65.not = icmp eq i32 %12, 0
  br i1 %tobool.i65.not, label %land.lhs.true6, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true6:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wiphy, align 8
  %frag_threshold = getelementptr inbounds %struct.wiphy, ptr %14, i32 0, i32 35
  %15 = ptrtoint ptr %frag_threshold to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frag_threshold, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.not = icmp eq i32 %16, -1
  %and = and i32 %3, -2
  %spec.select = select i1 %cmp.not, i32 %or, i32 %and
  br label %if.end

if.end:                                           ; preds = %land.lhs.true6, %if.then.if.end_crit_edge
  %flags.0 = phi i32 [ %or, %if.then.if.end_crit_edge ], [ %spec.select, %land.lhs.true6 ]
  %monitors = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 14
  %17 = ptrtoint ptr %monitors to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %monitors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  %and10 = and i32 %flags.0, -2
  %spec.select61 = select i1 %tobool.not, i32 %flags.0, i32 %and10
  br label %if.end13

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %and12 = and i32 %3, -2
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end
  %flags.1 = phi i32 [ %and12, %if.else ], [ %spec.select61, %if.end ]
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %arrayidx.i.i, align 4
  %21 = and i32 %20, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i68.not = icmp eq i32 %21, 0
  br i1 %tobool.i68.not, label %if.end13.if.else30_crit_edge, label %land.lhs.true16

if.end13.if.else30_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else30

land.lhs.true16:                                  ; preds = %if.end13
  %22 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vif, align 8
  %24 = and i32 %23, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %switch.i69 = icmp eq i32 %24, 2
  br i1 %switch.i69, label %if.then20, label %land.lhs.true16.if.else30_crit_edge

land.lhs.true16.if.else30_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else30

if.then20:                                        ; preds = %land.lhs.true16
  %or21 = or i32 %flags.1, 4
  %monitors22 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 14
  %25 = ptrtoint ptr %monitors22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %monitors22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool23.not = icmp eq i32 %26, 0
  br i1 %tobool23.not, label %if.then20.if.end32_crit_edge, label %land.lhs.true24

if.then20.if.end32_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

land.lhs.true24:                                  ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %arrayidx.i.i, align 4
  %29 = and i32 %28, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i72.not = icmp eq i32 %29, 0
  %and28 = and i32 %flags.1, -5
  %spec.select62 = select i1 %tobool.i72.not, i32 %and28, i32 %or21
  br label %if.end32

if.else30:                                        ; preds = %land.lhs.true16.if.else30_crit_edge, %if.end13.if.else30_crit_edge
  %and31 = and i32 %flags.1, -5
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %land.lhs.true24, %if.then20.if.end32_crit_edge
  %flags.2 = phi i32 [ %or21, %if.then20.if.end32_crit_edge ], [ %and31, %if.else30 ], [ %spec.select62, %land.lhs.true24 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %flags.2)
  %cmp35 = icmp eq i32 %3, %flags.2
  br i1 %cmp35, label %if.end32.cleanup_crit_edge, label %if.end37

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %offload_flags to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %flags.2, ptr %offload_flags, align 4
  tail call void @ieee80211_check_fast_rx_iface(ptr noundef %sdata) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end32.cleanup_crit_edge
  %31 = xor i1 %cmp35, true
  ret i1 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_reset_erp_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_set_wmm_default(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_ps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drv_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_if_change_type(ptr noundef %sdata, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b61 = load i1, ptr @ieee80211_if_change_type.__already_done, align 1
  br i1 %.b61, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !145

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ieee80211_if_change_type.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1819, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 1819) #14
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  %p2p.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 3
  %2 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %p2p.i, align 2, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end29.if.end.i.i_crit_edge, label %if.then.i.i

if.end29.if.end.i.i_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end29
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %1, label %if.then.i.i.if.end.i.i_crit_edge [
    i32 2, label %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge
    i32 3, label %sw.bb1.i.i
  ]

if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_vif_type_p2p.exit

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

sw.bb1.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_vif_type_p2p.exit

if.end.i.i:                                       ; preds = %if.then.i.i.if.end.i.i_crit_edge, %if.end29.if.end.i.i_crit_edge
  br label %ieee80211_vif_type_p2p.exit

ieee80211_vif_type_p2p.exit:                      ; preds = %if.end.i.i, %sw.bb1.i.i, %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge
  %retval.0.i.i = phi i32 [ %1, %if.end.i.i ], [ 9, %sw.bb1.i.i ], [ 8, %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %type)
  %cmp = icmp eq i32 %retval.0.i.i, %type
  br i1 %cmp, label %ieee80211_vif_type_p2p.exit.cleanup_crit_edge, label %if.end39

ieee80211_vif_type_p2p.exit.cleanup_crit_edge:    ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end39:                                         ; preds = %ieee80211_vif_type_p2p.exit
  %state.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 9
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %if.end39
  %local1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %7 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %local1.i, align 4
  %call.i = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i62 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i62, label %land.rhs.i, label %if.then41.if.end30.i_crit_edge

if.then41.if.end30.i_crit_edge:                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.i

land.rhs.i:                                       ; preds = %if.then41
  %.b129.i = load i1, ptr @ieee80211_runtime_change_iftype.__already_done, align 1
  br i1 %.b129.i, label %land.rhs.i.if.end30.i_crit_edge, label %if.then.i, !prof !145

land.rhs.i.if.end30.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ieee80211_runtime_change_iftype.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1733, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 1733) #14
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end30.i_crit_edge, %if.then41.if.end30.i_crit_edge
  %ops.i = getelementptr inbounds %struct.ieee80211_local, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %change_interface.i = getelementptr inbounds %struct.ieee80211_ops, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %change_interface.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %change_interface.i, align 4
  %tobool38.not.i = icmp eq ptr %12, null
  br i1 %tobool38.not.i, label %if.end30.i.cleanup_crit_edge, label %if.end40.i

if.end30.i.cleanup_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end40.i:                                       ; preds = %if.end30.i
  %13 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vif, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %14, label %if.end40.i.cleanup_crit_edge [
    i32 3, label %sw.bb.i
    i32 2, label %if.end40.i.sw.epilog.i_crit_edge
    i32 1, label %if.end40.i.sw.epilog.i_crit_edge69
    i32 11, label %if.end40.i.sw.epilog.i_crit_edge70
  ]

if.end40.i.sw.epilog.i_crit_edge70:               ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end40.i.sw.epilog.i_crit_edge69:               ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end40.i.sw.epilog.i_crit_edge:                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end40.i.cleanup_crit_edge:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end40.i
  %vlans.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 0, i32 4
  %16 = ptrtoint ptr %vlans.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %vlans.i, align 4
  %cmp.i.not.i = icmp eq ptr %17, %vlans.i
  br i1 %cmp.i.not.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i.sw.epilog.i_crit_edge, %if.end40.i.sw.epilog.i_crit_edge, %if.end40.i.sw.epilog.i_crit_edge69, %if.end40.i.sw.epilog.i_crit_edge70
  %18 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %type, label %sw.epilog.i.cleanup_crit_edge [
    i32 3, label %sw.epilog.i.sw.epilog51.i_crit_edge
    i32 2, label %sw.epilog.i.sw.epilog51.i_crit_edge71
    i32 1, label %sw.epilog.i.sw.epilog51.i_crit_edge72
    i32 11, label %sw.epilog.i.sw.epilog51.i_crit_edge73
    i32 8, label %sw.bb48.i
    i32 9, label %sw.bb49.i
  ]

sw.epilog.i.sw.epilog51.i_crit_edge73:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog51.i

sw.epilog.i.sw.epilog51.i_crit_edge72:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog51.i

sw.epilog.i.sw.epilog51.i_crit_edge71:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog51.i

sw.epilog.i.sw.epilog51.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog51.i

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb48.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog51.i

sw.bb49.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog51.i

sw.epilog51.i:                                    ; preds = %sw.bb49.i, %sw.bb48.i, %sw.epilog.i.sw.epilog51.i_crit_edge, %sw.epilog.i.sw.epilog51.i_crit_edge71, %sw.epilog.i.sw.epilog51.i_crit_edge72, %sw.epilog.i.sw.epilog51.i_crit_edge73
  %internal_type.0.i = phi i32 [ 3, %sw.bb49.i ], [ 2, %sw.bb48.i ], [ %type, %sw.epilog.i.sw.epilog51.i_crit_edge ], [ %type, %sw.epilog.i.sw.epilog51.i_crit_edge71 ], [ %type, %sw.epilog.i.sw.epilog51.i_crit_edge72 ], [ %type, %sw.epilog.i.sw.epilog51.i_crit_edge73 ]
  %p2p.0.off0.i = phi i1 [ true, %sw.bb49.i ], [ true, %sw.bb48.i ], [ false, %sw.epilog.i.sw.epilog51.i_crit_edge ], [ false, %sw.epilog.i.sw.epilog51.i_crit_edge71 ], [ false, %sw.epilog.i.sw.epilog51.i_crit_edge72 ], [ false, %sw.epilog.i.sw.epilog51.i_crit_edge73 ]
  %call52.i = tail call fastcc i32 @ieee80211_check_concurrent_iface(ptr noundef %sdata, i32 noundef %internal_type.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.end55.i, label %sw.epilog51.i.cleanup_crit_edge

sw.epilog51.i.cleanup_crit_edge:                  ; preds = %sw.epilog51.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end55.i:                                       ; preds = %sw.epilog51.i
  tail call void @ieee80211_stop_vif_queues(ptr noundef %8, ptr noundef %sdata, i32 noundef 10) #14
  tail call void @synchronize_net() #14
  tail call fastcc void @ieee80211_do_stop(ptr noundef %sdata, i1 noundef zeroext false) #14
  tail call void @ieee80211_free_keys(ptr noundef %sdata, i1 noundef zeroext false) #14
  tail call void @ieee80211_debugfs_remove_netdev(ptr noundef %sdata) #14
  %frags.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 11
  tail call void @ieee80211_destroy_frag_cache(ptr noundef %frags.i.i) #14
  %19 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %20)
  %cmp.i.i.i = icmp eq i32 %20, 7
  br i1 %cmp.i.i.i, label %if.then.i.i63, label %if.end55.i.ieee80211_teardown_sdata.exit.i_crit_edge

if.end55.i.ieee80211_teardown_sdata.exit.i_crit_edge: ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_teardown_sdata.exit.i

if.then.i.i63:                                    ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_mesh_teardown_sdata(ptr noundef %sdata) #14
  br label %ieee80211_teardown_sdata.exit.i

ieee80211_teardown_sdata.exit.i:                  ; preds = %if.then.i.i63, %if.end55.i.ieee80211_teardown_sdata.exit.i_crit_edge
  %call56.i = tail call fastcc zeroext i1 @ieee80211_set_sdata_offload_flags(ptr noundef %sdata) #14
  %call58.i = tail call i32 @drv_change_interface(ptr noundef %8, ptr noundef %sdata, i32 noundef %internal_type.0.i, i1 noundef zeroext %p2p.0.off0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %ieee80211_teardown_sdata.exit.i.if.end63.i_crit_edge, label %if.then60.i

ieee80211_teardown_sdata.exit.i.if.end63.i_crit_edge: ; preds = %ieee80211_teardown_sdata.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63.i

if.then60.i:                                      ; preds = %ieee80211_teardown_sdata.exit.i
  %21 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vif, align 8
  %23 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %p2p.i, align 2, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i.i, label %if.then60.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.then60.i.if.end.i.i.i_crit_edge:               ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then60.i
  %25 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %22, label %if.then.i.i.i.if.end.i.i.i_crit_edge [
    i32 2, label %if.then.i.i.i.if.end63.i_crit_edge
    i32 3, label %sw.bb1.i.i.i
  ]

if.then.i.i.i.if.end63.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63.i

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

sw.bb1.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.if.end.i.i.i_crit_edge, %if.then60.i.if.end.i.i.i_crit_edge
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.end.i.i.i, %sw.bb1.i.i.i, %if.then.i.i.i.if.end63.i_crit_edge, %ieee80211_teardown_sdata.exit.i.if.end63.i_crit_edge
  %type.addr.0.i = phi i32 [ %type, %ieee80211_teardown_sdata.exit.i.if.end63.i_crit_edge ], [ %22, %if.end.i.i.i ], [ 9, %sw.bb1.i.i.i ], [ 8, %if.then.i.i.i.if.end63.i_crit_edge ]
  %call64.i = tail call fastcc i32 @ieee80211_check_queues(ptr noundef %sdata, i32 noundef %type.addr.0.i) #14
  tail call fastcc void @ieee80211_setup_sdata(ptr noundef %sdata, i32 noundef %type.addr.0.i) #14
  %26 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %local1.i, align 4
  %28 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %cmp.i131.i = icmp eq i32 %29, 4
  br i1 %cmp.i131.i, label %if.then.i133.i, label %if.end63.i.if.end5.i.i_crit_edge

if.end63.i.if.end5.i.i_crit_edge:                 ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i.i

if.then.i133.i:                                   ; preds = %if.end63.i
  %bss2.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 49
  %30 = ptrtoint ptr %bss2.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bss2.i.i, align 4
  %tobool.not.i132.i = icmp eq ptr %31, null
  br i1 %tobool.not.i132.i, label %if.then.i133.i.ieee80211_set_vif_encap_ops.exit.i_crit_edge, label %if.end.i.i64

if.then.i133.i.ieee80211_set_vif_encap_ops.exit.i_crit_edge: ; preds = %if.then.i133.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_set_vif_encap_ops.exit.i

if.end.i.i64:                                     ; preds = %if.then.i133.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 -2552
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i64, %if.end63.i.if.end5.i.i_crit_edge
  %bss.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i64 ], [ %sdata, %if.end63.i.if.end5.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr %struct.ieee80211_hw, ptr %27, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %34 = and i32 %33, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool.i.not.i.i, label %if.end5.i.i.ieee80211_set_vif_encap_ops.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end5.i.i.ieee80211_set_vif_encap_ops.exit.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_set_vif_encap_ops.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end5.i.i
  %vif6.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %bss.0.i.i, i32 0, i32 59
  %35 = ptrtoint ptr %vif6.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vif6.i.i, align 8
  %37 = and i32 %36, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %switch.i.i.i = icmp eq i32 %37, 2
  br i1 %switch.i.i.i, label %if.end10.i.i, label %lor.lhs.false.i.i.ieee80211_set_vif_encap_ops.exit.i_crit_edge

lor.lhs.false.i.i.ieee80211_set_vif_encap_ops.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_set_vif_encap_ops.exit.i

if.end10.i.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %offload_flags.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %bss.0.i.i, i32 0, i32 59, i32 11
  %38 = ptrtoint ptr %offload_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offload_flags.i.i, align 4
  %40 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %41 = icmp ne i32 %40, 0
  %use_4addr.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 8
  %42 = ptrtoint ptr %use_4addr.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %use_4addr.i.i, align 8, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool13.not.i.i = icmp eq i8 %43, 0
  %44 = and i32 %39, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %45 = icmp eq i32 %44, 3
  %enabled.0.off0.i.i = select i1 %tobool13.not.i.i, i1 %41, i1 %45
  %cond.i.i = select i1 %enabled.0.off0.i.i, ptr @ieee80211_dataif_8023_ops, ptr @ieee80211_dataif_ops
  %dev.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %46 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i.i, align 8
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %cond.i.i, ptr %netdev_ops.i.i, align 8
  br label %ieee80211_set_vif_encap_ops.exit.i

ieee80211_set_vif_encap_ops.exit.i:               ; preds = %if.end10.i.i, %lor.lhs.false.i.i.ieee80211_set_vif_encap_ops.exit.i_crit_edge, %if.end5.i.i.ieee80211_set_vif_encap_ops.exit.i_crit_edge, %if.then.i133.i.ieee80211_set_vif_encap_ops.exit.i_crit_edge
  %wdev.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1
  %call65.i = tail call i32 @ieee80211_do_open(ptr noundef %wdev.i, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool67.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool67.not.i, label %ieee80211_set_vif_encap_ops.exit.i.ieee80211_runtime_change_iftype.exit_crit_edge, label %do.end83.i, !prof !145

ieee80211_set_vif_encap_ops.exit.i.ieee80211_runtime_change_iftype.exit_crit_edge: ; preds = %ieee80211_set_vif_encap_ops.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_runtime_change_iftype.exit

do.end83.i:                                       ; preds = %ieee80211_set_vif_encap_ops.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1807, i32 noundef 9, ptr noundef nonnull @.str.28, i32 noundef %call65.i) #14
  br label %ieee80211_runtime_change_iftype.exit

ieee80211_runtime_change_iftype.exit:             ; preds = %do.end83.i, %ieee80211_set_vif_encap_ops.exit.i.ieee80211_runtime_change_iftype.exit_crit_edge
  tail call void @ieee80211_wake_vif_queues(ptr noundef %8, ptr noundef %sdata, i32 noundef 10) #14
  br i1 %tobool59.not.i, label %ieee80211_runtime_change_iftype.exit.if.end46_crit_edge, label %ieee80211_runtime_change_iftype.exit.cleanup_crit_edge

ieee80211_runtime_change_iftype.exit.cleanup_crit_edge: ; preds = %ieee80211_runtime_change_iftype.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

ieee80211_runtime_change_iftype.exit.if.end46_crit_edge: ; preds = %ieee80211_runtime_change_iftype.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.else:                                          ; preds = %if.end39
  tail call void @ieee80211_free_keys(ptr noundef %sdata, i1 noundef zeroext false) #14
  tail call void @ieee80211_debugfs_remove_netdev(ptr noundef %sdata) #14
  %frags.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 11
  tail call void @ieee80211_destroy_frag_cache(ptr noundef %frags.i) #14
  %49 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %50)
  %cmp.i.i = icmp eq i32 %50, 7
  br i1 %cmp.i.i, label %if.then.i66, label %if.else.ieee80211_teardown_sdata.exit_crit_edge

if.else.ieee80211_teardown_sdata.exit_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_teardown_sdata.exit

if.then.i66:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_mesh_teardown_sdata(ptr noundef %sdata) #14
  br label %ieee80211_teardown_sdata.exit

ieee80211_teardown_sdata.exit:                    ; preds = %if.then.i66, %if.else.ieee80211_teardown_sdata.exit_crit_edge
  tail call fastcc void @ieee80211_setup_sdata(ptr noundef %sdata, i32 noundef %type)
  br label %if.end46

if.end46:                                         ; preds = %ieee80211_teardown_sdata.exit, %ieee80211_runtime_change_iftype.exit.if.end46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp47 = icmp eq i32 %type, 2
  br i1 %cmp47, label %if.then48, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  %use_4addr = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 38
  %51 = ptrtoint ptr %use_4addr to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %use_4addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.end46.cleanup_crit_edge, %ieee80211_runtime_change_iftype.exit.cleanup_crit_edge, %sw.epilog51.i.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end40.i.cleanup_crit_edge, %if.end30.i.cleanup_crit_edge, %ieee80211_vif_type_p2p.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ieee80211_vif_type_p2p.exit.cleanup_crit_edge ], [ %call58.i, %ieee80211_runtime_change_iftype.exit.cleanup_crit_edge ], [ 0, %if.then48 ], [ 0, %if.end46.cleanup_crit_edge ], [ %call52.i, %sw.epilog51.i.cleanup_crit_edge ], [ -16, %sw.epilog.i.cleanup_crit_edge ], [ -16, %if.end40.i.cleanup_crit_edge ], [ -16, %sw.bb.i.cleanup_crit_edge ], [ -16, %if.end30.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_setup_sdata(ptr noundef %sdata, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %0 = call ptr @memset(ptr %u, i32 0, i32 1504)
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %1 = ptrtoint ptr %vif to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %type, ptr %vif, align 8
  %p2p = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 3
  %2 = ptrtoint ptr %p2p to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %p2p, align 2
  %iftype = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %type, ptr %iftype, align 4
  %control_port_protocol = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 20
  %4 = ptrtoint ptr %control_port_protocol to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -30578, ptr %control_port_protocol, align 2
  %control_port_no_encrypt = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 21
  %5 = ptrtoint ptr %control_port_no_encrypt to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %control_port_no_encrypt, align 4
  %control_port_over_nl80211 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 23
  %6 = ptrtoint ptr %control_port_over_nl80211 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %control_port_over_nl80211, align 2
  %control_port_no_preauth = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 22
  %7 = ptrtoint ptr %control_port_no_preauth to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %control_port_no_preauth, align 1
  %encrypt_headroom = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 24
  %8 = ptrtoint ptr %encrypt_headroom to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %encrypt_headroom, align 8
  %bss_conf = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1
  %idle = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 37
  %9 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %idle, align 1
  %txpower = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 42
  %10 = ptrtoint ptr %txpower to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -2147483648, ptr %txpower, align 8
  %noack_map = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 12
  %11 = ptrtoint ptr %noack_map to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %noack_map, align 4
  %dev = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ieee80211_dataif_ops, ptr %netdev_ops, align 8
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %type8 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 32
  %17 = ptrtoint ptr %type8 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %type8, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %skb_queue = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 41
  %lock.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 41, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #14
  %18 = ptrtoint ptr %skb_queue to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %skb_queue, ptr %skb_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 41, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %skb_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 41, i32 1
  %20 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %qlen.i.i, align 4
  %status_queue = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 42
  %lock.i203 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 42, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i203, ptr noundef nonnull @.str.26, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #14
  %21 = ptrtoint ptr %status_queue to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %status_queue, ptr %status_queue, align 4
  %prev.i.i204 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 42, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i204 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %status_queue, ptr %prev.i.i204, align 4
  %qlen.i.i205 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 42, i32 1
  %23 = ptrtoint ptr %qlen.i.i205 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %qlen.i.i205, align 4
  %work = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 40
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #14
  %24 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 40, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @ieee80211_setup_sdata.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 40, i32 1
  %25 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 40, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 40, i32 2
  %27 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ieee80211_iface_work, ptr %func, align 4
  %recalc_smps = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 39
  tail call void @__init_work(ptr noundef %recalc_smps, i32 noundef 0) #14
  %28 = ptrtoint ptr %recalc_smps to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -64, ptr %recalc_smps, align 4
  %lockdep_map20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 39, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map20, ptr noundef nonnull @.str.30, ptr noundef nonnull @ieee80211_setup_sdata.__key.29, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry22 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 39, i32 1
  %29 = ptrtoint ptr %entry22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %entry22, ptr %entry22, align 4
  %prev.i206 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 39, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i206 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %entry22, ptr %prev.i206, align 4
  %func24 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 39, i32 2
  %31 = ptrtoint ptr %func24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @ieee80211_recalc_smps_work, ptr %func24, align 4
  %csa_finalize_work = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 29
  tail call void @__init_work(ptr noundef %csa_finalize_work, i32 noundef 0) #14
  %32 = ptrtoint ptr %csa_finalize_work to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -64, ptr %csa_finalize_work, align 8
  %lockdep_map32 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 29, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map32, ptr noundef nonnull @.str.32, ptr noundef nonnull @ieee80211_setup_sdata.__key.31, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 29, i32 1
  %33 = ptrtoint ptr %entry34 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %entry34, ptr %entry34, align 4
  %prev.i207 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 29, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i207 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %entry34, ptr %prev.i207, align 4
  %func36 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 29, i32 2
  %35 = ptrtoint ptr %func36 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @ieee80211_csa_finalize_work, ptr %func36, align 4
  %color_change_finalize_work = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 32
  tail call void @__init_work(ptr noundef %color_change_finalize_work, i32 noundef 0) #14
  %36 = ptrtoint ptr %color_change_finalize_work to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -64, ptr %color_change_finalize_work, align 4
  %lockdep_map44 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 32, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map44, ptr noundef nonnull @.str.34, ptr noundef nonnull @ieee80211_setup_sdata.__key.33, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry46 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 32, i32 1
  %37 = ptrtoint ptr %entry46 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %entry46, ptr %entry46, align 4
  %prev.i208 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 32, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i208 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %entry46, ptr %prev.i208, align 4
  %func48 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 32, i32 2
  %39 = ptrtoint ptr %func48 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @ieee80211_color_change_finalize_work, ptr %func48, align 4
  %assigned_chanctx_list = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 33
  %40 = ptrtoint ptr %assigned_chanctx_list to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %assigned_chanctx_list, ptr %assigned_chanctx_list, align 4
  %prev.i209 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 33, i32 1
  %41 = ptrtoint ptr %prev.i209 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %assigned_chanctx_list, ptr %prev.i209, align 4
  %reserved_chanctx_list = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 34
  %42 = ptrtoint ptr %reserved_chanctx_list to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %reserved_chanctx_list, ptr %reserved_chanctx_list, align 4
  %prev.i210 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 34, i32 1
  %43 = ptrtoint ptr %prev.i210 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %reserved_chanctx_list, ptr %prev.i210, align 4
  %44 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %type, label %if.end.sw.epilog_crit_edge [
    i32 9, label %sw.bb
    i32 3, label %if.end.sw.bb54_crit_edge
    i32 8, label %sw.bb60
    i32 2, label %if.end.sw.bb65_crit_edge
    i32 11, label %sw.bb72
    i32 1, label %sw.bb76
    i32 7, label %sw.bb83
    i32 6, label %sw.bb87
    i32 12, label %sw.bb93
    i32 4, label %if.end.sw.bb105_crit_edge
    i32 10, label %if.end.sw.bb105_crit_edge215
    i32 0, label %if.end.do.end119_crit_edge
    i32 5, label %if.end.do.end119_crit_edge216
    i32 13, label %if.end.do.end119_crit_edge217
  ]

if.end.do.end119_crit_edge217:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end119

if.end.do.end119_crit_edge216:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end119

if.end.do.end119_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end119

if.end.sw.bb105_crit_edge215:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb105

if.end.sw.bb105_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb105

if.end.sw.bb65_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb65

if.end.sw.bb54_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb54

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %vif to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %vif, align 8
  %46 = ptrtoint ptr %p2p to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %p2p, align 2
  br label %sw.bb54

sw.bb54:                                          ; preds = %sw.bb, %if.end.sw.bb54_crit_edge
  %bc_buf = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 21, i32 1
  %lock.i211 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 23
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i211, ptr noundef nonnull @.str.26, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #14
  %47 = ptrtoint ptr %bc_buf to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %bc_buf, ptr %bc_buf, align 4
  %prev.i.i212 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %48 = ptrtoint ptr %prev.i.i212 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %bc_buf, ptr %prev.i.i212, align 4
  %qlen.i.i213 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 22
  %49 = ptrtoint ptr %qlen.i.i213 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %qlen.i.i213, align 4
  %vlans = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 0, i32 4
  %50 = ptrtoint ptr %vlans to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %vlans, ptr %vlans, align 4
  %prev.i214 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %prev.i214 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %vlans, ptr %prev.i214, align 4
  %addr = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %52 = ptrtoint ptr %bss_conf to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %addr, ptr %bss_conf, align 8
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %vif to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %vif, align 8
  %54 = ptrtoint ptr %p2p to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %p2p, align 2
  br label %sw.bb65

sw.bb65:                                          ; preds = %sw.bb60, %if.end.sw.bb65_crit_edge
  %bssid67 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 25
  %55 = ptrtoint ptr %bss_conf to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %bssid67, ptr %bss_conf, align 8
  tail call void @ieee80211_sta_setup_sdata(ptr noundef %sdata) #14
  br label %sw.epilog

sw.bb72:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %bss_conf to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @ieee80211_setup_sdata.bssid_wildcard, ptr %bss_conf, align 8
  tail call void @ieee80211_ocb_setup_sdata(ptr noundef %sdata) #14
  br label %sw.epilog

sw.bb76:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %bssid78 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 10
  %57 = ptrtoint ptr %bss_conf to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %bssid78, ptr %bss_conf, align 8
  tail call void @ieee80211_ibss_setup_sdata(ptr noundef %sdata) #14
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end
  %58 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %59)
  %cmp.i = icmp eq i32 %59, 7
  br i1 %cmp.i, label %if.then85, label %sw.bb83.sw.epilog_crit_edge

sw.bb83.sw.epilog_crit_edge:                      ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then85:                                        ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_mesh_init_sdata(ptr noundef %sdata) #14
  br label %sw.epilog

sw.bb87:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 8
  %type89 = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 32
  %62 = ptrtoint ptr %type89 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 803, ptr %type89, align 16
  %63 = load ptr, ptr %dev, align 8
  %netdev_ops91 = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 16
  %64 = ptrtoint ptr %netdev_ops91 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @ieee80211_monitorif_ops, ptr %netdev_ops91, align 8
  %65 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 24, ptr %u, align 8
  br label %sw.epilog

sw.bb93:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %function_inst_ids = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %function_inst_ids, ptr noundef nonnull @.str.37, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #14
  %xa_flags.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 1, i32 4, i32 7
  %66 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2
  %67 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2, i32 0, i32 1
  %68 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2, i32 1
  %69 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %idr_next.i.i, align 4
  %func_lock = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %func_lock, ptr noundef nonnull @.str.36, ptr noundef nonnull @ieee80211_setup_sdata.__key.35, i16 noundef signext 3) #14
  %addr100 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %70 = ptrtoint ptr %bss_conf to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %addr100, ptr %bss_conf, align 8
  br label %sw.epilog

sw.bb105:                                         ; preds = %if.end.sw.bb105_crit_edge, %if.end.sw.bb105_crit_edge215
  %addr107 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %71 = ptrtoint ptr %bss_conf to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %addr107, ptr %bss_conf, align 8
  br label %sw.epilog

do.end119:                                        ; preds = %if.end.do.end119_crit_edge, %if.end.do.end119_crit_edge216, %if.end.do.end119_crit_edge217
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1718, i32 noundef 9, ptr noundef null) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end119, %sw.bb105, %sw.bb93, %sw.bb87, %if.then85, %sw.bb83.sw.epilog_crit_edge, %sw.bb76, %sw.bb72, %sw.bb65, %sw.bb54, %if.end.sw.epilog_crit_edge
  tail call void @ieee80211_debugfs_add_netdev(ptr noundef %sdata) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_if_add(ptr noundef %local, ptr noundef %name, i8 noundef zeroext %name_assign_type, ptr noundef writeonly %new_wdev, i32 noundef %type, ptr noundef %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b436 = load i1, ptr @ieee80211_if_add.__already_done, align 1
  br i1 %.b436, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !145

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ieee80211_if_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1985, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 1985) #14
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %type, label %if.else [
    i32 10, label %if.end29.if.end8.i.i_crit_edge
    i32 12, label %if.end29.if.end8.i.i_crit_edge459
  ]

if.end29.if.end8.i.i_crit_edge459:                ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

if.end29.if.end8.i.i_crit_edge:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end29.if.end8.i.i_crit_edge, %if.end29.if.end8.i.i_crit_edge459
  %vif_data_size = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 7
  %1 = ptrtoint ptr %vif_data_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vif_data_size, align 4
  %add = add i32 %2, 4928
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #17
  %tobool40.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool40.not, label %if.end8.i.i.cleanup288_crit_edge, label %if.end42

if.end8.i.i.cleanup288_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup288

if.end42:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %dev, align 64
  %name44 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 10
  %call45 = tail call i32 @strlcpy(ptr noundef %name44, ptr noundef %name, i32 noundef 16) #14
  %address = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 1, i32 12
  tail call fastcc void @ieee80211_assign_perm_addr(ptr noundef %local, ptr noundef %address, i32 noundef %type)
  %addr = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %call9.i.i, i32 0, i32 59, i32 2
  %4 = call ptr @memcpy(ptr %addr, ptr %address, i32 6)
  br label %if.end165

if.else:                                          ; preds = %if.end29
  %vif_data_size51 = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 7
  %5 = ptrtoint ptr %vif_data_size51 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vif_data_size51, align 4
  %add53 = add i32 %6, 4931
  %and = and i32 %add53, -4
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %wake_tx_queue = getelementptr inbounds %struct.ieee80211_ops, ptr %8, i32 0, i32 92
  %9 = ptrtoint ptr %wake_tx_queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wake_tx_queue, align 4
  %tobool54.not = icmp eq ptr %10, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cmp55.not = icmp eq i32 %type, 4
  %or.cond = or i1 %cmp55.not, %tobool54.not
  br i1 %or.cond, label %if.else.if.end65_crit_edge, label %land.lhs.true56

if.else.if.end65_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

land.lhs.true56:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %type)
  %cmp57.not = icmp eq i32 %type, 6
  br i1 %cmp57.not, label %lor.lhs.false58, label %land.lhs.true56.if.then61_crit_edge

land.lhs.true56.if.then61_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then61

lor.lhs.false58:                                  ; preds = %land.lhs.true56
  %11 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %params, align 4
  %and59 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %lor.lhs.false58.if.end65_crit_edge, label %lor.lhs.false58.if.then61_crit_edge

lor.lhs.false58.if.then61_crit_edge:              ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then61

lor.lhs.false58.if.end65_crit_edge:               ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.then61:                                        ; preds = %lor.lhs.false58.if.then61_crit_edge, %land.lhs.true56.if.then61_crit_edge
  %txq_data_size = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 10
  %13 = ptrtoint ptr %txq_data_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %txq_data_size, align 8
  %add63 = add i32 %14, 256
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %lor.lhs.false58.if.end65_crit_edge, %if.else.if.end65_crit_edge
  %txq_size.0 = phi i32 [ %add63, %if.then61 ], [ 0, %lor.lhs.false58.if.end65_crit_edge ], [ 0, %if.else.if.end65_crit_edge ]
  br i1 %tobool54.not, label %if.else70, label %if.end65.if.end76_crit_edge

if.end65.if.end76_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end76

if.else70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 11
  %15 = ptrtoint ptr %queues to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %queues, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %16)
  %cmp72 = icmp ugt i16 %16, 3
  %spec.select = select i1 %cmp72, i32 4, i32 1
  br label %if.end76

if.end76:                                         ; preds = %if.else70, %if.end65.if.end76_crit_edge
  %txqs.0 = phi i32 [ 1, %if.end65.if.end76_crit_edge ], [ %spec.select, %if.else70 ]
  %if_setup.0 = phi ptr [ @ieee80211_if_setup_no_queue, %if.end65.if.end76_crit_edge ], [ @ieee80211_if_setup, %if.else70 ]
  %add77 = add i32 %txq_size.0, %and
  %call78 = tail call ptr @alloc_netdev_mqs(i32 noundef %add77, ptr noundef %name, i8 noundef zeroext %name_assign_type, ptr noundef nonnull %if_setup.0, i32 noundef %txqs.0, i32 noundef 1) #14
  %tobool79.not = icmp eq ptr %call78, null
  br i1 %tobool79.not, label %if.end76.cleanup288_crit_edge, label %if.end81

if.end76.cleanup288_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup288

if.end81:                                         ; preds = %if.end76
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %wake_tx_queue83 = getelementptr inbounds %struct.ieee80211_ops, ptr %18, i32 0, i32 92
  %19 = ptrtoint ptr %wake_tx_queue83 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wake_tx_queue83, align 4
  %tobool84.not = icmp eq ptr %20, null
  br i1 %tobool84.not, label %land.lhs.true85, label %if.end81.if.end93_crit_edge

if.end81.if.end93_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end93

land.lhs.true85:                                  ; preds = %if.end81
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 1
  %21 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wiphy, align 8
  %tx_queue_len = getelementptr inbounds %struct.wiphy, ptr %22, i32 0, i32 76
  %23 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_queue_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool87.not = icmp eq i32 %24, 0
  br i1 %tobool87.not, label %land.lhs.true85.if.end93_crit_edge, label %if.then88

land.lhs.true85.if.end93_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end93

if.then88:                                        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #16
  %tx_queue_len92 = getelementptr inbounds %struct.net_device, ptr %call78, i32 0, i32 107
  %25 = ptrtoint ptr %tx_queue_len92 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tx_queue_len92, align 16
  br label %if.end93

if.end93:                                         ; preds = %if.then88, %land.lhs.true85.if.end93_crit_edge, %if.end81.if.end93_crit_edge
  %wiphy95 = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 1
  %26 = ptrtoint ptr %wiphy95 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wiphy95, align 8
  %_net.i = getelementptr inbounds %struct.wiphy, ptr %27, i32 0, i32 62
  %28 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_net.i, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %call78, i32 0, i32 127
  %30 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %nd_net.i, align 4
  %call97 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 64, i32 noundef 32, i32 noundef 3264) #17
  %tobool98.not = icmp eq ptr %call97, null
  br i1 %tobool98.not, label %if.then115, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end93
  %call100452 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %31 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call100452, i32 %31)
  %cmp101453 = icmp ult i32 %call100452, %31
  br i1 %cmp101453, label %for.body.lr.ph, label %for.cond.preheader.if.end116_crit_edge

for.cond.preheader.if.end116_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end116

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %32 = ptrtoint ptr %call97 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call100454 = phi i32 [ %call100452, %for.body.lr.ph ], [ %call100, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call100454
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  %add108 = add i32 %34, %32
  %35 = inttoptr i32 %add108 to ptr
  %syncp = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %35, i32 0, i32 4
  %dep_map.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %35, i32 0, i32 4, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @ieee80211_if_add.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %36 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %syncp, align 4
  %call100 = tail call i32 @cpumask_next(i32 noundef %call100454, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %37 = load i32, ptr @nr_cpu_ids, align 4
  %cmp101 = icmp ult i32 %call100, %37
  br i1 %cmp101, label %for.body.for.body_crit_edge, label %for.body.if.end116_crit_edge

for.body.if.end116_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end116

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.then115:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  %38 = getelementptr inbounds %struct.net_device, ptr %call78, i32 0, i32 130
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %38, align 64
  tail call void @free_netdev(ptr noundef nonnull %call78) #14
  br label %cleanup288

if.end116:                                        ; preds = %for.body.if.end116_crit_edge, %for.cond.preheader.if.end116_crit_edge
  %40 = getelementptr inbounds %struct.net_device, ptr %call78, i32 0, i32 130
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call97, ptr %40, align 64
  %tx_headroom = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 41
  %42 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_headroom, align 8
  %44 = trunc i32 %43 to i16
  %conv125 = add i16 %44, 40
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %call78, i32 0, i32 21
  %45 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv125, ptr %needed_headroom, align 8
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %call78, i32 0, i32 22
  %46 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 18, ptr %needed_tailroom, align 2
  %call128 = tail call i32 @dev_alloc_name(ptr noundef %call78, ptr noundef %call78) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %if.then131, label %if.end132

if.then131:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %40, align 64
  tail call void @free_percpu(ptr noundef %48) #14
  tail call void @free_netdev(ptr noundef %call78) #14
  br label %cleanup288

if.end132:                                        ; preds = %if.end116
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %call78, i32 0, i32 54
  tail call fastcc void @ieee80211_assign_perm_addr(ptr noundef %local, ptr noundef %perm_addr, i32 noundef %type)
  %macaddr = getelementptr inbounds %struct.vif_params, ptr %params, i32 0, i32 2
  %49 = ptrtoint ptr %macaddr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %macaddr, align 4
  %51 = and i32 %50, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.i.not.i = icmp eq i32 %51, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end132.if.else139_crit_edge

if.end132.if.else139_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else139

is_valid_ether_addr.exit:                         ; preds = %if.end132
  %add.ptr.i.i = getelementptr %struct.vif_params, ptr %params, i32 0, i32 2, i32 4
  %52 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %53 to i32
  %or.i.i = or i32 %50, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i438.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i438.not, label %is_valid_ether_addr.exit.if.else139_crit_edge, label %is_valid_ether_addr.exit.if.end142_crit_edge

is_valid_ether_addr.exit.if.end142_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end142

is_valid_ether_addr.exit.if.else139_crit_edge:    ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else139

if.else139:                                       ; preds = %is_valid_ether_addr.exit.if.else139_crit_edge, %if.end132.if.else139_crit_edge
  br label %if.end142

if.end142:                                        ; preds = %if.else139, %is_valid_ether_addr.exit.if.end142_crit_edge
  %perm_addr.sink = phi ptr [ %perm_addr, %if.else139 ], [ %macaddr, %is_valid_ether_addr.exit.if.end142_crit_edge ]
  tail call void @dev_addr_mod(ptr noundef %call78, i32 noundef 0, ptr noundef %perm_addr.sink, i32 noundef 6) #14
  %54 = ptrtoint ptr %wiphy95 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wiphy95, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %55, i32 0, i32 56, i32 1
  %56 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %parent.i, align 8
  %parent = getelementptr inbounds %struct.net_device, ptr %call78, i32 0, i32 133, i32 1
  %58 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call78, i32 2304
  %wdev148 = getelementptr i8, ptr %call78, i32 2312
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %call78, i32 0, i32 82
  %59 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %wdev148, ptr %ieee80211_ptr, align 16
  %addr150 = getelementptr i8, ptr %call78, i32 7184
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call78, i32 0, i32 86
  %60 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_addr, align 64
  %62 = call ptr @memcpy(ptr %addr150, ptr %61, i32 6)
  %name152 = getelementptr i8, ptr %call78, i32 3408
  %63 = call ptr @memcpy(ptr %name152, ptr %call78, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %txq_size.0)
  %tobool156.not = icmp eq i32 %txq_size.0, 0
  br i1 %tobool156.not, label %if.end142.cleanup161_crit_edge, label %if.then157

if.end142.cleanup161_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup161

if.then157:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %and
  tail call void @ieee80211_txq_init(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef %add.ptr, i32 noundef 0) #14
  br label %cleanup161

cleanup161:                                       ; preds = %if.then157, %if.end142.cleanup161_crit_edge
  %dev160 = getelementptr i8, ptr %call78, i32 3392
  %64 = ptrtoint ptr %dev160 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call78, ptr %dev160, align 8
  br label %if.end165

if.end165:                                        ; preds = %cleanup161, %if.end42
  %sdata.1 = phi ptr [ %add.ptr.i, %cleanup161 ], [ %call9.i.i, %if.end42 ]
  %ndev.0 = phi ptr [ %call78, %cleanup161 ], [ null, %if.end42 ]
  %wiphy167 = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 1
  %65 = ptrtoint ptr %wiphy167 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wiphy167, align 8
  %wdev168 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 1
  %67 = ptrtoint ptr %wdev168 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %wdev168, align 8
  %local170 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 7
  %68 = ptrtoint ptr %local170 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %local, ptr %local170, align 4
  %frags = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 11
  tail call void @ieee80211_init_frag_cache(ptr noundef %frags) #14
  %key_list = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 2
  %69 = ptrtoint ptr %key_list to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %key_list, ptr %key_list, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 2, i32 1
  %70 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %key_list, ptr %prev.i, align 4
  %dfs_cac_timer_work = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 48
  tail call void @__init_work(ptr noundef %dfs_cac_timer_work, i32 noundef 0) #14
  %71 = ptrtoint ptr %dfs_cac_timer_work to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -64, ptr %dfs_cac_timer_work, align 8
  %lockdep_map = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 48, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @ieee80211_if_add.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry179 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 48, i32 0, i32 1
  %72 = ptrtoint ptr %entry179 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %entry179, ptr %entry179, align 4
  %prev.i440 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 48, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %prev.i440 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %entry179, ptr %prev.i440, align 4
  %func = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 48, i32 0, i32 2
  %74 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @ieee80211_dfs_cac_timer_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 48, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.10, ptr noundef nonnull @ieee80211_if_add.__key.9) #14
  %dec_tailroom_needed_wk = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 5
  tail call void @__init_work(ptr noundef %dec_tailroom_needed_wk, i32 noundef 0) #14
  %75 = ptrtoint ptr %dec_tailroom_needed_wk to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -64, ptr %dec_tailroom_needed_wk, align 4
  %lockdep_map200 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map200, ptr noundef nonnull @.str.12, ptr noundef nonnull @ieee80211_if_add.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry203 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 5, i32 0, i32 1
  %76 = ptrtoint ptr %entry203 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %entry203, ptr %entry203, align 4
  %prev.i441 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 5, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %prev.i441 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %entry203, ptr %prev.i441, align 4
  %func206 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 5, i32 0, i32 2
  %78 = ptrtoint ptr %func206 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @ieee80211_delayed_tailroom_dec, ptr %func206, align 4
  %timer211 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %timer211, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.14, ptr noundef nonnull @ieee80211_if_add.__key.13) #14
  br label %for.body219

for.body219:                                      ; preds = %if.end240.for.body219_crit_edge, %if.end165
  %i.0455 = phi i32 [ 0, %if.end165 ], [ %inc, %if.end240.for.body219_crit_edge ]
  %79 = ptrtoint ptr %wiphy167 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %wiphy167, align 8
  %arrayidx222 = getelementptr %struct.wiphy, ptr %80, i32 0, i32 53, i32 %i.0455
  %81 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx222, align 4
  %tobool223.not = icmp eq ptr %82, null
  br i1 %tobool223.not, label %if.else233.critedge, label %cond.true

cond.true:                                        ; preds = %for.body219
  call void @__sanitizer_cov_trace_pc() #16
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %n_bitrates, align 4
  %notmask = shl nsw i32 -1, %84
  %sub224 = xor i32 %notmask, -1
  %arrayidx225.c437 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 50, i32 %i.0455
  %85 = ptrtoint ptr %arrayidx225.c437 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %sub224, ptr %arrayidx225.c437, align 4
  %arrayidx228 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 52, i32 %i.0455
  %mcs = getelementptr inbounds %struct.ieee80211_supported_band, ptr %82, i32 0, i32 5, i32 4
  %86 = call ptr @memcpy(ptr %arrayidx228, ptr %mcs, i32 10)
  %vht_mcs = getelementptr inbounds %struct.ieee80211_supported_band, ptr %82, i32 0, i32 6, i32 2
  %87 = ptrtoint ptr %vht_mcs to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %vht_mcs, align 4
  %arrayidx231 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 54, i32 %i.0455
  tail call void @ieee80211_get_vht_mask_from_cap(i16 noundef zeroext %88, ptr noundef %arrayidx231) #14
  br label %if.end240

if.else233.critedge:                              ; preds = %for.body219
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx225.c = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 50, i32 %i.0455
  %89 = ptrtoint ptr %arrayidx225.c to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %arrayidx225.c, align 4
  %arrayidx235 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 52, i32 %i.0455
  %90 = call ptr @memset(ptr %arrayidx235, i32 0, i32 10)
  %arrayidx238 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 54, i32 %i.0455
  %91 = call ptr @memset(ptr %arrayidx238, i32 0, i32 16)
  br label %if.end240

if.end240:                                        ; preds = %if.else233.critedge, %cond.true
  %inc = add nuw nsw i32 %i.0455, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.body245.preheader, label %if.end240.for.body219_crit_edge

if.end240.for.body219_crit_edge:                  ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body219

for.body245.preheader:                            ; preds = %if.end240
  %aql_tx_pending.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %aql_tx_pending.i, i32 noundef 4) #14
  %92 = ptrtoint ptr %aql_tx_pending.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile i32 0, ptr %aql_tx_pending.i, align 4
  %aql_txq_limit_low.i = getelementptr %struct.ieee80211_local, ptr %local, i32 0, i32 4, i32 0, i32 9
  %93 = ptrtoint ptr %aql_txq_limit_low.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %aql_txq_limit_low.i, align 8
  %aql_limit_low.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 0, i32 6
  %95 = ptrtoint ptr %aql_limit_low.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %aql_limit_low.i, align 4
  %aql_txq_limit_high.i = getelementptr %struct.ieee80211_local, ptr %local, i32 0, i32 4, i32 0, i32 10
  %96 = ptrtoint ptr %aql_txq_limit_high.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %aql_txq_limit_high.i, align 4
  %aql_limit_high.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 0, i32 7
  %98 = ptrtoint ptr %aql_limit_high.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %aql_limit_high.i, align 8
  %weight1.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 0, i32 9
  %99 = ptrtoint ptr %weight1.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %weight1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %100)
  %cmp.i.i442 = icmp eq i16 %100, 256
  br i1 %cmp.i.i442, label %for.body245.preheader.init_airtime_info.exit_crit_edge, label %if.end.i.i443

for.body245.preheader.init_airtime_info.exit_crit_edge: ; preds = %for.body245.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %init_airtime_info.exit

if.end.i.i443:                                    ; preds = %for.body245.preheader
  call void @__sanitizer_cov_trace_pc() #16
  %101 = ptrtoint ptr %weight1.i.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 256, ptr %weight1.i.i, align 8
  %weight_reciprocal.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 0, i32 8
  %102 = ptrtoint ptr %weight_reciprocal.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 2048, ptr %weight_reciprocal.i.i, align 4
  br label %init_airtime_info.exit

init_airtime_info.exit:                           ; preds = %if.end.i.i443, %for.body245.preheader.init_airtime_info.exit_crit_edge
  %list.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 0, i32 4
  %103 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 0, i32 4, i32 1
  %104 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %list.i, ptr %prev.i.i, align 4
  %aql_tx_pending.i.1 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 1, i32 5
  %call.i.i.i.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aql_tx_pending.i.1, i32 noundef 4) #14
  %105 = ptrtoint ptr %aql_tx_pending.i.1 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile i32 0, ptr %aql_tx_pending.i.1, align 4
  %aql_txq_limit_low.i.1 = getelementptr %struct.ieee80211_local, ptr %local, i32 0, i32 4, i32 1, i32 9
  %106 = ptrtoint ptr %aql_txq_limit_low.i.1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %aql_txq_limit_low.i.1, align 8
  %aql_limit_low.i.1 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 1, i32 6
  %108 = ptrtoint ptr %aql_limit_low.i.1 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %aql_limit_low.i.1, align 4
  %aql_txq_limit_high.i.1 = getelementptr %struct.ieee80211_local, ptr %local, i32 0, i32 4, i32 1, i32 10
  %109 = ptrtoint ptr %aql_txq_limit_high.i.1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %aql_txq_limit_high.i.1, align 4
  %aql_limit_high.i.1 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 1, i32 7
  %111 = ptrtoint ptr %aql_limit_high.i.1 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %aql_limit_high.i.1, align 8
  %weight1.i.i.1 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 1, i32 9
  %112 = ptrtoint ptr %weight1.i.i.1 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %weight1.i.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %113)
  %cmp.i.i442.1 = icmp eq i16 %113, 256
  br i1 %cmp.i.i442.1, label %init_airtime_info.exit.init_airtime_info.exit.1_crit_edge, label %if.end.i.i443.1

init_airtime_info.exit.init_airtime_info.exit.1_crit_edge: ; preds = %init_airtime_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %init_airtime_info.exit.1

if.end.i.i443.1:                                  ; preds = %init_airtime_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  %114 = ptrtoint ptr %weight1.i.i.1 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 256, ptr %weight1.i.i.1, align 8
  %weight_reciprocal.i.i.1 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 1, i32 8
  %115 = ptrtoint ptr %weight_reciprocal.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 2048, ptr %weight_reciprocal.i.i.1, align 4
  br label %init_airtime_info.exit.1

init_airtime_info.exit.1:                         ; preds = %if.end.i.i443.1, %init_airtime_info.exit.init_airtime_info.exit.1_crit_edge
  %list.i.1 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 1, i32 4
  %116 = ptrtoint ptr %list.i.1 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %list.i.1, ptr %list.i.1, align 4
  %prev.i.i.1 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 1, i32 4, i32 1
  %117 = ptrtoint ptr %prev.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %list.i.1, ptr %prev.i.i.1, align 4
  %aql_tx_pending.i.2 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 2, i32 5
  %call.i.i.i.2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aql_tx_pending.i.2, i32 noundef 4) #14
  %118 = ptrtoint ptr %aql_tx_pending.i.2 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile i32 0, ptr %aql_tx_pending.i.2, align 4
  %aql_txq_limit_low.i.2 = getelementptr %struct.ieee80211_local, ptr %local, i32 0, i32 4, i32 2, i32 9
  %119 = ptrtoint ptr %aql_txq_limit_low.i.2 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %aql_txq_limit_low.i.2, align 8
  %aql_limit_low.i.2 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 2, i32 6
  %121 = ptrtoint ptr %aql_limit_low.i.2 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %aql_limit_low.i.2, align 4
  %aql_txq_limit_high.i.2 = getelementptr %struct.ieee80211_local, ptr %local, i32 0, i32 4, i32 2, i32 10
  %122 = ptrtoint ptr %aql_txq_limit_high.i.2 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %aql_txq_limit_high.i.2, align 4
  %aql_limit_high.i.2 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 2, i32 7
  %124 = ptrtoint ptr %aql_limit_high.i.2 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %aql_limit_high.i.2, align 8
  %weight1.i.i.2 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 2, i32 9
  %125 = ptrtoint ptr %weight1.i.i.2 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %weight1.i.i.2, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %126)
  %cmp.i.i442.2 = icmp eq i16 %126, 256
  br i1 %cmp.i.i442.2, label %init_airtime_info.exit.1.init_airtime_info.exit.2_crit_edge, label %if.end.i.i443.2

init_airtime_info.exit.1.init_airtime_info.exit.2_crit_edge: ; preds = %init_airtime_info.exit.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %init_airtime_info.exit.2

if.end.i.i443.2:                                  ; preds = %init_airtime_info.exit.1
  call void @__sanitizer_cov_trace_pc() #16
  %127 = ptrtoint ptr %weight1.i.i.2 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 256, ptr %weight1.i.i.2, align 8
  %weight_reciprocal.i.i.2 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 2, i32 8
  %128 = ptrtoint ptr %weight_reciprocal.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 2048, ptr %weight_reciprocal.i.i.2, align 4
  br label %init_airtime_info.exit.2

init_airtime_info.exit.2:                         ; preds = %if.end.i.i443.2, %init_airtime_info.exit.1.init_airtime_info.exit.2_crit_edge
  %list.i.2 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 2, i32 4
  %129 = ptrtoint ptr %list.i.2 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %list.i.2, ptr %list.i.2, align 4
  %prev.i.i.2 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 2, i32 4, i32 1
  %130 = ptrtoint ptr %prev.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %list.i.2, ptr %prev.i.i.2, align 4
  %aql_tx_pending.i.3 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 3, i32 5
  %call.i.i.i.3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %aql_tx_pending.i.3, i32 noundef 4) #14
  %131 = ptrtoint ptr %aql_tx_pending.i.3 to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile i32 0, ptr %aql_tx_pending.i.3, align 4
  %aql_txq_limit_low.i.3 = getelementptr %struct.ieee80211_local, ptr %local, i32 0, i32 4, i32 3, i32 9
  %132 = ptrtoint ptr %aql_txq_limit_low.i.3 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %aql_txq_limit_low.i.3, align 8
  %aql_limit_low.i.3 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 3, i32 6
  %134 = ptrtoint ptr %aql_limit_low.i.3 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %aql_limit_low.i.3, align 4
  %aql_txq_limit_high.i.3 = getelementptr %struct.ieee80211_local, ptr %local, i32 0, i32 4, i32 3, i32 10
  %135 = ptrtoint ptr %aql_txq_limit_high.i.3 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %aql_txq_limit_high.i.3, align 4
  %aql_limit_high.i.3 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 3, i32 7
  %137 = ptrtoint ptr %aql_limit_high.i.3 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %aql_limit_high.i.3, align 8
  %weight1.i.i.3 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 3, i32 9
  %138 = ptrtoint ptr %weight1.i.i.3 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %weight1.i.i.3, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %139)
  %cmp.i.i442.3 = icmp eq i16 %139, 256
  br i1 %cmp.i.i442.3, label %init_airtime_info.exit.2.init_airtime_info.exit.3_crit_edge, label %if.end.i.i443.3

init_airtime_info.exit.2.init_airtime_info.exit.3_crit_edge: ; preds = %init_airtime_info.exit.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %init_airtime_info.exit.3

if.end.i.i443.3:                                  ; preds = %init_airtime_info.exit.2
  call void @__sanitizer_cov_trace_pc() #16
  %140 = ptrtoint ptr %weight1.i.i.3 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 256, ptr %weight1.i.i.3, align 8
  %weight_reciprocal.i.i.3 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 3, i32 8
  %141 = ptrtoint ptr %weight_reciprocal.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 2048, ptr %weight_reciprocal.i.i.3, align 4
  br label %init_airtime_info.exit.3

init_airtime_info.exit.3:                         ; preds = %if.end.i.i443.3, %init_airtime_info.exit.2.init_airtime_info.exit.3_crit_edge
  %list.i.3 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 3, i32 4
  %142 = ptrtoint ptr %list.i.3 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %list.i.3, ptr %list.i.3, align 4
  %prev.i.i.3 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 28, i32 3, i32 4, i32 1
  %143 = ptrtoint ptr %prev.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %list.i.3, ptr %prev.i.i.3, align 4
  %144 = ptrtoint ptr %local170 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %local170, align 4
  %flags.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %145, i32 0, i32 4
  %queues.i = getelementptr inbounds %struct.ieee80211_hw, ptr %145, i32 0, i32 11
  %146 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %flags.i.i, align 4
  %148 = shl i32 %147, 13
  %sext.i = ashr i32 %148, 31
  %..i = trunc i32 %sext.i to i8
  %arrayidx9.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 59, i32 7, i32 0
  %149 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %..i, ptr %arrayidx9.i, align 1
  %150 = load volatile i32, ptr %flags.i.i, align 4
  %151 = and i32 %150, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool.i.not.1.i = icmp eq i32 %151, 0
  br i1 %tobool.i.not.1.i, label %if.else.1.i, label %if.then.1.i

if.then.1.i:                                      ; preds = %init_airtime_info.exit.3
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.1.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 59, i32 7, i32 1
  %152 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 -1, ptr %arrayidx.1.i, align 1
  br label %for.inc.1.i

if.else.1.i:                                      ; preds = %init_airtime_info.exit.3
  %153 = ptrtoint ptr %queues.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %154)
  %cmp3.1.i = icmp ugt i16 %154, 3
  %arrayidx9.1.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 59, i32 7, i32 1
  br i1 %cmp3.1.i, label %if.then5.1.i, label %if.else10.1.i

if.else10.1.i:                                    ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #16
  %155 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %arrayidx9.1.i, align 1
  br label %for.inc.1.i

if.then5.1.i:                                     ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #16
  %156 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 1, ptr %arrayidx9.1.i, align 1
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then5.1.i, %if.else10.1.i, %if.then.1.i
  %157 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %flags.i.i, align 4
  %159 = and i32 %158, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool.i.not.2.i = icmp eq i32 %159, 0
  br i1 %tobool.i.not.2.i, label %if.else.2.i, label %if.then.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.2.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 59, i32 7, i32 2
  %160 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 -1, ptr %arrayidx.2.i, align 1
  br label %for.inc.2.i

if.else.2.i:                                      ; preds = %for.inc.1.i
  %161 = ptrtoint ptr %queues.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %162)
  %cmp3.2.i = icmp ugt i16 %162, 3
  %arrayidx9.2.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 59, i32 7, i32 2
  br i1 %cmp3.2.i, label %if.then5.2.i, label %if.else10.2.i

if.else10.2.i:                                    ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #16
  %163 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 0, ptr %arrayidx9.2.i, align 1
  br label %for.inc.2.i

if.then5.2.i:                                     ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #16
  %164 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 2, ptr %arrayidx9.2.i, align 1
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then5.2.i, %if.else10.2.i, %if.then.2.i
  %165 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load volatile i32, ptr %flags.i.i, align 4
  %167 = and i32 %166, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool.i.not.3.i = icmp eq i32 %167, 0
  br i1 %tobool.i.not.3.i, label %if.else.3.i, label %if.then.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.3.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 59, i32 7, i32 3
  %168 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 -1, ptr %arrayidx.3.i, align 1
  br label %ieee80211_set_default_queues.exit

if.else.3.i:                                      ; preds = %for.inc.2.i
  %169 = ptrtoint ptr %queues.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %170)
  %cmp3.3.i = icmp ugt i16 %170, 3
  %arrayidx9.3.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 59, i32 7, i32 3
  br i1 %cmp3.3.i, label %if.then5.3.i, label %if.else10.3.i

if.else10.3.i:                                    ; preds = %if.else.3.i
  call void @__sanitizer_cov_trace_pc() #16
  %171 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 0, ptr %arrayidx9.3.i, align 1
  br label %ieee80211_set_default_queues.exit

if.then5.3.i:                                     ; preds = %if.else.3.i
  call void @__sanitizer_cov_trace_pc() #16
  %172 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 3, ptr %arrayidx9.3.i, align 1
  br label %ieee80211_set_default_queues.exit

ieee80211_set_default_queues.exit:                ; preds = %if.then5.3.i, %if.else10.3.i, %if.then.3.i
  %cab_queue.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 59, i32 6
  %173 = ptrtoint ptr %cab_queue.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 -1, ptr %cab_queue.i, align 1
  %ap_power_level = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 46
  %174 = ptrtoint ptr %ap_power_level to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 -2147483648, ptr %ap_power_level, align 8
  %user_power_level = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 133
  %175 = ptrtoint ptr %user_power_level to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %user_power_level, align 4
  %user_power_level252 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 45
  %177 = ptrtoint ptr %user_power_level252 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %user_power_level252, align 4
  %encrypt_headroom = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 24
  %178 = ptrtoint ptr %encrypt_headroom to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 8, ptr %encrypt_headroom, align 8
  tail call fastcc void @ieee80211_setup_sdata(ptr noundef %sdata.1, i32 noundef %type)
  %tobool253.not = icmp eq ptr %ndev.0, null
  br i1 %tobool253.not, label %ieee80211_set_default_queues.exit.if.end282_crit_edge, label %if.then254

ieee80211_set_default_queues.exit.if.end282_crit_edge: ; preds = %ieee80211_set_default_queues.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end282

if.then254:                                       ; preds = %ieee80211_set_default_queues.exit
  %use_4addr = getelementptr inbounds %struct.vif_params, ptr %params, i32 0, i32 1
  %179 = ptrtoint ptr %use_4addr to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %use_4addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool255 = icmp ne i32 %180, 0
  %ieee80211_ptr256 = getelementptr inbounds %struct.net_device, ptr %ndev.0, i32 0, i32 82
  %181 = ptrtoint ptr %ieee80211_ptr256 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ieee80211_ptr256, align 16
  %use_4addr257 = getelementptr inbounds %struct.wireless_dev, ptr %182, i32 0, i32 8
  %frombool258 = zext i1 %tobool255 to i8
  %183 = ptrtoint ptr %use_4addr257 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %frombool258, ptr %use_4addr257, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp259 = icmp eq i32 %type, 2
  br i1 %cmp259, label %if.then261, label %if.then254.if.end265_crit_edge

if.then254.if.end265_crit_edge:                   ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end265

if.then261:                                       ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #16
  %184 = ptrtoint ptr %use_4addr to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %use_4addr, align 4
  %conv263 = trunc i32 %185 to i8
  %use_4addr264 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.1, i32 0, i32 57, i32 0, i32 38
  %186 = ptrtoint ptr %use_4addr264 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %conv263, ptr %use_4addr264, align 8
  br label %if.end265

if.end265:                                        ; preds = %if.then261, %if.then254.if.end265_crit_edge
  %netdev_features = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 24
  %187 = ptrtoint ptr %netdev_features to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %netdev_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %ndev.0, i32 0, i32 23
  %189 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %features, align 16
  %or = or i64 %190, %188
  store i64 %or, ptr %features, align 16
  %and268 = and i64 %or, 26845446203
  %hw_features = getelementptr inbounds %struct.net_device, ptr %ndev.0, i32 0, i32 24
  %191 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %hw_features, align 8
  %or269 = or i64 %192, %and268
  store i64 %or269, ptr %hw_features, align 8
  tail call void @netdev_set_default_ethtool_ops(ptr noundef nonnull %ndev.0, ptr noundef nonnull @ieee80211_ethtool_ops) #14
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %ndev.0, i32 0, i32 30
  %193 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 256, ptr %min_mtu, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %type)
  %cmp270 = icmp eq i32 %type, 6
  br i1 %cmp270, label %if.end265.if.end277_crit_edge, label %if.else273

if.end265.if.end277_crit_edge:                    ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end277

if.else273:                                       ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #16
  %max_mtu275 = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 32
  %194 = ptrtoint ptr %max_mtu275 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %max_mtu275, align 4
  br label %if.end277

if.end277:                                        ; preds = %if.else273, %if.end265.if.end277_crit_edge
  %.sink = phi i32 [ %195, %if.else273 ], [ 0, %if.end265.if.end277_crit_edge ]
  %196 = getelementptr inbounds %struct.net_device, ptr %ndev.0, i32 0, i32 31
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %.sink, ptr %196, align 4
  %call278 = tail call i32 @cfg80211_register_netdevice(ptr noundef nonnull %ndev.0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call278)
  %tobool279.not = icmp eq i32 %call278, 0
  br i1 %tobool279.not, label %if.end277.if.end282_crit_edge, label %if.then280

if.end277.if.end282_crit_edge:                    ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end282

if.then280:                                       ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @free_netdev(ptr noundef nonnull %ndev.0) #14
  br label %cleanup288

if.end282:                                        ; preds = %if.end277.if.end282_crit_edge, %ieee80211_set_default_queues.exit.if.end282_crit_edge
  %iflist_mtx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %iflist_mtx, i32 noundef 0) #14
  %interfaces = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 62
  %prev.i444 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 62, i32 1
  %198 = ptrtoint ptr %prev.i444 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %prev.i444, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %sdata.1, ptr noundef %199, ptr noundef %interfaces) #14
  br i1 %call.i.i, label %if.end.i.i445, label %if.end282.list_add_tail_rcu.exit_crit_edge

if.end282.list_add_tail_rcu.exit_crit_edge:       ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail_rcu.exit

if.end.i.i445:                                    ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #16
  %200 = ptrtoint ptr %sdata.1 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %interfaces, ptr %sdata.1, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %sdata.1, i32 0, i32 1
  %201 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %199, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !149
  %202 = ptrtoint ptr %199 to i32
  call void @__asan_store4_noabort(i32 %202)
  store volatile ptr %sdata.1, ptr %199, align 4
  %203 = ptrtoint ptr %prev.i444 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %sdata.1, ptr %prev.i444, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i445, %if.end282.list_add_tail_rcu.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %iflist_mtx) #14
  %tobool284.not = icmp eq ptr %new_wdev, null
  br i1 %tobool284.not, label %list_add_tail_rcu.exit.cleanup288_crit_edge, label %if.then285

list_add_tail_rcu.exit.cleanup288_crit_edge:      ; preds = %list_add_tail_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup288

if.then285:                                       ; preds = %list_add_tail_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  %204 = ptrtoint ptr %new_wdev to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %wdev168, ptr %new_wdev, align 4
  br label %cleanup288

cleanup288:                                       ; preds = %if.then285, %list_add_tail_rcu.exit.cleanup288_crit_edge, %if.then280, %if.then131, %if.then115, %if.end76.cleanup288_crit_edge, %if.end8.i.i.cleanup288_crit_edge
  %retval.2 = phi i32 [ %call278, %if.then280 ], [ 0, %if.then285 ], [ 0, %list_add_tail_rcu.exit.cleanup288_crit_edge ], [ -12, %if.end8.i.i.cleanup288_crit_edge ], [ -12, %if.end76.cleanup288_crit_edge ], [ -12, %if.then115 ], [ %call128, %if.then131 ]
  ret i32 %retval.2
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_assign_perm_addr(ptr noundef %local, ptr nocapture noundef writeonly %perm_addr, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 1
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %perm_addr1 = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %perm_addr, ptr %perm_addr1, i32 6)
  %3 = load ptr, ptr %wiphy, align 8
  %addr_mask = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %addr_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr_mask, align 4
  %add.ptr.i = getelementptr %struct.wiphy, ptr %3, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i, align 2
  %conv.i1017 = zext i16 %7 to i32
  %or.i = or i32 %5, %conv.i1017
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %n_addresses = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %n_addresses to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %n_addresses, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %9)
  %cmp = icmp ult i16 %9, 2
  br i1 %cmp, label %land.lhs.true.cleanup814_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.cleanup814_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup814

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %iflist_mtx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %iflist_mtx, i32 noundef 0) #14
  %10 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %type, label %if.end.sw.default_crit_edge [
    i32 6, label %if.end.out_unlock_crit_edge
    i32 4, label %sw.bb
    i32 8, label %if.end.sw.bb24_crit_edge
    i32 9, label %if.end.sw.bb24_crit_edge1153
  ]

if.end.sw.bb24_crit_edge1153:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb24

if.end.sw.bb24_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb24

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end.sw.default_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.default

sw.bb:                                            ; preds = %if.end
  %interfaces = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 62
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %sw.bb
  %sdata.0.in = phi ptr [ %interfaces, %sw.bb ], [ %sdata.0, %for.body.for.cond_crit_edge ]
  %11 = ptrtoint ptr %sdata.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %sdata.0 = load ptr, ptr %sdata.0.in, align 8
  %cmp9.not = icmp eq ptr %sdata.0, %interfaces
  br i1 %cmp9.not, label %for.cond.out_unlock_crit_edge, label %for.body

for.cond.out_unlock_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

for.body:                                         ; preds = %for.cond
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0, i32 0, i32 59
  %12 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vif, align 8
  %cmp12.not = icmp eq i32 %13, 3
  br i1 %cmp12.not, label %if.end15, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %addr17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0, i32 0, i32 59, i32 2
  %14 = call ptr @memcpy(ptr %perm_addr, ptr %addr17, i32 6)
  br label %out_unlock

sw.bb24:                                          ; preds = %if.end.sw.bb24_crit_edge, %if.end.sw.bb24_crit_edge1153
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 4
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i, align 4
  %17 = and i32 %16, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not = icmp eq i32 %17, 0
  br i1 %tobool.i.not, label %sw.bb24.sw.default_crit_edge, label %if.then27

sw.bb24.sw.default_crit_edge:                     ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.default

if.then27:                                        ; preds = %sw.bb24
  %interfaces29 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 62
  %18 = ptrtoint ptr %interfaces29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %sdata.11111 = load ptr, ptr %interfaces29, align 8
  %cmp36.not1112 = icmp eq ptr %sdata.11111, %interfaces29
  br i1 %cmp36.not1112, label %if.then27.sw.default_crit_edge, label %if.then27.for.body39_crit_edge

if.then27.for.body39_crit_edge:                   ; preds = %if.then27
  br label %for.body39

if.then27.sw.default_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.default

for.body39:                                       ; preds = %for.inc52.for.body39_crit_edge, %if.then27.for.body39_crit_edge
  %sdata.11113 = phi ptr [ %sdata.1, %for.inc52.for.body39_crit_edge ], [ %sdata.11111, %if.then27.for.body39_crit_edge ]
  %vif40 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.11113, i32 0, i32 59
  %19 = ptrtoint ptr %vif40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vif40, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %20)
  %cmp42.not = icmp eq i32 %20, 10
  br i1 %cmp42.not, label %if.end45, label %for.body39.for.inc52_crit_edge

for.body39.for.inc52_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc52

if.end45:                                         ; preds = %for.body39
  %state.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.11113, i32 0, i32 9
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i1018.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i1018.not, label %if.end45.for.inc52_crit_edge, label %if.end48

if.end45.for.inc52_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc52

if.end48:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %addr50 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.11113, i32 0, i32 59, i32 2
  %23 = call ptr @memcpy(ptr %perm_addr, ptr %addr50, i32 6)
  br label %out_unlock

for.inc52:                                        ; preds = %if.end45.for.inc52_crit_edge, %for.body39.for.inc52_crit_edge
  %24 = ptrtoint ptr %sdata.11113 to i32
  call void @__asan_load4_noabort(i32 %24)
  %sdata.1 = load ptr, ptr %sdata.11113, align 8
  %cmp36.not = icmp eq ptr %sdata.1, %interfaces29
  br i1 %cmp36.not, label %for.inc52.sw.default_crit_edge, label %for.inc52.for.body39_crit_edge

for.inc52.for.body39_crit_edge:                   ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body39

for.inc52.sw.default_crit_edge:                   ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.default

sw.default:                                       ; preds = %for.inc52.sw.default_crit_edge, %if.then27.sw.default_crit_edge, %sw.bb24.sw.default_crit_edge, %if.end.sw.default_crit_edge
  %25 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wiphy, align 8
  %n_addresses63 = getelementptr inbounds %struct.wiphy, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %n_addresses63 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %n_addresses63, align 2
  %conv64 = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp651114.not = icmp eq i16 %28, 0
  br i1 %cmp651114.not, label %sw.default.for.end107_crit_edge, label %for.body67.lr.ph

sw.default.for.end107_crit_edge:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end107

for.body67.lr.ph:                                 ; preds = %sw.default
  %interfaces69 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 62
  %addresses = getelementptr inbounds %struct.wiphy, ptr %26, i32 0, i32 3
  %29 = ptrtoint ptr %addresses to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %addresses, align 8
  br label %for.body67

for.body67:                                       ; preds = %for.inc105.for.body67_crit_edge, %for.body67.lr.ph
  %i.01115 = phi i32 [ 0, %for.body67.lr.ph ], [ %inc106, %for.inc105.for.body67_crit_edge ]
  %arrayidx101 = getelementptr %struct.mac_address, ptr %30, i32 %i.01115
  %add.ptr.i1019 = getelementptr i8, ptr %arrayidx101, i32 4
  br label %for.cond73

for.cond73:                                       ; preds = %for.body79.for.cond73_crit_edge, %for.body67
  %sdata.2.in = phi ptr [ %interfaces69, %for.body67 ], [ %sdata.2, %for.body79.for.cond73_crit_edge ]
  %31 = ptrtoint ptr %sdata.2.in to i32
  call void @__asan_load4_noabort(i32 %31)
  %sdata.2 = load ptr, ptr %sdata.2.in, align 8
  %cmp76.not = icmp eq ptr %sdata.2, %interfaces69
  br i1 %cmp76.not, label %cleanup, label %for.body79

for.body79:                                       ; preds = %for.cond73
  %addr85 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.2, i32 0, i32 59, i32 2
  %32 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx101, align 4
  %34 = ptrtoint ptr %addr85 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr85, align 4
  %xor.i = xor i32 %35, %33
  %36 = ptrtoint ptr %add.ptr.i1019 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr.i1019, align 2
  %add.ptr1.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.2, i32 0, i32 59, i32 2, i32 4
  %38 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %39, %37
  %xor3.i = zext i16 %xor37.i to i32
  %or.i1020 = or i32 %xor.i, %xor3.i
  %cmp.i1021 = icmp eq i32 %or.i1020, 0
  br i1 %cmp.i1021, label %for.inc105, label %for.body79.for.cond73_crit_edge

for.body79.for.cond73_crit_edge:                  ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond73

cleanup:                                          ; preds = %for.cond73
  call void @__sanitizer_cov_trace_pc() #16
  %40 = call ptr @memcpy(ptr %perm_addr, ptr %arrayidx101, i32 6)
  br label %for.end107

for.inc105:                                       ; preds = %for.body79
  %inc106 = add nuw nsw i32 %i.01115, 1
  %exitcond.not = icmp eq i32 %inc106, %conv64
  br i1 %exitcond.not, label %for.inc105.for.end107_crit_edge, label %for.inc105.for.body67_crit_edge

for.inc105.for.body67_crit_edge:                  ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body67

for.inc105.for.end107_crit_edge:                  ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end107

for.end107:                                       ; preds = %for.inc105.for.end107_crit_edge, %cleanup, %sw.default.for.end107_crit_edge
  %41 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wiphy, align 8
  %addr_mask110 = getelementptr inbounds %struct.wiphy, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %addr_mask110 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %addr_mask110, align 4
  %add.ptr.i1022 = getelementptr %struct.wiphy, ptr %42, i32 0, i32 2, i32 4
  %45 = ptrtoint ptr %add.ptr.i1022 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr.i1022, align 2
  %conv.i1023 = zext i16 %46 to i32
  %or.i1024 = or i32 %44, %conv.i1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i1024)
  %cmp.i1025 = icmp eq i32 %or.i1024, 0
  br i1 %cmp.i1025, label %for.end107.out_unlock_crit_edge, label %if.end114

for.end107.out_unlock_crit_edge:                  ; preds = %for.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end114:                                        ; preds = %for.end107
  %47 = ptrtoint ptr %addr_mask110 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %addr_mask110, align 1
  %conv120 = zext i8 %48 to i64
  %shl = shl nuw nsw i64 %conv120, 40
  %arrayidx121 = getelementptr %struct.wiphy, ptr %42, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %50 to i64
  %shl123 = shl nuw nsw i64 %conv122, 32
  %or = or i64 %shl123, %shl
  %arrayidx124 = getelementptr %struct.wiphy, ptr %42, i32 0, i32 2, i32 2
  %51 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %52 to i64
  %shl126 = shl nuw nsw i64 %conv125, 24
  %or127 = or i64 %or, %shl126
  %arrayidx128 = getelementptr %struct.wiphy, ptr %42, i32 0, i32 2, i32 3
  %53 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx128, align 1
  %conv129 = zext i8 %54 to i64
  %shl130 = shl nuw nsw i64 %conv129, 16
  %or131 = or i64 %or127, %shl130
  %55 = ptrtoint ptr %add.ptr.i1022 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %add.ptr.i1022, align 1
  %conv133 = zext i8 %56 to i64
  %shl134 = shl nuw nsw i64 %conv133, 8
  %or135 = or i64 %or131, %shl134
  %arrayidx136 = getelementptr %struct.wiphy, ptr %42, i32 0, i32 2, i32 5
  %57 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx136, align 1
  %conv137 = zext i8 %58 to i64
  %or139 = or i64 %or135, %conv137
  %conv.i1026 = trunc i64 %or139 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i1026)
  %cmp.i1027 = icmp eq i32 %conv.i1026, 0
  br i1 %cmp.i1027, label %if.then.i1030, label %if.end.i1031

if.then.i1030:                                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #16
  %shr.i1028 = lshr exact i64 %or, 32
  %conv2.i = trunc i64 %shr.i1028 to i32
  %59 = tail call i32 @llvm.cttz.i32(i32 %conv2.i, i1 false) #14, !range !151
  %add.i1029 = add nuw nsw i32 %59, 32
  br label %cond.false

if.end.i1031:                                     ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #16
  %60 = tail call i32 @llvm.cttz.i32(i32 %conv.i1026, i1 true) #14, !range !151
  br label %cond.false

cond.false:                                       ; preds = %if.end.i1031, %if.then.i1030
  %retval.0.i1032 = phi i32 [ %add.i1029, %if.then.i1030 ], [ %60, %if.end.i1031 ]
  %call.i = tail call i32 @__sw_hweight64(i64 noundef %or139) #14
  %add680 = add i32 %call.i, %retval.0.i1032
  %shr.i = lshr exact i64 %or, 32
  %conv.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #16
  %61 = tail call i32 @llvm.ctlz.i32(i32 %conv.i, i1 true) #14, !range !151
  %add.i = sub nuw nsw i32 64, %61
  br label %fls64.exit

if.end.i:                                         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #16
  %62 = tail call i32 @llvm.ctlz.i32(i32 %conv.i1026, i1 true) #14, !range !151
  %sub.i6.i = sub nuw nsw i32 32, %62
  %cond.i7.i = select i1 %cmp.i1027, i32 0, i32 %sub.i6.i
  br label %fls64.exit

fls64.exit:                                       ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %add.i, %if.then.i ], [ %cond.i7.i, %if.end.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add680, i32 %retval.0.i)
  %cmp682.not = icmp eq i32 %add680, %retval.0.i
  br i1 %cmp682.not, label %if.end687, label %do.end

do.end:                                           ; preds = %fls64.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call686 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #19
  br label %out_unlock

if.end687:                                        ; preds = %fls64.exit
  %63 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %wiphy, align 8
  %perm_addr690 = getelementptr inbounds %struct.wiphy, ptr %64, i32 0, i32 1
  %interfaces693 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 62
  br label %for.cond697

for.cond697:                                      ; preds = %for.body704.for.cond697_crit_edge, %if.end687
  %sdata.3.in = phi ptr [ %interfaces693, %if.end687 ], [ %sdata.3, %for.body704.for.cond697_crit_edge ]
  %65 = ptrtoint ptr %sdata.3.in to i32
  call void @__asan_load4_noabort(i32 %65)
  %sdata.3 = load ptr, ptr %sdata.3.in, align 8
  %cmp700.not = icmp eq ptr %sdata.3, %interfaces693
  br i1 %cmp700.not, label %for.cond697.for.end720_crit_edge, label %for.body704

for.cond697.for.end720_crit_edge:                 ; preds = %for.cond697
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end720

for.body704:                                      ; preds = %for.cond697
  %vif705 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.3, i32 0, i32 59
  %66 = ptrtoint ptr %vif705 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vif705, align 8
  %cmp707 = icmp eq i32 %67, 6
  br i1 %cmp707, label %for.body704.for.cond697_crit_edge, label %if.end710

for.body704.for.cond697_crit_edge:                ; preds = %for.body704
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond697

if.end710:                                        ; preds = %for.body704
  call void @__sanitizer_cov_trace_pc() #16
  %addr712 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.3, i32 0, i32 59, i32 2
  br label %for.end720

for.end720:                                       ; preds = %if.end710, %for.cond697.for.end720_crit_edge
  %m.0 = phi ptr [ %addr712, %if.end710 ], [ %perm_addr690, %for.cond697.for.end720_crit_edge ]
  %68 = ptrtoint ptr %m.0 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %m.0, align 1
  %conv722 = zext i8 %69 to i64
  %shl723 = shl nuw nsw i64 %conv722, 40
  %arrayidx724 = getelementptr i8, ptr %m.0, i32 1
  %70 = ptrtoint ptr %arrayidx724 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx724, align 1
  %conv725 = zext i8 %71 to i64
  %shl726 = shl nuw nsw i64 %conv725, 32
  %or727 = or i64 %shl726, %shl723
  %arrayidx728 = getelementptr i8, ptr %m.0, i32 2
  %72 = ptrtoint ptr %arrayidx728 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx728, align 1
  %conv729 = zext i8 %73 to i64
  %shl730 = shl nuw nsw i64 %conv729, 24
  %or731 = or i64 %or727, %shl730
  %arrayidx732 = getelementptr i8, ptr %m.0, i32 3
  %74 = ptrtoint ptr %arrayidx732 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx732, align 1
  %conv733 = zext i8 %75 to i64
  %shl734 = shl nuw nsw i64 %conv733, 16
  %or735 = or i64 %or731, %shl734
  %arrayidx736 = getelementptr i8, ptr %m.0, i32 4
  %76 = ptrtoint ptr %arrayidx736 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx736, align 1
  %conv737 = zext i8 %77 to i64
  %shl738 = shl nuw nsw i64 %conv737, 8
  %or739 = or i64 %or735, %shl738
  %arrayidx740 = getelementptr i8, ptr %m.0, i32 5
  %78 = ptrtoint ptr %arrayidx740 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx740, align 1
  %conv741 = zext i8 %79 to i64
  %or743 = or i64 %or739, %conv741
  br i1 %cmp.i1027, label %if.then.i1038, label %if.end.i1039

if.then.i1038:                                    ; preds = %for.end720
  call void @__sanitizer_cov_trace_pc() #16
  %80 = tail call i32 @llvm.cttz.i32(i32 %conv.i, i1 false) #14, !range !151
  %add.i1037 = add nuw nsw i32 %80, 32
  br label %__ffs64.exit1041

if.end.i1039:                                     ; preds = %for.end720
  call void @__sanitizer_cov_trace_pc() #16
  %81 = tail call i32 @llvm.cttz.i32(i32 %conv.i1026, i1 true) #14, !range !151
  br label %__ffs64.exit1041

__ffs64.exit1041:                                 ; preds = %if.end.i1039, %if.then.i1038
  %retval.0.i1040 = phi i32 [ %add.i1037, %if.then.i1038 ], [ %81, %if.end.i1039 ]
  %sh_prom = zext i32 %retval.0.i1040 to i64
  %shl745 = shl nuw i64 1, %sh_prom
  %and746 = and i64 %or743, %or139
  %neg = xor i64 %or139, -1
  %and747 = and i64 %or743, %neg
  %extract.t = trunc i64 %or743 to i8
  %extract = lshr exact i64 %or739, 8
  %extract.t1081 = trunc i64 %extract to i8
  br label %do.body750

do.body750:                                       ; preds = %cleanup806.do.body750_crit_edge, %__ffs64.exit1041
  %val.0 = phi i64 [ %and746, %__ffs64.exit1041 ], [ %add770, %cleanup806.do.body750_crit_edge ]
  %addr.0.off0 = phi i8 [ %extract.t, %__ffs64.exit1041 ], [ %extract.t1080, %cleanup806.do.body750_crit_edge ]
  %addr.0.off8 = phi i8 [ %extract.t1081, %__ffs64.exit1041 ], [ %extract.t1083, %cleanup806.do.body750_crit_edge ]
  %addr.0.off16 = phi i8 [ %75, %__ffs64.exit1041 ], [ %extract.t1087, %cleanup806.do.body750_crit_edge ]
  %addr.0.off24 = phi i8 [ %73, %__ffs64.exit1041 ], [ %extract.t1091, %cleanup806.do.body750_crit_edge ]
  %addr.0.off32 = phi i8 [ %71, %__ffs64.exit1041 ], [ %extract.t1095, %cleanup806.do.body750_crit_edge ]
  %addr.0.off40 = phi i8 [ %69, %__ffs64.exit1041 ], [ %extract.t1099, %cleanup806.do.body750_crit_edge ]
  %tmp_addr.sroa.12.5.insert.ext = zext i8 %addr.0.off0 to i16
  %tmp_addr.sroa.12.4.insert.ext = zext i8 %addr.0.off8 to i16
  %tmp_addr.sroa.12.4.insert.shift = shl nuw i16 %tmp_addr.sroa.12.4.insert.ext, 8
  %tmp_addr.sroa.12.4.insert.insert1054 = or i16 %tmp_addr.sroa.12.4.insert.shift, %tmp_addr.sroa.12.5.insert.ext
  %add770 = add i64 %val.0, %shl745
  %tmp_addr.sroa.0.sroa.10.0.insert.ext = zext i8 %addr.0.off16 to i32
  %tmp_addr.sroa.0.sroa.8.0.insert.ext = zext i8 %addr.0.off24 to i32
  %tmp_addr.sroa.0.sroa.8.0.insert.shift = shl nuw nsw i32 %tmp_addr.sroa.0.sroa.8.0.insert.ext, 8
  %tmp_addr.sroa.0.sroa.8.0.insert.insert = or i32 %tmp_addr.sroa.0.sroa.8.0.insert.shift, %tmp_addr.sroa.0.sroa.10.0.insert.ext
  %tmp_addr.sroa.0.sroa.6.0.insert.ext = zext i8 %addr.0.off32 to i32
  %tmp_addr.sroa.0.sroa.6.0.insert.shift = shl nuw nsw i32 %tmp_addr.sroa.0.sroa.6.0.insert.ext, 16
  %tmp_addr.sroa.0.sroa.6.0.insert.insert = or i32 %tmp_addr.sroa.0.sroa.8.0.insert.insert, %tmp_addr.sroa.0.sroa.6.0.insert.shift
  %tmp_addr.sroa.0.sroa.0.0.insert.ext = zext i8 %addr.0.off40 to i32
  %tmp_addr.sroa.0.sroa.0.0.insert.shift = shl nuw i32 %tmp_addr.sroa.0.sroa.0.0.insert.ext, 24
  %tmp_addr.sroa.0.sroa.0.0.insert.insert = or i32 %tmp_addr.sroa.0.sroa.6.0.insert.insert, %tmp_addr.sroa.0.sroa.0.0.insert.shift
  br label %for.cond776

for.cond776:                                      ; preds = %for.body783.for.cond776_crit_edge, %do.body750
  %sdata.4.in = phi ptr [ %interfaces693, %do.body750 ], [ %sdata.4, %for.body783.for.cond776_crit_edge ]
  %82 = ptrtoint ptr %sdata.4.in to i32
  call void @__asan_load4_noabort(i32 %82)
  %sdata.4 = load ptr, ptr %sdata.4.in, align 8
  %cmp779.not = icmp eq ptr %sdata.4, %interfaces693
  br i1 %cmp779.not, label %cleanup806.thread, label %for.body783

for.body783:                                      ; preds = %for.cond776
  %addr786 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.4, i32 0, i32 59, i32 2
  %83 = ptrtoint ptr %addr786 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %addr786, align 4
  %xor.i1042 = xor i32 %84, %tmp_addr.sroa.0.sroa.0.0.insert.insert
  %add.ptr1.i1044 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata.4, i32 0, i32 59, i32 2, i32 4
  %85 = ptrtoint ptr %add.ptr1.i1044 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %add.ptr1.i1044, align 2
  %xor37.i1045 = xor i16 %86, %tmp_addr.sroa.12.4.insert.insert1054
  %xor3.i1046 = zext i16 %xor37.i1045 to i32
  %or.i1047 = or i32 %xor.i1042, %xor3.i1046
  %cmp.i1048 = icmp eq i32 %or.i1047, 0
  br i1 %cmp.i1048, label %cleanup806, label %for.body783.for.cond776_crit_edge

for.body783.for.cond776_crit_edge:                ; preds = %for.body783
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond776

cleanup806.thread:                                ; preds = %for.cond776
  call void @__sanitizer_cov_trace_pc() #16
  %87 = ptrtoint ptr %perm_addr to i32
  call void @__asan_storeN_noabort(i32 %87, i32 4)
  store i32 %tmp_addr.sroa.0.sroa.0.0.insert.insert, ptr %perm_addr, align 1
  %tmp_addr.sroa.12.0.perm_addr.sroa_idx = getelementptr inbounds i8, ptr %perm_addr, i32 4
  %88 = ptrtoint ptr %tmp_addr.sroa.12.0.perm_addr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 %tmp_addr.sroa.12.4.insert.insert1054, ptr %tmp_addr.sroa.12.0.perm_addr.sroa_idx, align 1
  br label %out_unlock

cleanup806:                                       ; preds = %for.body783
  %and804 = and i64 %add770, %or139
  %or805 = or i64 %and804, %and747
  %cmp810.not = icmp eq i64 %or805, %or743
  %extract.t1080 = trunc i64 %or805 to i8
  %extract1082 = lshr i64 %or805, 8
  %extract.t1083 = trunc i64 %extract1082 to i8
  %extract1086 = lshr i64 %or805, 16
  %extract.t1087 = trunc i64 %extract1086 to i8
  %extract1090 = lshr i64 %or805, 24
  %extract.t1091 = trunc i64 %extract1090 to i8
  %extract1094 = lshr i64 %or805, 32
  %extract.t1095 = trunc i64 %extract1094 to i8
  %extract1098 = lshr i64 %or805, 40
  %extract.t1099 = trunc i64 %extract1098 to i8
  br i1 %cmp810.not, label %cleanup806.out_unlock_crit_edge, label %cleanup806.do.body750_crit_edge

cleanup806.do.body750_crit_edge:                  ; preds = %cleanup806
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body750

cleanup806.out_unlock_crit_edge:                  ; preds = %cleanup806
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

out_unlock:                                       ; preds = %cleanup806.out_unlock_crit_edge, %cleanup806.thread, %do.end, %for.end107.out_unlock_crit_edge, %if.end48, %if.end15, %for.cond.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %iflist_mtx) #14
  br label %cleanup814

cleanup814:                                       ; preds = %out_unlock, %land.lhs.true.cleanup814_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_if_setup_no_queue(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ether_setup(ptr noundef %dev) #14
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %1, -526337
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ieee80211_dataif_ops, ptr %netdev_ops.i, align 8
  %needs_free_netdev.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %3 = ptrtoint ptr %needs_free_netdev.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %needs_free_netdev.i, align 8
  %priv_destructor.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 125
  %4 = ptrtoint ptr %priv_destructor.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ieee80211_if_free, ptr %priv_destructor.i, align 4
  %or = or i64 %and.i, 524288
  store i64 %or, ptr %priv_flags.i, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_if_setup(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ether_setup(ptr noundef %dev) #14
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags, align 16
  %and = and i64 %1, -2049
  store i64 %and, ptr %priv_flags, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ieee80211_dataif_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %3 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %needs_free_netdev, align 8
  %priv_destructor = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 125
  %4 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ieee80211_if_free, ptr %priv_destructor, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_if_free(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 64
  tail call void @free_percpu(ptr noundef %2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_txq_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_init_frag_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_dfs_cac_timer_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_delayed_tailroom_dec(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_vht_mask_from_cap(i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_set_default_ethtool_ops(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_if_remove(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b60 = load i1, ptr @ieee80211_if_remove.__already_done, align 1
  br i1 %.b60, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !145

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ieee80211_if_remove.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2165, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 2165) #14
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local, align 4
  %iflist_mtx = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %iflist_mtx, i32 noundef 0) #14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sdata) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end29.list_del_rcu.exit_crit_edge

if.end29.list_del_rcu.exit_crit_edge:             ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %sdata, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdata, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end29.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %sdata, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %9 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %local, align 4
  %iflist_mtx38 = getelementptr inbounds %struct.ieee80211_local, ptr %10, i32 0, i32 64
  tail call void @mutex_unlock(ptr noundef %iflist_mtx38) #14
  %txq = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 8
  %11 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %txq, align 8
  %tobool39.not = icmp eq ptr %12, null
  br i1 %tobool39.not, label %list_del_rcu.exit.if.end45_crit_edge, label %if.then40

list_del_rcu.exit.if.end45_crit_edge:             ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then40:                                        ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %local, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 -244
  tail call void @ieee80211_txq_purge(ptr noundef %14, ptr noundef %add.ptr.i) #14
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %list_del_rcu.exit.if.end45_crit_edge
  tail call void @synchronize_rcu() #14
  %wdev = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1
  tail call void @cfg80211_unregister_wdev(ptr noundef %wdev) #14
  %dev = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %tobool46.not = icmp eq ptr %16, null
  br i1 %tobool46.not, label %if.then47, label %if.end45.if.end48_crit_edge

if.end45.if.end48_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then47:                                        ; preds = %if.end45
  tail call void @ieee80211_free_keys(ptr noundef %sdata, i1 noundef zeroext false) #14
  tail call void @ieee80211_debugfs_remove_netdev(ptr noundef %sdata) #14
  %frags.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 11
  tail call void @ieee80211_destroy_frag_cache(ptr noundef %frags.i) #14
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %17 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vif.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %18)
  %cmp.i.i = icmp eq i32 %18, 7
  br i1 %cmp.i.i, label %if.then.i, label %if.then47.ieee80211_teardown_sdata.exit_crit_edge

if.then47.ieee80211_teardown_sdata.exit_crit_edge: ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_teardown_sdata.exit

if.then.i:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_mesh_teardown_sdata(ptr noundef %sdata) #14
  br label %ieee80211_teardown_sdata.exit

ieee80211_teardown_sdata.exit:                    ; preds = %if.then.i, %if.then47.ieee80211_teardown_sdata.exit_crit_edge
  tail call void @kfree(ptr noundef %sdata) #14
  br label %if.end48

if.end48:                                         ; preds = %ieee80211_teardown_sdata.exit, %if.end45.if.end48_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_txq_purge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_unregister_wdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_sdata_stop(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 9
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %land.rhs, label %if.end39.critedge

land.rhs:                                         ; preds = %entry
  %.b43 = load i1, ptr @ieee80211_sdata_stop.__already_done, align 1
  br i1 %.b43, label %land.rhs.return_crit_edge, label %if.then, !prof !145

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ieee80211_sdata_stop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2186, i32 noundef 9, ptr noundef null) #14
  br label %return

if.end39.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @ieee80211_do_stop(ptr noundef %sdata, i1 noundef zeroext true)
  br label %return

return:                                           ; preds = %if.end39.critedge, %if.then, %land.rhs.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_do_stop(ptr noundef %sdata, i1 noundef zeroext %going_down) unnamed_addr #0 align 64 {
entry:
  %i = alloca i32, align 4
  %chandef = alloca %struct.cfg80211_chan_def, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #14
  %2 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %i, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %chandef) #14
  %3 = call ptr @memset(ptr %chandef, i32 255, i32 28)
  %state = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #14
  %scan_sdata = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 85
  %4 = ptrtoint ptr %scan_sdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %scan_sdata, align 8
  %cmp = icmp eq ptr %5, %sdata
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_scan_cancel(ptr noundef %1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_tx_stop_all_queues(ptr noundef nonnull %7) #14
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  tail call void @ieee80211_roc_purge(ptr noundef %1, ptr noundef %sdata) #14
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %8 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vif, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %9, label %if.end8.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb9
    i32 6, label %sw.bb10
  ]

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_mgd_stop(ptr noundef %sdata) #14
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_ibss_stop(ptr noundef %sdata) #14
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end8
  %u = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %11 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %u, align 8
  %and = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end14, label %sw.bb10.sw.epilog_crit_edge

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end14:                                         ; preds = %sw.bb10
  %list = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 0, i32 2
  %call.i.i622 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #14
  br i1 %call.i.i622, label %if.end.i.i, label %if.end14.list_del_rcu.exit_crit_edge

if.end14.list_del_rcu.exit_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 0, i32 3
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end14.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 0, i32 3
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %list_del_rcu.exit, %sw.bb10.sw.epilog_crit_edge, %sw.bb9, %sw.bb, %if.end8.sw.epilog_crit_edge
  %call.i = tail call i32 @__sta_info_flush(ptr noundef %sdata, i1 noundef zeroext false) #14
  %20 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp18.not = icmp ne i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp19 = icmp sgt i32 %call.i, 0
  %spec.select = select i1 %cmp18.not, i1 %cmp19, i1 false
  br i1 %spec.select, label %land.rhs23, label %sw.epilog.if.end56_crit_edge

sw.epilog.if.end56_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

land.rhs23:                                       ; preds = %sw.epilog
  %.b621 = load i1, ptr @ieee80211_do_stop.__already_done, align 1
  br i1 %.b621, label %land.rhs23.if.end56_crit_edge, label %if.then30, !prof !145

land.rhs23.if.end56_crit_edge:                    ; preds = %land.rhs23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

if.then30:                                        ; preds = %land.rhs23
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ieee80211_do_stop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 425, i32 noundef 9, ptr noundef null) #14
  br label %if.end56

if.end56:                                         ; preds = %if.then30, %land.rhs23.if.end56_crit_edge, %sw.epilog.if.end56_crit_edge
  %flags64 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 8
  %22 = ptrtoint ptr %flags64 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags64, align 8
  %and65 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end56.if.end68_crit_edge, label %if.then67

if.end56.if.end68_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

if.then67:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  %iff_allmultis = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 57
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %iff_allmultis, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %iff_allmultis, i32 1, i32 3, i32 1) #14
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %iff_allmultis, ptr %iff_allmultis, i32 1, ptr elementtype(i32) %iff_allmultis) #14, !srcloc !153
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end56.if.end68_crit_edge
  %25 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vif, align 8
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %26, label %if.end68.if.end81_crit_edge [
    i32 3, label %if.then72
    i32 1, label %if.end68.if.end81.sink.split_crit_edge
  ]

if.end68.if.end81.sink.split_crit_edge:           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81.sink.split

if.end68.if.end81_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  %fif_pspoll = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 20
  %28 = ptrtoint ptr %fif_pspoll to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fif_pspoll, align 4
  %dec = add i32 %29, -1
  store i32 %dec, ptr %fif_pspoll, align 4
  br label %if.end81.sink.split

if.end81.sink.split:                              ; preds = %if.then72, %if.end68.if.end81.sink.split_crit_edge
  %fif_probe_req = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 21
  %30 = ptrtoint ptr %fif_probe_req to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fif_probe_req, align 8
  %dec79 = add i32 %31, -1
  store i32 %dec79, ptr %fif_probe_req, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.end81.sink.split, %if.end68.if.end81_crit_edge
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  %tobool83.not = icmp eq ptr %33, null
  br i1 %tobool83.not, label %if.end81.if.end90_crit_edge, label %if.then84

if.end81.if.end90_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  %nested_level.i = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 73
  %34 = ptrtoint ptr %nested_level.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %nested_level.i, align 1
  tail call fastcc void @local_bh_disable() #14
  %addr_list_lock.i = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 63
  %conv.i = zext i8 %35 to i32
  tail call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i, i32 noundef %conv.i) #14
  %filter_lock = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_bh(ptr noundef %filter_lock) #14
  %mc_list = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 29
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  %mc = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 66
  %addr_len = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 56
  %38 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %39 to i32
  tail call void @__hw_addr_unsync(ptr noundef %mc_list, ptr noundef %mc, i32 noundef %conv) #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %filter_lock) #14
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 8
  %addr_list_lock.i623 = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 63
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i623) #14
  br label %if.end90

if.end90:                                         ; preds = %if.then84, %if.end81.if.end90_crit_edge
  %dynamic_ps_timer = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 129
  %call91 = tail call i32 @del_timer_sync(ptr noundef %dynamic_ps_timer) #14
  %dynamic_ps_enable_work = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 127
  %call92 = tail call zeroext i1 @cancel_work_sync(ptr noundef %dynamic_ps_enable_work) #14
  %recalc_smps = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 39
  %call93 = tail call zeroext i1 @cancel_work_sync(ptr noundef %recalc_smps) #14
  %mtx.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #14
  %mtx = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 66
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #14
  %csa_active = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 4
  %42 = ptrtoint ptr %csa_active to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %csa_active, align 1
  %43 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp97 = icmp eq i32 %44, 2
  br i1 %cmp97, label %if.then99, label %if.end90.if.end101_crit_edge

if.end90.if.end101_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101

if.then99:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #16
  %csa_waiting_bcn = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 36, i32 0, i32 0, i32 4
  %45 = ptrtoint ptr %csa_waiting_bcn to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %csa_waiting_bcn, align 8
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %if.end90.if.end101_crit_edge
  %csa_block_tx = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 30
  %46 = ptrtoint ptr %csa_block_tx to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %csa_block_tx, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool102.not = icmp eq i8 %47, 0
  br i1 %tobool102.not, label %if.end101.if.end105_crit_edge, label %if.then103

if.end101.if.end105_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105

if.then103:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_wake_vif_queues(ptr noundef %1, ptr noundef %sdata, i32 noundef 2) #14
  %48 = ptrtoint ptr %csa_block_tx to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %csa_block_tx, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then103, %if.end101.if.end105_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx) #14
  tail call void @mutex_unlock(ptr noundef %mtx.i) #14
  %csa_finalize_work = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 29
  %call107 = tail call zeroext i1 @cancel_work_sync(ptr noundef %csa_finalize_work) #14
  %color_change_finalize_work = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 32
  %call108 = tail call zeroext i1 @cancel_work_sync(ptr noundef %color_change_finalize_work) #14
  %dfs_cac_timer_work = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 48
  %call109 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dfs_cac_timer_work) #14
  %cac_started = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 36
  %49 = ptrtoint ptr %cac_started to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %cac_started, align 1, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool110.not = icmp eq i8 %50, 0
  br i1 %tobool110.not, label %if.end105.if.end148_crit_edge, label %if.then111

if.end105.if.end148_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end148

if.then111:                                       ; preds = %if.end105
  %chandef113 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32
  %51 = call ptr @memcpy(ptr %chandef, ptr %chandef113, i32 28)
  %suspended = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 31
  %52 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %suspended, align 1, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool115.not = icmp eq i8 %53, 0
  br i1 %tobool115.not, label %if.then111.if.end137_crit_edge, label %do.end131, !prof !145

if.then111.if.end137_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end137

do.end131:                                        ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 471, i32 noundef 9, ptr noundef null) #14
  br label %if.end137

if.end137:                                        ; preds = %do.end131, %if.then111.if.end137_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #14
  tail call void @ieee80211_vif_release_channel(ptr noundef %sdata) #14
  tail call void @mutex_unlock(ptr noundef %mtx) #14
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 8
  call void @cfg80211_cac_event(ptr noundef %55, ptr noundef nonnull %chandef, i32 noundef 2, i32 noundef 3264) #14
  br label %if.end148

if.end148:                                        ; preds = %if.end137, %if.end105.if.end148_crit_edge
  %56 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vif, align 8
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %57, label %if.end148.if.end223_crit_edge [
    i32 3, label %if.then153
    i32 4, label %if.then194
  ]

if.end148.if.end223_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end223

if.then153:                                       ; preds = %if.end148
  %vlans = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 0, i32 4
  %59 = ptrtoint ptr %vlans to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %vlans, align 4
  %cmp.i.not = icmp eq ptr %60, %vlans
  br i1 %cmp.i.not, label %if.then153.if.end223_crit_edge, label %do.end175, !prof !145

if.then153.if.end223_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end223

do.end175:                                        ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 481, i32 noundef 9, ptr noundef null) #14
  br label %if.end223

if.then194:                                       ; preds = %if.end148
  %bss = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 49
  %61 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bss, align 4
  %bc_buf = getelementptr inbounds %struct.ieee80211_if_ap, ptr %62, i32 0, i32 6, i32 1
  %lock = getelementptr inbounds %struct.ieee80211_if_ap, ptr %62, i32 0, i32 6, i32 1, i32 2
  %call202 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %63 = ptrtoint ptr %bc_buf to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bc_buf, align 4
  %cmp210.not639 = icmp eq ptr %64, %bc_buf
  br i1 %cmp210.not639, label %if.then194.for.end_crit_edge, label %for.body.lr.ph

if.then194.for.end_crit_edge:                     ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then194
  %qlen.i = getelementptr inbounds %struct.ieee80211_if_ap, ptr %62, i32 0, i32 6, i32 1, i32 1
  %total_ps_buffered = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 124
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %skb.0640 = phi ptr [ %64, %for.body.lr.ph ], [ %tmp.0641, %for.inc.for.body_crit_edge ]
  %65 = ptrtoint ptr %skb.0640 to i32
  call void @__asan_load4_noabort(i32 %65)
  %tmp.0641 = load ptr, ptr %skb.0640, align 8
  %66 = getelementptr inbounds %struct.anon.41, ptr %skb.0640, i32 0, i32 2
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 8
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 8
  %cmp213 = icmp eq ptr %68, %70
  br i1 %cmp213, label %if.then215, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then215:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %71 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %72, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %73 = ptrtoint ptr %skb.0640 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %skb.0640, align 8
  %prev9.i = getelementptr inbounds %struct.anon.41, ptr %skb.0640, i32 0, i32 1
  %75 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %skb.0640, align 8
  %prev17.i = getelementptr inbounds %struct.anon.41, ptr %74, i32 0, i32 1
  %77 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %76, ptr %prev17.i, align 4
  %78 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %74, ptr %76, align 8
  %79 = ptrtoint ptr %total_ps_buffered to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %total_ps_buffered, align 4
  %dec217 = add i32 %80, -1
  store i32 %dec217, ptr %total_ps_buffered, align 4
  call void @ieee80211_free_txskb(ptr noundef %1, ptr noundef %skb.0640) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then215, %for.body.for.inc_crit_edge
  %cmp210.not = icmp eq ptr %tmp.0641, %bc_buf
  br i1 %cmp210.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then194.for.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call202) #14
  br label %if.end223

if.end223:                                        ; preds = %for.end, %do.end175, %if.then153.if.end223_crit_edge, %if.end148.if.end223_crit_edge
  br i1 %going_down, label %if.then225, label %if.end223.if.end227_crit_edge

if.end223.if.end227_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end227

if.then225:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #16
  %open_count = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 13
  %81 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %open_count, align 8
  %dec226 = add i32 %82, -1
  store i32 %dec226, ptr %open_count, align 8
  br label %if.end227

if.end227:                                        ; preds = %if.then225, %if.end223.if.end227_crit_edge
  %83 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %vif, align 8
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %84, label %if.end227.sw.default295_crit_edge [
    i32 4, label %sw.bb230
    i32 6, label %sw.bb248
    i32 12, label %sw.bb265
    i32 10, label %do.body288
  ]

if.end227.sw.default295_crit_edge:                ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.default295

sw.bb230:                                         ; preds = %if.end227
  call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #14
  %u232 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %call.i.i626 = call zeroext i1 @__list_del_entry_valid(ptr noundef %u232) #14
  br i1 %call.i.i626, label %if.end.i.i629, label %sw.bb230.list_del.exit_crit_edge

sw.bb230.list_del.exit_crit_edge:                 ; preds = %sw.bb230
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i629:                                    ; preds = %sw.bb230
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i627 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i627 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev.i.i627, align 4
  %88 = ptrtoint ptr %u232 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %u232, align 4
  %prev1.i.i.i628 = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %prev1.i.i.i628 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %prev1.i.i.i628, align 4
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %89, ptr %87, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i629, %sw.bb230.list_del.exit_crit_edge
  %92 = ptrtoint ptr %u232 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 256 to ptr), ptr %u232, align 4
  %prev.i630 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i630 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i630, align 4
  call void @mutex_unlock(ptr noundef %mtx) #14
  %chanctx_conf = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %94 = ptrtoint ptr %chanctx_conf to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr null, ptr %chanctx_conf, align 4
  call void @ieee80211_free_keys(ptr noundef %sdata, i1 noundef zeroext true) #14
  br label %do.body299

sw.bb248:                                         ; preds = %if.end227
  %u249 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %95 = ptrtoint ptr %u249 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %u249, align 8
  %and251 = and i32 %96, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and251)
  %tobool252.not = icmp eq i32 %and251, 0
  br i1 %tobool252.not, label %if.end255, label %if.then253

if.then253:                                       ; preds = %sw.bb248
  call void @__sanitizer_cov_trace_pc() #16
  %cooked_mntrs = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 15
  %97 = ptrtoint ptr %cooked_mntrs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cooked_mntrs, align 8
  %dec254 = add i32 %98, -1
  store i32 %dec254, ptr %cooked_mntrs, align 8
  br label %do.body299

if.end255:                                        ; preds = %sw.bb248
  %monitors = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 14
  %99 = ptrtoint ptr %monitors to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %monitors, align 4
  %dec256 = add i32 %100, -1
  store i32 %dec256, ptr %monitors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec256)
  %cmp258 = icmp eq i32 %dec256, 0
  br i1 %cmp258, label %if.then260, label %if.end255.if.end264_crit_edge

if.end255.if.end264_crit_edge:                    ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end264

if.then260:                                       ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #16
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %1, align 8
  %and263 = and i32 %102, -2
  store i32 %and263, ptr %1, align 8
  br label %if.end264

if.end264:                                        ; preds = %if.then260, %if.end255.if.end264_crit_edge
  %hw_reconf_flags.0 = phi i32 [ 8, %if.then260 ], [ 0, %if.end255.if.end264_crit_edge ]
  %103 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %local1, align 4
  %105 = ptrtoint ptr %u249 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %u249, align 8
  %and.i = and i32 %106, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end264.do.body3.i_crit_edge, label %if.then.i

if.end264.do.body3.i_crit_edge:                   ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body3.i

if.then.i:                                        ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #16
  %fif_fcsfail.i = getelementptr inbounds %struct.ieee80211_local, ptr %104, i32 0, i32 16
  %107 = ptrtoint ptr %fif_fcsfail.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %fif_fcsfail.i, align 4
  %add.i = add i32 %108, -1
  store i32 %add.i, ptr %fif_fcsfail.i, align 4
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %if.end264.do.body3.i_crit_edge
  %and4.i = and i32 %106, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %do.body3.i.do.body11.i_crit_edge, label %if.then6.i

do.body3.i.do.body11.i_crit_edge:                 ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11.i

if.then6.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  %fif_plcpfail.i = getelementptr inbounds %struct.ieee80211_local, ptr %104, i32 0, i32 17
  %109 = ptrtoint ptr %fif_plcpfail.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %fif_plcpfail.i, align 8
  %add7.i = add i32 %110, -1
  store i32 %add7.i, ptr %fif_plcpfail.i, align 8
  br label %do.body11.i

do.body11.i:                                      ; preds = %if.then6.i, %do.body3.i.do.body11.i_crit_edge
  %and12.i = and i32 %106, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %do.body11.i.do.body27.i_crit_edge, label %if.then14.i

do.body11.i.do.body27.i_crit_edge:                ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27.i

if.then14.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #16
  %fif_control.i = getelementptr inbounds %struct.ieee80211_local, ptr %104, i32 0, i32 18
  %111 = ptrtoint ptr %fif_control.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %fif_control.i, align 4
  %add15.i = add i32 %112, -1
  store i32 %add15.i, ptr %fif_control.i, align 4
  %fif_pspoll.i = getelementptr inbounds %struct.ieee80211_local, ptr %104, i32 0, i32 20
  %113 = ptrtoint ptr %fif_pspoll.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %fif_pspoll.i, align 4
  %add23.i = add i32 %114, -1
  store i32 %add23.i, ptr %fif_pspoll.i, align 4
  br label %do.body27.i

do.body27.i:                                      ; preds = %if.then14.i, %do.body11.i.do.body27.i_crit_edge
  %and28.i = and i32 %106, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %do.body27.i.do.body299_crit_edge, label %if.then30.i

do.body27.i.do.body299_crit_edge:                 ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body299

if.then30.i:                                      ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #16
  %fif_other_bss.i = getelementptr inbounds %struct.ieee80211_local, ptr %104, i32 0, i32 19
  %115 = ptrtoint ptr %fif_other_bss.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %fif_other_bss.i, align 8
  %add31.i = add i32 %116, -1
  store i32 %add31.i, ptr %fif_other_bss.i, align 8
  br label %do.body299

sw.bb265:                                         ; preds = %if.end227
  %func_lock = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %func_lock) #14
  %function_inst_ids = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 1
  %117 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %i, align 4
  %call269642 = call ptr @idr_get_next(ptr noundef %function_inst_ids, ptr noundef nonnull %i) #14
  %cmp270.not643 = icmp eq ptr %call269642, null
  br i1 %cmp270.not643, label %sw.bb265.for.end277_crit_edge, label %sw.bb265.for.body272_crit_edge

sw.bb265.for.body272_crit_edge:                   ; preds = %sw.bb265
  br label %for.body272

sw.bb265.for.end277_crit_edge:                    ; preds = %sw.bb265
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end277

for.body272:                                      ; preds = %for.body272.for.body272_crit_edge, %sw.bb265.for.body272_crit_edge
  %call269644 = phi ptr [ %call269, %for.body272.for.body272_crit_edge ], [ %call269642, %sw.bb265.for.body272_crit_edge ]
  %118 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %i, align 4
  %call275 = call ptr @idr_remove(ptr noundef %function_inst_ids, i32 noundef %119) #14
  call void @cfg80211_free_nan_func(ptr noundef nonnull %call269644) #14
  %120 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %i, align 4
  %add = add i32 %121, 1
  store i32 %add, ptr %i, align 4
  %call269 = call ptr @idr_get_next(ptr noundef %function_inst_ids, ptr noundef nonnull %i) #14
  %cmp270.not = icmp eq ptr %call269, null
  br i1 %cmp270.not, label %for.body272.for.end277_crit_edge, label %for.body272.for.body272_crit_edge

for.body272.for.body272_crit_edge:                ; preds = %for.body272
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body272

for.body272.for.end277_crit_edge:                 ; preds = %for.body272
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end277

for.end277:                                       ; preds = %for.body272.for.end277_crit_edge, %sw.bb265.for.end277_crit_edge
  call void @idr_destroy(ptr noundef %function_inst_ids) #14
  call void @_raw_spin_unlock_bh(ptr noundef %func_lock) #14
  br label %do.body299

do.body288:                                       ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #16
  %p2p_sdata = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 146
  %122 = ptrtoint ptr %p2p_sdata to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr null, ptr %p2p_sdata, align 8
  br label %sw.default295

sw.default295:                                    ; preds = %do.body288, %if.end227.sw.default295_crit_edge
  %work = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 40
  %call296 = call zeroext i1 @cancel_work_sync(ptr noundef %work) #14
  call void @ieee80211_free_keys(ptr noundef %sdata, i1 noundef zeroext true) #14
  %skb_queue = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 41
  call void @skb_queue_purge(ptr noundef %skb_queue) #14
  %status_queue = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 42
  call void @skb_queue_purge(ptr noundef %status_queue) #14
  br label %do.body299

do.body299:                                       ; preds = %sw.default295, %for.end277, %if.then30.i, %do.body27.i.do.body299_crit_edge, %if.then253, %list_del.exit
  %hw_reconf_flags.1 = phi i32 [ 0, %sw.default295 ], [ 0, %for.end277 ], [ 0, %if.then253 ], [ 0, %list_del.exit ], [ %hw_reconf_flags.0, %do.body27.i.do.body299_crit_edge ], [ %hw_reconf_flags.0, %if.then30.i ]
  %queue_stop_reason_lock = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 12
  %call306 = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_stop_reason_lock) #14
  %123 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %i, align 4
  br label %for.body314

for.body314:                                      ; preds = %for.inc336.for.body314_crit_edge, %do.body299
  %storemerge651 = phi i32 [ 0, %do.body299 ], [ %inc, %for.inc336.for.body314_crit_edge ]
  %arrayidx = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 53, i32 %storemerge651
  %124 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx, align 4
  %126 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %i, align 4
  %arrayidx319646 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 53, i32 %127
  %cmp320.not647 = icmp eq ptr %125, %arrayidx319646
  br i1 %cmp320.not647, label %for.body314.for.inc336_crit_edge, label %for.body314.for.body322_crit_edge

for.body314.for.body322_crit_edge:                ; preds = %for.body314
  br label %for.body322

for.body314.for.inc336_crit_edge:                 ; preds = %for.body314
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc336

for.body322:                                      ; preds = %if.end332.for.body322_crit_edge, %for.body314.for.body322_crit_edge
  %128 = phi i32 [ %141, %if.end332.for.body322_crit_edge ], [ %127, %for.body314.for.body322_crit_edge ]
  %skb.1648 = phi ptr [ %tmp.1649, %if.end332.for.body322_crit_edge ], [ %125, %for.body314.for.body322_crit_edge ]
  %129 = ptrtoint ptr %skb.1648 to i32
  call void @__asan_load4_noabort(i32 %129)
  %tmp.1649 = load ptr, ptr %skb.1648, align 8
  %vif324 = getelementptr inbounds %struct.sk_buff, ptr %skb.1648, i32 0, i32 3, i32 24
  %130 = ptrtoint ptr %vif324 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %vif324, align 8
  %cmp326 = icmp eq ptr %131, %vif
  br i1 %cmp326, label %if.then328, label %for.body322.if.end332_crit_edge

for.body322.if.end332_crit_edge:                  ; preds = %for.body322
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end332

if.then328:                                       ; preds = %for.body322
  call void @__sanitizer_cov_trace_pc() #16
  %qlen.i631 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 53, i32 %128, i32 1
  %132 = ptrtoint ptr %qlen.i631 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %qlen.i631, align 4
  %sub.i632 = add i32 %133, -1
  store volatile i32 %sub.i632, ptr %qlen.i631, align 4
  %134 = ptrtoint ptr %skb.1648 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %skb.1648, align 8
  %prev9.i633 = getelementptr inbounds %struct.anon.41, ptr %skb.1648, i32 0, i32 1
  %136 = ptrtoint ptr %prev9.i633 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %prev9.i633, align 4
  store ptr null, ptr %prev9.i633, align 4
  store ptr null, ptr %skb.1648, align 8
  %prev17.i634 = getelementptr inbounds %struct.anon.41, ptr %135, i32 0, i32 1
  %138 = ptrtoint ptr %prev17.i634 to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %137, ptr %prev17.i634, align 4
  %139 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %135, ptr %137, align 8
  call void @ieee80211_free_txskb(ptr noundef %1, ptr noundef %skb.1648) #14
  br label %if.end332

if.end332:                                        ; preds = %if.then328, %for.body322.if.end332_crit_edge
  %140 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %i, align 4
  %arrayidx319 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 53, i32 %141
  %cmp320.not = icmp eq ptr %tmp.1649, %arrayidx319
  br i1 %cmp320.not, label %if.end332.for.inc336_crit_edge, label %if.end332.for.body322_crit_edge

if.end332.for.body322_crit_edge:                  ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body322

if.end332.for.inc336_crit_edge:                   ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc336

for.inc336:                                       ; preds = %if.end332.for.inc336_crit_edge, %for.body314.for.inc336_crit_edge
  %.lcssa = phi i32 [ %127, %for.body314.for.inc336_crit_edge ], [ %141, %if.end332.for.inc336_crit_edge ]
  %inc = add i32 %.lcssa, 1
  %142 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %inc, ptr %i, align 4
  %cmp312 = icmp slt i32 %inc, 16
  br i1 %cmp312, label %for.inc336.for.body314_crit_edge, label %for.end337

for.inc336.for.body314_crit_edge:                 ; preds = %for.inc336
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body314

for.end337:                                       ; preds = %for.inc336
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_stop_reason_lock, i32 noundef %call306) #14
  %143 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %144)
  %cmp341 = icmp eq i32 %144, 4
  br i1 %cmp341, label %if.then343, label %for.end337.if.end344_crit_edge

for.end337.if.end344_crit_edge:                   ; preds = %for.end337
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end344

if.then343:                                       ; preds = %for.end337
  call void @__sanitizer_cov_trace_pc() #16
  call void @ieee80211_txq_remove_vlan(ptr noundef %1, ptr noundef %sdata) #14
  br label %if.end344

if.end344:                                        ; preds = %if.then343, %for.end337.if.end344_crit_edge
  %bss345 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 49
  %145 = ptrtoint ptr %bss345 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %bss345, align 4
  %open_count346 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 13
  %146 = ptrtoint ptr %open_count346 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %open_count346, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp347 = icmp eq i32 %147, 0
  br i1 %cmp347, label %if.then349, label %if.end344.if.end350_crit_edge

if.end344.if.end350_crit_edge:                    ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end350

if.then349:                                       ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #16
  call void @ieee80211_clear_tx_pending(ptr noundef %1) #14
  br label %if.end350

if.end350:                                        ; preds = %if.then349, %if.end344.if.end350_crit_edge
  %beacon_int = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 19
  %148 = ptrtoint ptr %beacon_int to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 0, ptr %beacon_int, align 2
  %suspended353 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 31
  %149 = ptrtoint ptr %suspended353 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %suspended353, align 1, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool354.not = icmp eq i8 %150, 0
  br i1 %tobool354.not, label %if.end423, label %if.then355

if.then355:                                       ; preds = %if.end350
  %wowlan = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 37
  %151 = ptrtoint ptr %wowlan to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %wowlan, align 1, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool357.not = icmp eq i8 %152, 0
  br i1 %tobool357.not, label %if.then355.if.end379_crit_edge, label %do.end373, !prof !145

if.then355.if.end379_crit_edge:                   ; preds = %if.then355
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end379

do.end373:                                        ; preds = %if.then355
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 590, i32 noundef 9, ptr noundef null) #14
  br label %if.end379

if.end379:                                        ; preds = %do.end373, %if.then355.if.end379_crit_edge
  %monitor_sdata = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 147
  %153 = ptrtoint ptr %monitor_sdata to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile ptr, ptr %monitor_sdata, align 4
  %tobool393.not = icmp eq ptr %154, null
  br i1 %tobool393.not, label %if.end379.cleanup_crit_edge, label %do.end409, !prof !145

if.end379.cleanup_crit_edge:                      ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end409:                                        ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 591, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end423:                                        ; preds = %if.end350
  %155 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %vif, align 8
  %157 = zext i32 %156 to i64
  call void @__sanitizer_cov_trace_switch(i64 %157, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %156, label %sw.default440 [
    i32 4, label %if.end423.sw.epilog444_crit_edge
    i32 6, label %sw.bb426
  ]

if.end423.sw.epilog444_crit_edge:                 ; preds = %if.end423
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog444

sw.bb426:                                         ; preds = %if.end423
  %monitors427 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 14
  %158 = ptrtoint ptr %monitors427 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %monitors427, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp428 = icmp eq i32 %159, 0
  br i1 %cmp428, label %if.then430, label %sw.bb426.if.end431_crit_edge

sw.bb426.if.end431_crit_edge:                     ; preds = %sw.bb426
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end431

if.then430:                                       ; preds = %sw.bb426
  call void @__sanitizer_cov_trace_pc() #16
  call void @ieee80211_del_virtual_monitor(ptr noundef %1)
  br label %if.end431

if.end431:                                        ; preds = %if.then430, %sw.bb426.if.end431_crit_edge
  call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #14
  %call.i635 = call fastcc i32 @__ieee80211_recalc_idle(ptr noundef %1, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i635)
  %tobool.not.i636 = icmp eq i32 %call.i635, 0
  br i1 %tobool.not.i636, label %if.end431.ieee80211_recalc_idle.exit_crit_edge, label %if.then.i637

if.end431.ieee80211_recalc_idle.exit_crit_edge:   ; preds = %if.end431
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_recalc_idle.exit

if.then.i637:                                     ; preds = %if.end431
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = call i32 @ieee80211_hw_config(ptr noundef %1, i32 noundef %call.i635) #14
  br label %ieee80211_recalc_idle.exit

ieee80211_recalc_idle.exit:                       ; preds = %if.then.i637, %if.end431.ieee80211_recalc_idle.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mtx) #14
  %u434 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %160 = ptrtoint ptr %u434 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %u434, align 8
  %and436 = and i32 %161, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and436)
  %tobool437.not = icmp ne i32 %and436, 0
  %162 = and i1 %tobool437.not, %going_down
  br i1 %162, label %ieee80211_recalc_idle.exit.if.then442_crit_edge, label %ieee80211_recalc_idle.exit.sw.epilog444_crit_edge

ieee80211_recalc_idle.exit.sw.epilog444_crit_edge: ; preds = %ieee80211_recalc_idle.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog444

ieee80211_recalc_idle.exit.if.then442_crit_edge:  ; preds = %ieee80211_recalc_idle.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then442

sw.default440:                                    ; preds = %if.end423
  br i1 %going_down, label %sw.default440.if.then442_crit_edge, label %sw.default440.sw.epilog444_crit_edge

sw.default440.sw.epilog444_crit_edge:             ; preds = %sw.default440
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog444

sw.default440.if.then442_crit_edge:               ; preds = %sw.default440
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then442

if.then442:                                       ; preds = %sw.default440.if.then442_crit_edge, %ieee80211_recalc_idle.exit.if.then442_crit_edge
  call void @drv_remove_interface(ptr noundef %1, ptr noundef %sdata) #14
  br label %sw.epilog444

sw.epilog444:                                     ; preds = %if.then442, %sw.default440.sw.epilog444_crit_edge, %ieee80211_recalc_idle.exit.sw.epilog444_crit_edge, %if.end423.sw.epilog444_crit_edge
  call void @ieee80211_recalc_ps(ptr noundef %1) #14
  br i1 %cmp, label %if.then446, label %sw.epilog444.if.end448_crit_edge

sw.epilog444.if.end448_crit_edge:                 ; preds = %sw.epilog444
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end448

if.then446:                                       ; preds = %sw.epilog444
  call void @__sanitizer_cov_trace_pc() #16
  %scan_work = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 84
  %call447 = call zeroext i1 @flush_delayed_work(ptr noundef %scan_work) #14
  br label %if.end448

if.end448:                                        ; preds = %if.then446, %sw.epilog444.if.end448_crit_edge
  %163 = ptrtoint ptr %open_count346 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %open_count346, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %cmp450 = icmp eq i32 %164, 0
  br i1 %cmp450, label %if.then452, label %if.end453

if.then452:                                       ; preds = %if.end448
  call void @__sanitizer_cov_trace_pc() #16
  call void @ieee80211_stop_device(ptr noundef %1) #14
  br label %cleanup

if.end453:                                        ; preds = %if.end448
  call void @ieee80211_configure_filter(ptr noundef %1) #14
  %call454 = call i32 @ieee80211_hw_config(ptr noundef %1, i32 noundef %hw_reconf_flags.1) #14
  %monitors455 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 14
  %165 = ptrtoint ptr %monitors455 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %monitors455, align 4
  %167 = ptrtoint ptr %open_count346 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %open_count346, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %166, i32 %168)
  %cmp457 = icmp eq i32 %166, %168
  br i1 %cmp457, label %if.then459, label %if.end453.cleanup_crit_edge

if.end453.cleanup_crit_edge:                      ; preds = %if.end453
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then459:                                       ; preds = %if.end453
  call void @__sanitizer_cov_trace_pc() #16
  %call460 = call i32 @ieee80211_add_virtual_monitor(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then459, %if.end453.cleanup_crit_edge, %if.then452, %do.end409, %if.end379.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %chandef) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_remove_interfaces(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  %unreg_list = alloca %struct.list_head, align 4
  %wdev_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %unreg_list) #14
  %0 = getelementptr inbounds %struct.list_head, ptr %unreg_list, i32 0, i32 1
  %1 = ptrtoint ptr %unreg_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %unreg_list, ptr %unreg_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %unreg_list, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wdev_list) #14
  %3 = getelementptr inbounds %struct.list_head, ptr %wdev_list, i32 0, i32 1
  %4 = ptrtoint ptr %wdev_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %wdev_list, ptr %wdev_list, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %wdev_list, ptr %3, align 4
  %call = call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end32_crit_edge

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

land.rhs:                                         ; preds = %entry
  %.b150 = load i1, ptr @ieee80211_remove_interfaces.__already_done, align 1
  br i1 %.b150, label %land.rhs.if.end32_crit_edge, label %if.then, !prof !145

land.rhs.if.end32_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ieee80211_remove_interfaces.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2197, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 2197) #14
  br label %if.end32

if.end32:                                         ; preds = %if.then, %land.rhs.if.end32_crit_edge, %entry.if.end32_crit_edge
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  call void @cfg80211_shutdown_all_interfaces(ptr noundef %7) #14
  %open_count = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 13
  %8 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %open_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool41.not = icmp eq i32 %9, 0
  br i1 %tobool41.not, label %if.end32.if.end67_crit_edge, label %do.end57, !prof !145

if.end32.if.end67_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

do.end57:                                         ; preds = %if.end32
  %10 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 56, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end57.wiphy_name.exit_crit_edge

do.end57.wiphy_name.exit_crit_edge:               ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 56
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %do.end57.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %do.end57.wiphy_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2213, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %retval.0.i.i, i32 noundef %9) #14
  br label %if.end67

if.end67:                                         ; preds = %wiphy_name.exit, %if.end32.if.end67_crit_edge
  call void @ieee80211_txq_teardown_flows(ptr noundef %local) #14
  %iflist_mtx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 64
  call void @mutex_lock_nested(ptr noundef %iflist_mtx, i32 noundef 0) #14
  %interfaces = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 62
  %16 = ptrtoint ptr %interfaces to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %interfaces, align 8
  %cmp.not161 = icmp eq ptr %17, %interfaces
  br i1 %cmp.not161, label %if.end67.for.end_crit_edge, label %if.end67.for.body_crit_edge

if.end67.for.body_crit_edge:                      ; preds = %if.end67
  br label %for.body

if.end67.for.end_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end67.for.body_crit_edge
  %sdata.0162 = phi ptr [ %tmp.0163, %for.inc.for.body_crit_edge ], [ %17, %if.end67.for.body_crit_edge ]
  %18 = ptrtoint ptr %sdata.0162 to i32
  call void @__asan_load4_noabort(i32 %18)
  %tmp.0163 = load ptr, ptr %sdata.0162, align 8
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %sdata.0162) #14
  br i1 %call.i.i, label %if.end.i.i151, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i151:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %sdata.0162, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %sdata.0162 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sdata.0162, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i151, %for.body.list_del.exit_crit_edge
  %25 = ptrtoint ptr %sdata.0162 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %sdata.0162, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %sdata.0162, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %dev = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0162, i32 0, i32 6
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %tobool86.not = icmp eq ptr %28, null
  br i1 %tobool86.not, label %if.else, label %if.then87

if.then87:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @unregister_netdevice_queue(ptr noundef nonnull %28, ptr noundef nonnull %unreg_list) #14
  br label %for.inc

if.else:                                          ; preds = %list_del.exit
  %29 = ptrtoint ptr %wdev_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wdev_list, align 4
  %call.i.i152 = call zeroext i1 @__list_add_valid(ptr noundef %sdata.0162, ptr noundef nonnull %wdev_list, ptr noundef %30) #14
  br i1 %call.i.i152, label %if.end.i.i153, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end.i.i153:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %sdata.0162, ptr %prev1.i.i, align 4
  %32 = ptrtoint ptr %sdata.0162 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %sdata.0162, align 4
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %wdev_list, ptr %prev.i, align 4
  %34 = ptrtoint ptr %wdev_list to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %sdata.0162, ptr %wdev_list, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i153, %if.else.for.inc_crit_edge, %if.then87
  %cmp.not = icmp eq ptr %tmp.0163, %interfaces
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end67.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %iflist_mtx) #14
  call void @unregister_netdevice_many(ptr noundef nonnull %unreg_list) #14
  %35 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wiphy, align 8
  call void @mutex_lock_nested(ptr noundef %36, i32 noundef 0) #14
  %37 = ptrtoint ptr %wdev_list to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wdev_list, align 4
  %cmp110.not164 = icmp eq ptr %38, %wdev_list
  br i1 %cmp110.not164, label %for.end.for.end121_crit_edge, label %for.end.for.body113_crit_edge

for.end.for.body113_crit_edge:                    ; preds = %for.end
  br label %for.body113

for.end.for.end121_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end121

for.body113:                                      ; preds = %list_del.exit159.for.body113_crit_edge, %for.end.for.body113_crit_edge
  %sdata.1165 = phi ptr [ %tmp.1, %list_del.exit159.for.body113_crit_edge ], [ %38, %for.end.for.body113_crit_edge ]
  %39 = ptrtoint ptr %sdata.1165 to i32
  call void @__asan_load4_noabort(i32 %39)
  %tmp.1 = load ptr, ptr %sdata.1165, align 8
  %call.i.i154 = call zeroext i1 @__list_del_entry_valid(ptr noundef %sdata.1165) #14
  br i1 %call.i.i154, label %if.end.i.i157, label %for.body113.list_del.exit159_crit_edge

for.body113.list_del.exit159_crit_edge:           ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit159

if.end.i.i157:                                    ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i155 = getelementptr inbounds %struct.list_head, ptr %sdata.1165, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i155 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i155, align 4
  %42 = ptrtoint ptr %sdata.1165 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sdata.1165, align 4
  %prev1.i.i.i156 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i156 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i156, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit159

list_del.exit159:                                 ; preds = %if.end.i.i157, %for.body113.list_del.exit159_crit_edge
  %46 = ptrtoint ptr %sdata.1165 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %sdata.1165, align 4
  %prev.i158 = getelementptr inbounds %struct.list_head, ptr %sdata.1165, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i158 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i158, align 4
  %wdev = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.1165, i32 0, i32 1
  call void @cfg80211_unregister_wdev(ptr noundef %wdev) #14
  call void @kfree(ptr noundef %sdata.1165) #14
  %cmp110.not = icmp eq ptr %tmp.1, %wdev_list
  br i1 %cmp110.not, label %list_del.exit159.for.end121_crit_edge, label %list_del.exit159.for.body113_crit_edge

list_del.exit159.for.body113_crit_edge:           ; preds = %list_del.exit159
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body113

list_del.exit159.for.end121_crit_edge:            ; preds = %list_del.exit159
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end121

for.end121:                                       ; preds = %list_del.exit159.for.end121_crit_edge, %for.end.for.end121_crit_edge
  %48 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wiphy, align 8
  call void @mutex_unlock(ptr noundef %49) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wdev_list) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %unreg_list) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_shutdown_all_interfaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_txq_teardown_flows(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_iface_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @mac80211_netdev_notifier) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_iface_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @mac80211_netdev_notifier) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_vif_inc_num_mcast(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %1, label %entry.if.end7_crit_edge [
    i32 3, label %if.then
    i32 4, label %if.then4
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %num_mcast_sta = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_mcast_sta, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %num_mcast_sta, i32 1, i32 3, i32 1) #14
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_mcast_sta, ptr %num_mcast_sta, i32 1, ptr elementtype(i32) %num_mcast_sta) #14, !srcloc !150
  br label %if.end7

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %num_mcast_sta6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 0, i32 2
  %call.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_mcast_sta6, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %num_mcast_sta6, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_mcast_sta6, ptr %num_mcast_sta6, i32 1, ptr elementtype(i32) %num_mcast_sta6) #14, !srcloc !150
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.then, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_vif_dec_num_mcast(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %1, label %entry.if.end7_crit_edge [
    i32 3, label %if.then
    i32 4, label %if.then4
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %num_mcast_sta = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_mcast_sta, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %num_mcast_sta, i32 1, i32 3, i32 1) #14
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_mcast_sta, ptr %num_mcast_sta, i32 1, ptr elementtype(i32) %num_mcast_sta) #14, !srcloc !153
  br label %if.end7

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %num_mcast_sta6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 0, i32 2
  %call.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_mcast_sta6, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %num_mcast_sta6, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_mcast_sta6, ptr %num_mcast_sta6, i32 1, ptr elementtype(i32) %num_mcast_sta6) #14, !srcloc !153
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.then, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_flush_queues(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_update_vif_offload(ptr noundef %local, ptr noundef %sdata) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_update_vif_offload, i32 0, i32 1), ptr blockaddress(@trace_drv_update_vif_offload, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !154

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !132) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !145

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !132) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !155
  %call42 = tail call i32 @__traceiter_drv_update_vif_offload(ptr noundef null, ptr noundef %local, ptr noundef %sdata) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !156
  %13 = tail call i32 @llvm.read_register.i32(metadata !132) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !132) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !145

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !132) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !157
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_update_vif_offload, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_update_vif_offload, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_update_vif_offload.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_drv_update_vif_offload.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 2783, ptr noundef nonnull @.str.1) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !158
  %31 = tail call i32 @llvm.read_register.i32(metadata !132) #14
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
define internal fastcc void @trace_drv_return_void(ptr noundef %local) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), ptr blockaddress(@trace_drv_return_void, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !154

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !132) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !145

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !132) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !159
  %call42 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %local) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !160
  %13 = tail call i32 @llvm.read_register.i32(metadata !132) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !132) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !145

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !132) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !157
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_return_void.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_drv_return_void.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 205, ptr noundef nonnull @.str.1) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !158
  %31 = tail call i32 @llvm.read_register.i32(metadata !132) #14
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
declare dso_local i32 @__traceiter_drv_update_vif_offload(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_uninit(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @ieee80211_free_keys(ptr noundef %add.ptr.i.i, i1 noundef zeroext false) #14
  tail call void @ieee80211_debugfs_remove_netdev(ptr noundef %add.ptr.i.i) #14
  %frags.i = getelementptr i8, ptr %dev, i32 3424
  tail call void @ieee80211_destroy_frag_cache(ptr noundef %frags.i) #14
  %vif.i = getelementptr i8, ptr %dev, i32 6384
  %0 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 7
  br i1 %cmp.i.i, label %if.then.i, label %entry.ieee80211_teardown_sdata.exit_crit_edge

entry.ieee80211_teardown_sdata.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_teardown_sdata.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_mesh_teardown_sdata(ptr noundef %add.ptr.i.i) #14
  br label %ieee80211_teardown_sdata.exit

ieee80211_teardown_sdata.exit:                    ; preds = %if.then.i, %entry.ieee80211_teardown_sdata.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr, align 64
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i17 = getelementptr i8, ptr %1, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i17 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i17, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %vif = getelementptr i8, ptr %dev, i32 6384
  %7 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vif, align 8
  %call2 = tail call fastcc i32 @ieee80211_check_concurrent_iface(ptr noundef %add.ptr.i.i, i32 noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %local = getelementptr i8, ptr %dev, i32 3396
  %9 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %local, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wiphy, align 8
  tail call void @mutex_lock_nested(ptr noundef %12, i32 noundef 0) #14
  %wdev = getelementptr i8, ptr %dev, i32 2312
  %call5 = tail call i32 @ieee80211_do_open(ptr noundef %wdev, i1 noundef zeroext true)
  %13 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %local, align 4
  %wiphy8 = getelementptr inbounds %struct.ieee80211_hw, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %wiphy8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wiphy8, align 8
  tail call void @mutex_unlock(ptr noundef %16) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_stop(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %vif = getelementptr i8, ptr %dev, i32 6384
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %vlans = getelementptr i8, ptr %dev, i32 4876
  %2 = ptrtoint ptr %vlans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vlans, align 4
  %cmp10.not32 = icmp eq ptr %3, %vlans
  br i1 %cmp10.not32, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn.in33 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %3, %if.then.for.body_crit_edge ]
  %4 = ptrtoint ptr %.pn.in33 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in33, align 8
  %dev11 = getelementptr i8, ptr %.pn.in33, i32 -1464
  %5 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev11, align 8
  tail call void @dev_close(ptr noundef %6) #14
  %cmp10.not = icmp eq ptr %.pn, %vlans
  br i1 %cmp10.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  %mbssid_tx_vif.i = getelementptr i8, ptr %dev, i32 7228
  %7 = ptrtoint ptr %mbssid_tx_vif.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mbssid_tx_vif.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %for.end.if.end_crit_edge, label %if.end.i

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %for.end
  %add.ptr.i.i31 = getelementptr i8, ptr %8, i32 -4080
  %9 = ptrtoint ptr %mbssid_tx_vif.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %mbssid_tx_vif.i, align 4
  %local.i = getelementptr i8, ptr %8, i32 -2988
  %10 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %local.i, align 4
  %interfaces.i = getelementptr inbounds %struct.ieee80211_local, ptr %11, i32 0, i32 62
  %12 = ptrtoint ptr %interfaces.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %interfaces.i, align 8
  %cmp.not63.i = icmp eq ptr %13, %interfaces.i
  br i1 %cmp.not63.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %non_tx_sdata.064.i = phi ptr [ %tmp_sdata.065.i, %for.inc.i.for.body.i_crit_edge ], [ %13, %if.end.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %non_tx_sdata.064.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %tmp_sdata.065.i = load ptr, ptr %non_tx_sdata.064.i, align 8
  %cmp10.not.i = icmp eq ptr %non_tx_sdata.064.i, %add.ptr.i.i
  %cmp11.not.i = icmp eq ptr %non_tx_sdata.064.i, %add.ptr.i.i31
  %or.cond.i = select i1 %cmp10.not.i, i1 true, i1 %cmp11.not.i
  br i1 %or.cond.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true12.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true12.i:                                ; preds = %for.body.i
  %mbssid_tx_vif14.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %non_tx_sdata.064.i, i32 0, i32 59, i32 18
  %15 = ptrtoint ptr %mbssid_tx_vif14.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mbssid_tx_vif14.i, align 4
  %cmp15.i = icmp eq ptr %16, %8
  br i1 %cmp15.i, label %land.lhs.true16.i, label %land.lhs.true12.i.for.inc.i_crit_edge

land.lhs.true12.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true16.i:                                ; preds = %land.lhs.true12.i
  %state.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %non_tx_sdata.064.i, i32 0, i32 9
  %17 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true16.i.for.inc.i_crit_edge, label %if.then18.i

land.lhs.true16.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then18.i:                                      ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %mbssid_tx_vif14.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %mbssid_tx_vif14.i, align 4
  %netdev.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %non_tx_sdata.064.i, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev.i, align 8
  tail call void @dev_close(ptr noundef %21) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then18.i, %land.lhs.true16.i.for.inc.i_crit_edge, %land.lhs.true12.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %22 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %local.i, align 4
  %interfaces9.i = getelementptr inbounds %struct.ieee80211_local, ptr %23, i32 0, i32 62
  %cmp.not.i = icmp eq ptr %tmp_sdata.065.i, %interfaces9.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %cmp27.not.i = icmp eq ptr %add.ptr.i.i31, %add.ptr.i.i
  br i1 %cmp27.not.i, label %for.end.i.if.end_crit_edge, label %land.lhs.true28.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true28.i:                                ; preds = %for.end.i
  %state.i58.i = getelementptr i8, ptr %8, i32 -2980
  %24 = ptrtoint ptr %state.i58.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state.i58.i, align 4
  %and1.i.i59.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i59.i)
  %tobool.i60.not.i = icmp eq i32 %and1.i.i59.i, 0
  br i1 %tobool.i60.not.i, label %land.lhs.true28.i.if.end_crit_edge, label %if.then30.i

land.lhs.true28.i.if.end_crit_edge:               ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #16
  %mbssid_tx_vif32.i = getelementptr i8, ptr %8, i32 844
  %26 = ptrtoint ptr %mbssid_tx_vif32.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %mbssid_tx_vif32.i, align 4
  %netdev34.i = getelementptr i8, ptr %8, i32 -4056
  %27 = ptrtoint ptr %netdev34.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev34.i, align 8
  tail call void @dev_close(ptr noundef %28) #14
  br label %if.end

if.end:                                           ; preds = %if.then30.i, %land.lhs.true28.i.if.end_crit_edge, %for.end.i.if.end_crit_edge, %for.end.if.end_crit_edge, %entry.if.end_crit_edge
  %local = getelementptr i8, ptr %dev, i32 3396
  %29 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %local, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wiphy, align 8
  tail call void @mutex_lock_nested(ptr noundef %32, i32 noundef 0) #14
  tail call fastcc void @ieee80211_do_stop(ptr noundef %add.ptr.i.i, i1 noundef zeroext true)
  %33 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %local, align 4
  %wiphy20 = getelementptr inbounds %struct.ieee80211_hw, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %wiphy20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wiphy20, align 8
  tail call void @mutex_unlock(ptr noundef %36) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_subif_start_xmit_8023(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @ieee80211_netdev_select_queue(ptr noundef %dev, ptr noundef %skb, ptr nocapture noundef readnone %sb_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call zeroext i16 @ieee80211_select_queue(ptr noundef %add.ptr.i.i, ptr noundef %skb) #14
  ret i16 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_set_multicast_list(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 3396
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 512
  %and.lobit = lshr exact i32 %and, 9
  %flags3 = getelementptr i8, ptr %dev, i32 3400
  %4 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags3, align 8
  %and4 = and i32 %5, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit, i32 %and4)
  %cmp.not = icmp eq i32 %and.lobit, %and4
  br i1 %cmp.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %iff_allmultis14 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 57
  %call.i.i31 = tail call zeroext i1 @__kasan_check_write(ptr noundef %iff_allmultis14, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %iff_allmultis14, i32 1, i32 3, i32 1) #14
  br i1 %tobool.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %iff_allmultis14, ptr %iff_allmultis14, i32 1, ptr elementtype(i32) %iff_allmultis14) #14, !srcloc !150
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %iff_allmultis14, ptr %iff_allmultis14, i32 1, ptr elementtype(i32) %iff_allmultis14) #14, !srcloc !153
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then13
  %8 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags3, align 8
  %xor = xor i32 %9, 1
  store i32 %xor, ptr %flags3, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.end, %entry.if.end16_crit_edge
  %filter_lock = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_bh(ptr noundef %filter_lock) #14
  %mc_list = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 29
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %10 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %11 to i32
  %call17 = tail call i32 @__hw_addr_sync(ptr noundef %mc_list, ptr noundef %mc, i32 noundef %conv) #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %filter_lock) #14
  %reconfig_filter = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 28
  tail call void @ieee80211_queue_work(ptr noundef %1, ptr noundef %reconfig_filter) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_change_mac(ptr noundef %dev, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %state.i = getelementptr i8, ptr %dev, i32 3404
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %vif = getelementptr i8, ptr %dev, i32 6384
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp = icmp eq i32 %3, 6
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %u = getelementptr i8, ptr %dev, i32 4856
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %u, align 8
  %and = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  br label %if.end3

if.end3:                                          ; preds = %land.lhs.true, %if.end.if.end3_crit_edge
  %check_dup.0.off0 = phi i1 [ true, %if.end.if.end3_crit_edge ], [ %tobool.not, %land.lhs.true ]
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %local1.i = getelementptr i8, ptr %dev, i32 3396
  %6 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %local1.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy.i, align 8
  %addr_mask.i = getelementptr inbounds %struct.wiphy, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %addr_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr_mask.i, align 4
  %add.ptr.i.i31 = getelementptr %struct.wiphy, ptr %9, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i31 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i31, align 2
  %conv.i.i = zext i16 %13 to i32
  %or.i.i = or i32 %11, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.end3.if.end8_crit_edge, label %if.end.i

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.end.i:                                         ; preds = %if.end3
  %14 = ptrtoint ptr %sa_data to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sa_data, align 1
  %conv.i = zext i8 %15 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 40
  %arrayidx2.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %17 to i64
  %shl4.i = shl nuw nsw i64 %conv3.i, 32
  %or.i = or i64 %shl4.i, %shl.i
  %arrayidx5.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %19 to i64
  %shl7.i = shl nuw nsw i64 %conv6.i, 24
  %or8.i = or i64 %or.i, %shl7.i
  %arrayidx9.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %21 to i64
  %shl11.i = shl nuw nsw i64 %conv10.i, 16
  %or12.i = or i64 %or8.i, %shl11.i
  %arrayidx13.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %23 to i64
  %shl15.i = shl nuw nsw i64 %conv14.i, 8
  %or16.i = or i64 %or12.i, %shl15.i
  %arrayidx17.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 5
  %24 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %25 to i64
  %or20.i = or i64 %or16.i, %conv18.i
  %26 = ptrtoint ptr %addr_mask.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %addr_mask.i, align 1
  %conv26.i = zext i8 %27 to i64
  %shl27.i = shl nuw nsw i64 %conv26.i, 40
  %arrayidx28.i = getelementptr %struct.wiphy, ptr %9, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx28.i, align 1
  %conv29.i = zext i8 %29 to i64
  %shl30.i = shl nuw nsw i64 %conv29.i, 32
  %or31.i = or i64 %shl30.i, %shl27.i
  %arrayidx32.i = getelementptr %struct.wiphy, ptr %9, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx32.i, align 1
  %conv33.i = zext i8 %31 to i64
  %shl34.i = shl nuw nsw i64 %conv33.i, 24
  %or35.i = or i64 %or31.i, %shl34.i
  %arrayidx36.i = getelementptr %struct.wiphy, ptr %9, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx36.i, align 1
  %conv37.i = zext i8 %33 to i64
  %shl38.i = shl nuw nsw i64 %conv37.i, 16
  %or39.i = or i64 %or35.i, %shl38.i
  %34 = ptrtoint ptr %add.ptr.i.i31 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr.i.i31, align 1
  %conv41.i = zext i8 %35 to i64
  %shl42.i = shl nuw nsw i64 %conv41.i, 8
  %or43.i = or i64 %or39.i, %shl42.i
  %arrayidx44.i = getelementptr %struct.wiphy, ptr %9, i32 0, i32 2, i32 5
  %36 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx44.i, align 1
  %conv45.i = zext i8 %37 to i64
  %or47.i = or i64 %or43.i, %conv45.i
  br i1 %check_dup.0.off0, label %if.end49.i, label %if.end.i.if.end8_crit_edge

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.end49.i:                                       ; preds = %if.end.i
  %iflist_mtx.i = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %iflist_mtx.i, i32 noundef 0) #14
  %interfaces.i = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 62
  %38 = ptrtoint ptr %interfaces.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %iter.0137.i = load ptr, ptr %interfaces.i, align 8
  %cmp.not138.i = icmp eq ptr %iter.0137.i, %interfaces.i
  br i1 %cmp.not138.i, label %if.end49.i.ieee80211_verify_mac.exit.thread35_crit_edge, label %for.body.lr.ph.i

if.end49.i.ieee80211_verify_mac.exit.thread35_crit_edge: ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_verify_mac.exit.thread35

for.body.lr.ph.i:                                 ; preds = %if.end49.i
  %neg.i = xor i64 %or47.i, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %iter.0139.i = phi ptr [ %iter.0137.i, %for.body.lr.ph.i ], [ %iter.0.i, %for.inc.i.for.body.i_crit_edge ]
  %cmp53.i = icmp eq ptr %iter.0139.i, %add.ptr.i.i
  br i1 %cmp53.i, label %for.body.i.for.inc.i_crit_edge, label %if.end56.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end56.i:                                       ; preds = %for.body.i
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %iter.0139.i, i32 0, i32 59
  %39 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vif.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %40)
  %cmp57.i = icmp eq i32 %40, 6
  br i1 %cmp57.i, label %land.lhs.true.i, label %if.end56.i.if.end61.i_crit_edge

if.end56.i.if.end61.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61.i

land.lhs.true.i:                                  ; preds = %if.end56.i
  %u.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %iter.0139.i, i32 0, i32 57
  %41 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %u.i, align 8
  %and.i = and i32 %42, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool59.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool59.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.if.end61.i_crit_edge

land.lhs.true.i.if.end61.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end61.i:                                       ; preds = %land.lhs.true.i.if.end61.i_crit_edge, %if.end56.i.if.end61.i_crit_edge
  %addr63.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %iter.0139.i, i32 0, i32 59, i32 2
  %43 = ptrtoint ptr %addr63.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %addr63.i, align 1
  %conv66.i = zext i8 %44 to i64
  %shl67.i = shl nuw nsw i64 %conv66.i, 40
  %arrayidx68.i = getelementptr %struct.ieee80211_sub_if_data, ptr %iter.0139.i, i32 0, i32 59, i32 2, i32 1
  %45 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx68.i, align 1
  %conv69.i = zext i8 %46 to i64
  %shl70.i = shl nuw nsw i64 %conv69.i, 32
  %or71.i = or i64 %shl70.i, %shl67.i
  %arrayidx72.i = getelementptr %struct.ieee80211_sub_if_data, ptr %iter.0139.i, i32 0, i32 59, i32 2, i32 2
  %47 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx72.i, align 1
  %conv73.i = zext i8 %48 to i64
  %shl74.i = shl nuw nsw i64 %conv73.i, 24
  %or75.i = or i64 %or71.i, %shl74.i
  %arrayidx76.i = getelementptr %struct.ieee80211_sub_if_data, ptr %iter.0139.i, i32 0, i32 59, i32 2, i32 3
  %49 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx76.i, align 1
  %conv77.i = zext i8 %50 to i64
  %shl78.i = shl nuw nsw i64 %conv77.i, 16
  %or79.i = or i64 %or75.i, %shl78.i
  %arrayidx80.i = getelementptr %struct.ieee80211_sub_if_data, ptr %iter.0139.i, i32 0, i32 59, i32 2, i32 4
  %51 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx80.i, align 1
  %conv81.i = zext i8 %52 to i64
  %shl82.i = shl nuw nsw i64 %conv81.i, 8
  %or83.i = or i64 %or79.i, %shl82.i
  %arrayidx84.i = getelementptr %struct.ieee80211_sub_if_data, ptr %iter.0139.i, i32 0, i32 59, i32 2, i32 5
  %53 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx84.i, align 1
  %conv85.i = zext i8 %54 to i64
  %or87.i = or i64 %or83.i, %conv85.i
  %55 = xor i64 %or87.i, %or20.i
  %56 = and i64 %55, %neg.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %56)
  %cmp91.not.i = icmp eq i64 %56, 0
  br i1 %cmp91.not.i, label %if.end61.i.for.inc.i_crit_edge, label %ieee80211_verify_mac.exit

if.end61.i.for.inc.i_crit_edge:                   ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end61.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %57 = ptrtoint ptr %iter.0139.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %iter.0.i = load ptr, ptr %iter.0139.i, align 8
  %cmp.not.i = icmp eq ptr %iter.0.i, %interfaces.i
  br i1 %cmp.not.i, label %for.inc.i.ieee80211_verify_mac.exit.thread35_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.ieee80211_verify_mac.exit.thread35_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_verify_mac.exit.thread35

ieee80211_verify_mac.exit.thread35:               ; preds = %for.inc.i.ieee80211_verify_mac.exit.thread35_crit_edge, %if.end49.i.ieee80211_verify_mac.exit.thread35_crit_edge
  tail call void @mutex_unlock(ptr noundef %iflist_mtx.i) #14
  br label %if.end8

ieee80211_verify_mac.exit:                        ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %iflist_mtx.i) #14
  br label %cleanup

if.end8:                                          ; preds = %ieee80211_verify_mac.exit.thread35, %if.end.i.if.end8_crit_edge, %if.end3.if.end8_crit_edge
  %call9 = tail call i32 @eth_mac_addr(ptr noundef %dev, ptr noundef %addr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %addr13 = getelementptr i8, ptr %dev, i32 7184
  %58 = call ptr @memcpy(ptr %addr13, ptr %sa_data, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end8.cleanup_crit_edge, %ieee80211_verify_mac.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -22, %ieee80211_verify_mac.exit ], [ 0, %if.then11 ], [ %call9, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_get_stats64(ptr nocapture noundef readonly %dev, ptr noundef %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 64
  tail call void @dev_fetch_sw_netstats(ptr noundef %stats, ptr noundef %2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_netdev_fill_forward_path(ptr noundef %ctx, ptr noundef %path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %local1 = getelementptr i8, ptr %1, i32 3396
  %2 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local1, align 4
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %net_fill_forward_path = getelementptr inbounds %struct.ieee80211_ops, ptr %5, i32 0, i32 112
  %6 = ptrtoint ptr %net_fill_forward_path to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_fill_forward_path, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = tail call i32 @llvm.read_register.i32(metadata !132) #14
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !142
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %vif = getelementptr i8, ptr %1, i32 6384
  %12 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vif, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %13, label %rcu_read_lock.exit.out_crit_edge [
    i32 4, label %sw.bb
    i32 3, label %sw.bb26
    i32 2, label %sw.bb33
  ]

rcu_read_lock.exit.out_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

sw.bb:                                            ; preds = %rcu_read_lock.exit
  %sta2 = getelementptr i8, ptr %1, i32 4864
  %15 = ptrtoint ptr %sta2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %sta2, align 8
  %call4 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %sw.bb.do.end13_crit_edge

sw.bb.do.end13_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

land.lhs.true:                                    ; preds = %sw.bb
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b82 = load i1, ptr @ieee80211_netdev_fill_forward_path.__warned, align 1
  br i1 %.b82, label %land.lhs.true8.do.end13_crit_edge, label %if.then10

land.lhs.true8.do.end13_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ieee80211_netdev_fill_forward_path.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 809, ptr noundef nonnull @.str.1) #14
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %land.lhs.true8.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %sw.bb.do.end13_crit_edge
  %tobool15.not = icmp eq ptr %16, null
  br i1 %tobool15.not, label %if.end17, label %do.end13.if.end54_crit_edge

do.end13.if.end54_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.end17:                                         ; preds = %do.end13
  %use_4addr = getelementptr i8, ptr %1, i32 2440
  %17 = ptrtoint ptr %use_4addr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %use_4addr, align 8, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool18.not = icmp eq i8 %18, 0
  br i1 %tobool18.not, label %if.end20, label %if.end17.out_crit_edge

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end20:                                         ; preds = %if.end17
  %daddr = getelementptr inbounds %struct.net_device_path_ctx, ptr %ctx, i32 0, i32 1
  %19 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %daddr, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not = icmp eq i32 %23, 0
  br i1 %tobool.i.not, label %if.end23, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end23:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %call25 = tail call ptr @sta_info_get_bss(ptr noundef %add.ptr.i.i, ptr noundef %20) #14
  br label %sw.epilog

sw.bb26:                                          ; preds = %rcu_read_lock.exit
  %daddr27 = getelementptr inbounds %struct.net_device_path_ctx, ptr %ctx, i32 0, i32 1
  %24 = ptrtoint ptr %daddr27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %daddr27, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %28 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i83.not = icmp eq i32 %28, 0
  br i1 %tobool.i83.not, label %if.end30, label %sw.bb26.out_crit_edge

sw.bb26.out_crit_edge:                            ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end30:                                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #16
  %call32 = tail call ptr @sta_info_get(ptr noundef %add.ptr.i.i, ptr noundef %25) #14
  br label %sw.epilog

sw.bb33:                                          ; preds = %rcu_read_lock.exit
  %wdev34 = getelementptr i8, ptr %1, i32 2312
  %29 = ptrtoint ptr %wdev34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wdev34, align 8
  %flags = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 32
  %and = and i32 %32, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %sw.bb33.if.end49_crit_edge, label %if.then36

sw.bb33.if.end49_crit_edge:                       ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then36:                                        ; preds = %sw.bb33
  %daddr37 = getelementptr inbounds %struct.net_device_path_ctx, ptr %ctx, i32 0, i32 1
  %33 = ptrtoint ptr %daddr37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %daddr37, align 4
  %call38 = tail call ptr @sta_info_get(ptr noundef %add.ptr.i.i, ptr noundef %34) #14
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.then36.if.end49_crit_edge, label %land.lhs.true40

if.then36.if.end49_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

land.lhs.true40:                                  ; preds = %if.then36
  %_flags.i = getelementptr inbounds %struct.sta_info, ptr %call38, i32 0, i32 24
  %35 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %_flags.i, align 4
  %37 = and i32 %36, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool42.not = icmp eq i32 %37, 0
  br i1 %tobool42.not, label %land.lhs.true40.if.end49_crit_edge, label %if.then43

land.lhs.true40.if.end49_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then43:                                        ; preds = %land.lhs.true40
  %38 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %_flags.i, align 4
  %40 = and i32 %39, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool45.not = icmp eq i32 %40, 0
  br i1 %tobool45.not, label %if.then43.out_crit_edge, label %if.then43.if.end54_crit_edge

if.then43.if.end54_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.then43.out_crit_edge:                          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end49:                                         ; preds = %land.lhs.true40.if.end49_crit_edge, %if.then36.if.end49_crit_edge, %sw.bb33.if.end49_crit_edge
  %bssid = getelementptr i8, ptr %1, i32 5252
  %call51 = tail call ptr @sta_info_get(ptr noundef %add.ptr.i.i, ptr noundef %bssid) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end49, %if.end30, %if.end23
  %sta.0 = phi ptr [ %call51, %if.end49 ], [ %call32, %if.end30 ], [ %call25, %if.end23 ]
  %tobool52.not = icmp eq ptr %sta.0, null
  br i1 %tobool52.not, label %sw.epilog.out_crit_edge, label %sw.epilog.if.end54_crit_edge

sw.epilog.if.end54_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end54:                                         ; preds = %sw.epilog.if.end54_crit_edge, %if.then43.if.end54_crit_edge, %do.end13.if.end54_crit_edge
  %sta.0100 = phi ptr [ %sta.0, %sw.epilog.if.end54_crit_edge ], [ %16, %do.end13.if.end54_crit_edge ], [ %call38, %if.then43.if.end54_crit_edge ]
  %sta55 = getelementptr inbounds %struct.sta_info, ptr %sta.0100, i32 0, i32 48
  %41 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %42)
  %cmp.i.i = icmp eq i32 %42, 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end54.get_bss_sdata.exit.i_crit_edge

if.end54.get_bss_sdata.exit.i_crit_edge:          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_bss_sdata.exit.i

if.then.i.i:                                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  %bss.i.i = getelementptr i8, ptr %1, i32 4628
  %43 = ptrtoint ptr %bss.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bss.i.i, align 4
  %add.ptr.i.i87 = getelementptr i8, ptr %44, i32 -2552
  br label %get_bss_sdata.exit.i

get_bss_sdata.exit.i:                             ; preds = %if.then.i.i, %if.end54.get_bss_sdata.exit.i_crit_edge
  %sdata.addr.0.i.i = phi ptr [ %add.ptr.i.i87, %if.then.i.i ], [ %add.ptr.i.i, %if.end54.get_bss_sdata.exit.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.addr.0.i.i, i32 0, i32 8
  %45 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %46, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i88 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i88, label %land.rhs.i, label %if.end48.i

land.rhs.i:                                       ; preds = %get_bss_sdata.exit.i
  %.b71.i = load i1, ptr @drv_net_fill_forward_path.__already_done, align 1
  br i1 %.b71.i, label %land.rhs.i.out_crit_edge, label %cleanup.critedge.i, !prof !145

land.rhs.i.out_crit_edge:                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end48.i:                                       ; preds = %get_bss_sdata.exit.i
  tail call fastcc void @trace_drv_net_fill_forward_path(ptr noundef %3, ptr noundef %sdata.addr.0.i.i, ptr noundef %sta55) #14
  %47 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops, align 4
  %net_fill_forward_path.i = getelementptr inbounds %struct.ieee80211_ops, ptr %48, i32 0, i32 112
  %49 = ptrtoint ptr %net_fill_forward_path.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net_fill_forward_path.i, align 4
  %tobool49.not.i = icmp eq ptr %50, null
  br i1 %tobool49.not.i, label %if.end48.i.if.end54.i_crit_edge, label %if.then50.i

if.end48.i.if.end54.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54.i

if.then50.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.addr.0.i.i, i32 0, i32 59
  %call53.i = tail call i32 %50(ptr noundef %3, ptr noundef %vif.i, ptr noundef %sta55, ptr noundef %ctx, ptr noundef %path) #14
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then50.i, %if.end48.i.if.end54.i_crit_edge
  %ret.0.i = phi i32 [ %call53.i, %if.then50.i ], [ -95, %if.end48.i.if.end54.i_crit_edge ]
  tail call fastcc void @trace_drv_return_int(ptr noundef %3, i32 noundef %ret.0.i) #14
  br label %out

cleanup.critedge.i:                               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @drv_net_fill_forward_path.__already_done, align 1
  %dev.c.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.addr.0.i.i, i32 0, i32 6
  %51 = ptrtoint ptr %dev.c.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.c.i, align 8
  %tobool18.not.c.i = icmp eq ptr %52, null
  %name20.c.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.addr.0.i.i, i32 0, i32 10
  %cond.c.i = select i1 %tobool18.not.c.i, ptr %name20.c.i, ptr %52
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 1498, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef %cond.c.i, i32 noundef %46) #14
  br label %out

out:                                              ; preds = %cleanup.critedge.i, %if.end54.i, %land.rhs.i.out_crit_edge, %sw.epilog.out_crit_edge, %if.then43.out_crit_edge, %sw.bb26.out_crit_edge, %if.end20.out_crit_edge, %if.end17.out_crit_edge, %rcu_read_lock.exit.out_crit_edge
  %ret.0 = phi i32 [ -2, %rcu_read_lock.exit.out_crit_edge ], [ -2, %sw.epilog.out_crit_edge ], [ -2, %if.then43.out_crit_edge ], [ -2, %sw.bb26.out_crit_edge ], [ -2, %if.end17.out_crit_edge ], [ -2, %if.end20.out_crit_edge ], [ %ret.0.i, %if.end54.i ], [ -5, %land.rhs.i.out_crit_edge ], [ -5, %cleanup.critedge.i ]
  %call.i89 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i89, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i92

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i92:                                ; preds = %out
  %call1.i90 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i90)
  %tobool.not.i91 = icmp eq i32 %call1.i90, 0
  br i1 %tobool.not.i91, label %land.lhs.true.i92.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i94

land.lhs.true.i92.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i94:                               ; preds = %land.lhs.true.i92
  %.b4.i93 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i93, label %land.lhs.true2.i94.rcu_read_unlock.exit_crit_edge, label %if.then.i95

land.lhs.true2.i94.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i94
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i95:                                      ; preds = %land.lhs.true2.i94
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i95, %land.lhs.true2.i94.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i92.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !143
  %53 = tail call i32 @llvm.read_register.i32(metadata !132) #14
  %and.i.i.i.i.i96 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i96 to ptr
  %preempt_count.i.i.i.i97 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i97, align 4
  %sub.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i97, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_check_concurrent_iface(ptr noundef %sdata, i32 noundef %iftype) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %call = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b124 = load i1, ptr @ieee80211_check_concurrent_iface.__already_done, align 1
  br i1 %.b124, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !145

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ieee80211_check_concurrent_iface.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 247, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 247) #14
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %interfaces = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 62
  %2 = ptrtoint ptr %interfaces to i32
  call void @__asan_load4_noabort(i32 %2)
  %nsdata.0135 = load ptr, ptr %interfaces, align 8
  %cmp.not136 = icmp eq ptr %nsdata.0135, %interfaces
  br i1 %cmp.not136, label %if.end30.for.end_crit_edge, label %for.body.lr.ph

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end30
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %iftype)
  %cmp59 = icmp eq i32 %iftype, 1
  %addr = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %add.ptr.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %iftype)
  %cmp.i125 = icmp eq i32 %iftype, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %iftype)
  %cmp3.i = icmp eq i32 %iftype, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %iftype)
  %cmp7.i = icmp eq i32 %iftype, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %iftype)
  %cmp9.i = icmp ne i32 %iftype, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %iftype)
  %cmp83 = icmp eq i32 %iftype, 4
  %bss = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 49
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %nsdata.0137 = phi ptr [ %nsdata.0135, %for.body.lr.ph ], [ %nsdata.0, %for.inc.for.body_crit_edge ]
  %cmp42.not = icmp eq ptr %nsdata.0137, %sdata
  br i1 %cmp42.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %state.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %nsdata.0137, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.for.inc_crit_edge, label %if.then44

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then44:                                        ; preds = %land.lhs.true
  %5 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vif, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %6, label %if.then44.land.lhs.true53_crit_edge [
    i32 11, label %land.lhs.true46
    i32 6, label %if.then44.if.end58_crit_edge
  ]

if.then44.if.end58_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.then44.land.lhs.true53_crit_edge:              ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true53

land.lhs.true46:                                  ; preds = %if.then44
  %vif47 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %nsdata.0137, i32 0, i32 59
  %8 = ptrtoint ptr %vif47 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vif47, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp49.not = icmp eq i32 %9, 6
  br i1 %cmp49.not, label %land.lhs.true46.land.lhs.true53_crit_edge, label %land.lhs.true46.cleanup_crit_edge

land.lhs.true46.cleanup_crit_edge:                ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true46.land.lhs.true53_crit_edge:        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true53

land.lhs.true53:                                  ; preds = %land.lhs.true46.land.lhs.true53_crit_edge, %if.then44.land.lhs.true53_crit_edge
  %vif54 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %nsdata.0137, i32 0, i32 59
  %10 = ptrtoint ptr %vif54 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vif54, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %11)
  %cmp56 = icmp eq i32 %11, 11
  br i1 %cmp56, label %land.lhs.true53.cleanup_crit_edge, label %land.lhs.true53.if.end58_crit_edge

land.lhs.true53.if.end58_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

land.lhs.true53.cleanup_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end58:                                         ; preds = %land.lhs.true53.if.end58_crit_edge, %if.then44.if.end58_crit_edge
  br i1 %cmp59, label %land.lhs.true60, label %if.end58.if.end65_crit_edge

if.end58.if.end65_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

land.lhs.true60:                                  ; preds = %if.end58
  %vif61 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %nsdata.0137, i32 0, i32 59
  %12 = ptrtoint ptr %vif61 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vif61, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp63 = icmp eq i32 %13, 1
  br i1 %cmp63, label %land.lhs.true60.cleanup_crit_edge, label %land.lhs.true60.if.end65_crit_edge

land.lhs.true60.if.end65_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

land.lhs.true60.cleanup_crit_edge:                ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end65:                                         ; preds = %land.lhs.true60.if.end65_crit_edge, %if.end58.if.end65_crit_edge
  %vif66 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %nsdata.0137, i32 0, i32 59
  %csa_active = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %nsdata.0137, i32 0, i32 59, i32 4
  %14 = ptrtoint ptr %csa_active to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %csa_active, align 1, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool67.not = icmp eq i8 %15, 0
  br i1 %tobool67.not, label %if.end69, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end69:                                         ; preds = %if.end65
  %addr72 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %nsdata.0137, i32 0, i32 59, i32 2
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr, align 4
  %18 = ptrtoint ptr %addr72 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr72, align 4
  %xor.i = xor i32 %19, %17
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ieee80211_sub_if_data, ptr %nsdata.0137, i32 0, i32 59, i32 2, i32 4
  %22 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %23, %21
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end76, label %if.end69.for.inc_crit_edge

if.end69.for.inc_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end76:                                         ; preds = %if.end69
  %24 = ptrtoint ptr %vif66 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vif66, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %25)
  %cmp1.i = icmp eq i32 %25, 6
  %or.cond.i = or i1 %cmp.i125, %cmp1.i
  %or.cond21.i = or i1 %cmp3.i, %or.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %25)
  %cmp5.i = icmp eq i32 %25, 10
  %or.cond22.i = or i1 %cmp5.i, %or.cond21.i
  br i1 %or.cond22.i, label %if.end82, label %lor.lhs.false6.i

lor.lhs.false6.i:                                 ; preds = %if.end76
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp8.i = icmp eq i32 %25, 4
  %or.cond23.i = and i1 %cmp7.i, %cmp8.i
  br i1 %or.cond23.i, label %lor.lhs.false6.i.for.inc_crit_edge, label %lor.rhs.i

lor.lhs.false6.i.for.inc_crit_edge:               ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.rhs.i:                                        ; preds = %lor.lhs.false6.i
  %26 = add i32 %25, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %26)
  %27 = icmp ult i32 %26, -2
  %or.cond134 = select i1 %cmp9.i, i1 true, i1 %27
  br i1 %or.cond134, label %lor.rhs.i.cleanup_crit_edge, label %land.lhs.true84

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end82:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp87 = icmp eq i32 %25, 3
  %or.cond = select i1 %cmp83, i1 %cmp87, i1 false
  br i1 %or.cond, label %if.end82.if.then88_crit_edge, label %if.end82.for.inc_crit_edge

if.end82.for.inc_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end82.if.then88_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then88

land.lhs.true84:                                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp87.old = icmp eq i32 %25, 3
  br i1 %cmp87.old, label %land.lhs.true84.if.then88_crit_edge, label %land.lhs.true84.for.inc_crit_edge

land.lhs.true84.for.inc_crit_edge:                ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true84.if.then88_crit_edge:              ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then88

if.then88:                                        ; preds = %land.lhs.true84.if.then88_crit_edge, %if.end82.if.then88_crit_edge
  %u = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %nsdata.0137, i32 0, i32 57
  %28 = ptrtoint ptr %bss to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %u, ptr %bss, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then88, %land.lhs.true84.for.inc_crit_edge, %if.end82.for.inc_crit_edge, %lor.lhs.false6.i.for.inc_crit_edge, %if.end69.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %29 = ptrtoint ptr %nsdata.0137 to i32
  call void @__asan_load4_noabort(i32 %29)
  %nsdata.0 = load ptr, ptr %nsdata.0137, align 8
  %cmp.not = icmp eq ptr %nsdata.0, %interfaces
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end30.for.end_crit_edge
  %chanctx_mtx = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %chanctx_mtx, i32 noundef 0) #14
  %call96 = tail call i32 @ieee80211_check_combinations(ptr noundef %sdata, ptr noundef null, i32 noundef 0, i8 noundef zeroext 0) #14
  tail call void @mutex_unlock(ptr noundef %chanctx_mtx) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.rhs.i.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %land.lhs.true60.cleanup_crit_edge, %land.lhs.true53.cleanup_crit_edge, %land.lhs.true46.cleanup_crit_edge
  %retval.0 = phi i32 [ %call96, %for.end ], [ -76, %lor.rhs.i.cleanup_crit_edge ], [ -16, %if.end65.cleanup_crit_edge ], [ -16, %land.lhs.true60.cleanup_crit_edge ], [ -16, %land.lhs.true46.cleanup_crit_edge ], [ -16, %land.lhs.true53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_check_combinations(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_select_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hw_addr_sync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_fetch_sw_netstats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get_bss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_net_fill_forward_path(ptr noundef %local, ptr noundef %sdata, ptr noundef %sta) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_net_fill_forward_path, i32 0, i32 1), ptr blockaddress(@trace_drv_net_fill_forward_path, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !154

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !132) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !145

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !132) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !161
  %call42 = tail call i32 @__traceiter_drv_net_fill_forward_path(ptr noundef null, ptr noundef %local, ptr noundef %sdata, ptr noundef %sta) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !162
  %13 = tail call i32 @llvm.read_register.i32(metadata !132) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !132) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !145

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !132) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !157
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_net_fill_forward_path, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_net_fill_forward_path, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_net_fill_forward_path.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_drv_net_fill_forward_path.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 2900, ptr noundef nonnull @.str.1) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !158
  %31 = tail call i32 @llvm.read_register.i32(metadata !132) #14
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
define internal fastcc void @trace_drv_return_int(ptr noundef %local, i32 noundef %ret) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), ptr blockaddress(@trace_drv_return_int, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !154

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !132) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !145

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !132) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !163
  %call42 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %local, i32 noundef %ret) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !164
  %13 = tail call i32 @llvm.read_register.i32(metadata !132) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !132) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !145

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !132) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !157
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_return_int.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_drv_return_int.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 219, ptr noundef nonnull @.str.1) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !158
  %31 = tail call i32 @llvm.read_register.i32(metadata !132) #14
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
declare dso_local i32 @__traceiter_drv_net_fill_forward_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_subif_start_xmit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_check_fast_rx_iface(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_config_iface_filter(ptr noundef %local, ptr noundef %sdata) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_config_iface_filter, i32 0, i32 1), ptr blockaddress(@trace_drv_config_iface_filter, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !154

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !132) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !145

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !132) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !165
  %call42 = tail call i32 @__traceiter_drv_config_iface_filter(ptr noundef null, ptr noundef %local, ptr noundef %sdata, i32 noundef 256, i32 noundef 256) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !166
  %13 = tail call i32 @llvm.read_register.i32(metadata !132) #14
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !132) #14
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !145

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !132) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !157
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_config_iface_filter, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_config_iface_filter, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_drv_config_iface_filter.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_drv_config_iface_filter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 565, ptr noundef nonnull @.str.1) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !158
  %31 = tail call i32 @llvm.read_register.i32(metadata !132) #14
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_config_iface_filter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_process_tdls_channel_switch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kcov_remote_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ibss_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_mesh_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ocb_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kcov_remote_start(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_process_addba_request(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_process_addba_resp(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_process_delba(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_vht_handle_opmode(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_process_mu_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_s1g_rx_twt_action(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_rx_queued_ext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_stop_rx_ba_session(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_rx_queued_mgmt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ibss_rx_queued_mgmt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_mesh_rx_queued_mgmt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_s1g_status_twt_action(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_vif_queues(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drv_change_interface(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_vif_queues(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_keys(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_debugfs_remove_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_destroy_frag_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_mesh_teardown_sdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_recalc_smps_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2004
  tail call void @ieee80211_recalc_smps(ptr noundef %add.ptr) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_csa_finalize_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_color_change_finalize_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_setup_sdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ocb_setup_sdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ibss_setup_sdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_mesh_init_sdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_debugfs_add_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_smps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_monitor_start_xmit(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @ieee80211_monitor_select_queue(ptr noundef %dev, ptr noundef %skb, ptr nocapture noundef readnone %sb_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %local1 = getelementptr i8, ptr %dev, i32 3396
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %queues to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queues, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %3)
  %cmp = icmp ult i16 %3, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %4 = call ptr @memset(ptr %cb.i, i32 0, i32 48)
  %call4 = tail call zeroext i1 @ieee80211_parse_tx_radiotap(ptr noundef %skb, ptr noundef %dev) #14
  br i1 %call4, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %it_len.i = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %it_len.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %it_len.i, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #14
  %conv8 = zext i16 %9 to i32
  %add.ptr = getelementptr i8, ptr %6, i32 %conv8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %add = add nuw nsw i32 %conv8, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add)
  %cmp10 = icmp ult i32 %11, %add
  br i1 %cmp10, label %if.end6.cleanup_crit_edge, label %lor.lhs.false

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end6
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr, align 2
  %call13 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %13) #20
  %add14 = add i32 %call13, %conv8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add14)
  %cmp15 = icmp ult i32 %11, %add14
  br i1 %cmp15, label %lor.lhs.false.cleanup_crit_edge, label %if.end18

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %call19 = tail call zeroext i16 @ieee80211_select_queue_80211(ptr noundef %add.ptr.i.i, ptr noundef %skb, ptr noundef %add.ptr) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %lor.lhs.false.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %call19, %if.end18 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_parse_tx_radiotap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_select_queue_80211(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight64(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_roc_purge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_mgd_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ibss_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__hw_addr_unsync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_cac_event(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_free_nan_func(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_txq_remove_vlan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_clear_tx_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sta_info_flush(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_notify(ptr nocapture noundef readnone %nb, i32 noundef %state, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %state)
  %cmp.not = icmp eq i32 %state, 11
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 82
  %2 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ieee80211_ptr, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %privid = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 52
  %6 = ptrtoint ptr %privid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %privid, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mac80211_wiphy_privid to i32))
  %8 = load ptr, ptr @mac80211_wiphy_privid, align 4
  %cmp7.not = icmp eq ptr %7, %8
  br i1 %cmp7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %name = getelementptr i8, ptr %1, i32 3408
  %9 = call ptr @memcpy(ptr %name, ptr %1, i32 16)
  tail call void @ieee80211_debugfs_rename_netdev(ptr noundef %add.ptr.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_debugfs_rename_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !12, !14, !16, !17, !19, !21, !23, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !40, !42, !44, !46, !47, !48, !50, !51, !53, !55, !56, !58, !59, !60, !62, !63, !65, !66, !68, !70, !72, !74, !76, !77, !79, !81, !83, !85, !87, !88, !90, !91, !93, !95, !96, !98, !100, !102, !104, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !122, !123, !125, !126, !127, !128, !130}
!llvm.named.register.sp = !{!132}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/mac80211/iface.c", i32 54, i32 17}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../net/mac80211/iface.c", i32 1022, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/mac80211/iface.c", i32 1035, i32 34}
!9 = !{ptr @ieee80211_add_virtual_monitor.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../net/mac80211/iface.c", i32 1078, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../net/mac80211/iface.c", i32 1090, i32 2}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../net/mac80211/iface.c", i32 1095, i32 10}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/mac80211/iface.c", i32 1213, i32 7}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../net/mac80211/iface.c", i32 1819, i32 2}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../net/mac80211/iface.c", i32 1985, i32 2}
!23 = !{ptr @ieee80211_if_add.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../net/mac80211/iface.c", i32 2031, i32 18}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ieee80211_if_add.__key.7, !27, !"__key", i1 false, i1 false}
!27 = !{!"../net/mac80211/iface.c", i32 2082, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ieee80211_if_add.__key.9, !27, !"__key", i1 false, i1 false}
!30 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ieee80211_if_add.__key.11, !32, !"__key", i1 false, i1 false}
!32 = !{!"../net/mac80211/iface.c", i32 2084, i32 2}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ieee80211_if_add.__key.13, !32, !"__key", i1 false, i1 false}
!35 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../net/mac80211/iface.c", i32 2165, i32 2}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../net/mac80211/iface.c", i32 2186, i32 6}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../net/mac80211/iface.c", i32 2197, i32 2}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/mac80211/iface.c", i32 2212, i32 2}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/mac80211/driver-ops.h", i32 1412, i32 2}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../net/mac80211/driver-ops.h", i32 1413, i32 2}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../net/mac80211/trace.h", i32 2779, i32 1}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!62 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../net/mac80211/trace.h", i32 202, i32 1}
!65 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../net/mac80211/iface.c", i32 322, i32 8}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../net/mac80211/iface.c", i32 325, i32 8}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../net/mac80211/iface.c", i32 339, i32 6}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../net/mac80211/iface.c", i32 342, i32 6}
!74 = !{ptr @skb_queue_head_init.__key, !75, !"__key", i1 false, i1 false}
!75 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!76 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ieee80211_dataif_8023_ops, !78, !"ieee80211_dataif_8023_ops", i1 false, i1 false}
!78 = !{!"../net/mac80211/iface.c", i32 850, i32 36}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../net/mac80211/iface.c", i32 247, i32 2}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../net/mac80211/iface.c", i32 809, i32 9}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../net/mac80211/driver-ops.h", i32 1498, i32 7}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../net/mac80211/trace.h", i32 2895, i32 1}
!87 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../net/mac80211/trace.h", i32 207, i32 1}
!90 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!91 = !{ptr @ieee80211_dataif_ops, !92, !"ieee80211_dataif_ops", i1 false, i1 false}
!92 = !{!"../net/mac80211/iface.c", i32 742, i32 36}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../net/mac80211/trace.h", i32 537, i32 1}
!95 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!96 = !{ptr @.str.27, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/mac80211/iface.c", i32 1535, i32 3}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../net/mac80211/iface.c", i32 1733, i32 2}
!100 = !{ptr @.str.28, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/mac80211/iface.c", i32 1807, i32 2}
!102 = !{ptr @ieee80211_setup_sdata.bssid_wildcard, !103, !"bssid_wildcard", i1 false, i1 false}
!103 = !{!"../net/mac80211/iface.c", i32 1632, i32 18}
!104 = !{ptr @ieee80211_setup_sdata.__key, !105, !"__key", i1 false, i1 false}
!105 = !{!"../net/mac80211/iface.c", i32 1661, i32 2}
!106 = !{ptr @ieee80211_setup_sdata.__key.29, !107, !"__key", i1 false, i1 false}
!107 = !{!"../net/mac80211/iface.c", i32 1662, i32 2}
!108 = !{ptr @.str.30, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @ieee80211_setup_sdata.__key.31, !110, !"__key", i1 false, i1 false}
!110 = !{!"../net/mac80211/iface.c", i32 1663, i32 2}
!111 = !{ptr @.str.32, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @ieee80211_setup_sdata.__key.33, !113, !"__key", i1 false, i1 false}
!113 = !{!"../net/mac80211/iface.c", i32 1664, i32 2}
!114 = !{ptr @.str.34, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @ieee80211_setup_sdata.__key.35, !116, !"__key", i1 false, i1 false}
!116 = !{!"../net/mac80211/iface.c", i32 1708, i32 3}
!117 = !{ptr @.str.36, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @ieee80211_monitorif_ops, !119, !"ieee80211_monitorif_ops", i1 false, i1 false}
!119 = !{!"../net/mac80211/iface.c", i32 781, i32 36}
!120 = !{ptr @xa_init_flags.__key, !121, !"__key", i1 false, i1 false}
!121 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!122 = !{ptr @.str.37, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.38, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/mac80211/iface.c", i32 1918, i32 4}
!125 = !{ptr @.str.39, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @ieee80211_assign_perm_addr._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @ieee80211_assign_perm_addr._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../net/mac80211/iface.c", i32 425, i32 2}
!130 = !{ptr @mac80211_netdev_notifier, !131, !"mac80211_netdev_notifier", i1 false, i1 false}
!131 = !{!"../net/mac80211/iface.c", i32 2261, i32 30}
!132 = !{!"sp"}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{i64 2149976422}
!143 = !{i64 2149976688}
!144 = !{!"branch_weights", i32 1, i32 2000}
!145 = !{!"branch_weights", i32 2000, i32 1}
!146 = !{i8 0, i8 2}
!147 = !{i64 2161511255}
!148 = !{i64 2161531858}
!149 = !{i64 2151478934}
!150 = !{i64 2148639551, i64 2148639577, i64 2148639606, i64 2148639640, i64 2148639671, i64 2148639694}
!151 = !{i32 0, i32 33}
!152 = !{!"auto-init"}
!153 = !{i64 2148642016, i64 2148642042, i64 2148642071, i64 2148642105, i64 2148642136, i64 2148642159}
!154 = !{i64 2148260277, i64 2148260282, i64 2148260295, i64 2148260339, i64 2148260373, i64 2148260394}
!155 = !{i64 2161192905}
!156 = !{i64 2161193136}
!157 = !{i64 2149984981}
!158 = !{i64 2149986017}
!159 = !{i64 2158828956}
!160 = !{i64 2158829159}
!161 = !{i64 2161292272}
!162 = !{i64 2161292519}
!163 = !{i64 2158845246}
!164 = !{i64 2158845457}
!165 = !{i64 2159184584}
!166 = !{i64 2159184875}
