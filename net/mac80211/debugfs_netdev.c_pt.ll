; ModuleID = '/llk/IR_all_yes/net/mac80211/debugfs_netdev.c_pt.bc'
source_filename = "../net/mac80211/debugfs_netdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.125, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.anon.125 = type { i64, i64, i8 }
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.local_debugfsdentries, i8, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
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
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.101, %struct.list_head, %struct.list_head, %union.anon.102 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { %struct.spinlock, i32 }
%union.anon.101 = type { %struct.list_head }
%union.anon.102 = type { %struct.hlist_node }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_txq = type { ptr, ptr, i8, i8, [2 x i8], [0 x i8] }
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
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.ieee80211_if_managed = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, i32, i8, i8, ptr, ptr, ptr, [6 x i8], i8, i8, i8, i8, i32, i32, %struct.work_struct, i32, i8, i8, i8, i32, i8, i8, i16, i32, i32, i32, i32, i32, i8, i16, %struct.ewma_beacon_signal, i32, i32, i32, i32, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_s1g_cap, %struct.ieee80211_s1g_cap, [6 x i8], %struct.delayed_work, ptr, ptr, %struct.spinlock, i8, i8, [4 x %struct.ieee80211_sta_tx_tspec], %struct.delayed_work, ptr, i32 }
%struct.ewma_beacon_signal = type { i32 }
%struct.ieee80211_s1g_cap = type { [10 x i8], [5 x i8] }
%struct.ieee80211_sta_tx_tspec = type { i32, i32, i8, i8, i32, i32, i8 }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"netdev:%s\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stations\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@flags_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_flags, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@state_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"txpower\00", [24 x i8] zeroinitializer }, align 32
@txpower_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_txpower, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"user_power_level\00", [47 x i8] zeroinitializer }, align 32
@user_power_level_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_user_power_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ap_power_level\00", [17 x i8] zeroinitializer }, align 32
@ap_power_level_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_ap_power_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dev_base_lock = external dso_local global %struct.rwlock_t, align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%#x\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%#lx\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rc_rateidx_mask_2ghz\00", [43 x i8] zeroinitializer }, align 32
@rc_rateidx_mask_2ghz_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_rc_rateidx_mask_2ghz, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rc_rateidx_mask_5ghz\00", [43 x i8] zeroinitializer }, align 32
@rc_rateidx_mask_5ghz_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_rc_rateidx_mask_5ghz, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rc_rateidx_mcs_mask_2ghz\00", [39 x i8] zeroinitializer }, align 32
@rc_rateidx_mcs_mask_2ghz_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_rc_rateidx_mcs_mask_2ghz, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rc_rateidx_mcs_mask_5ghz\00", [39 x i8] zeroinitializer }, align 32
@rc_rateidx_mcs_mask_5ghz_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_rc_rateidx_mcs_mask_5ghz, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rc_rateidx_vht_mcs_mask_2ghz\00", [35 x i8] zeroinitializer }, align 32
@rc_rateidx_vht_mcs_mask_2ghz_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_rc_rateidx_vht_mcs_mask_2ghz, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rc_rateidx_vht_mcs_mask_5ghz\00", [35 x i8] zeroinitializer }, align 32
@rc_rateidx_vht_mcs_mask_5ghz_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_rc_rateidx_vht_mcs_mask_5ghz, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hw_queues\00", [22 x i8] zeroinitializer }, align 32
@hw_queues_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_hw_queues, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aqm\00", [28 x i8] zeroinitializer }, align 32
@aqm_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_aqm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"airtime\00", [24 x i8] zeroinitializer }, align 32
@airtime_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_airtime, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%.2x \00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%04x \00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"AC queues: VO:%d VI:%d BE:%d BK:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cab queue: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [127 x i8], [33 x i8] } { [127 x i8] c"ac backlog-bytes backlog-packets new-flows drops marks overlimit collisions tx-bytes tx-packets\0A%u %u %u %u %u %u %u %u %u %u\0A\00", [33 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"RX: %llu us\0ATX: %llu us\0AWeight: %u\0AVirt-T: %lld us\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tsf\00", [28 x i8] zeroinitializer }, align 32
@tsf_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_tsf, ptr @ieee80211_if_write_tsf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"estab_plinks\00", [19 x i8] zeroinitializer }, align 32
@estab_plinks_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_estab_plinks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0x%016llx\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ieee80211_if_parse_tsf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.38, i32 568, ptr @.str.39, ptr @.str.40 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"debugfs reset TSF\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ieee80211_if_parse_tsf\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"net/mac80211/debugfs_netdev.c\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ieee80211_if_parse_tsf._entry_ptr = internal global ptr @ieee80211_if_parse_tsf._entry, section ".printk_index", align 4
@ieee80211_if_parse_tsf._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.38, i32 587, ptr @.str.39, ptr @.str.40 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"debugfs offset TSF by %018lld\0A\00", [33 x i8] zeroinitializer }, align 32
@ieee80211_if_parse_tsf._entry_ptr.43 = internal global ptr @ieee80211_if_parse_tsf._entry.41, section ".printk_index", align 4
@ieee80211_if_parse_tsf._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.38, i32 594, ptr @.str.39, ptr @.str.40 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"debugfs set TSF to %#018llx\0A\00", [35 x i8] zeroinitializer }, align 32
@ieee80211_if_parse_tsf._entry_ptr.46 = internal global ptr @ieee80211_if_parse_tsf._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mesh_stats\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fwded_mcast\00", [20 x i8] zeroinitializer }, align 32
@fwded_mcast_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_fwded_mcast, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fwded_unicast\00", [18 x i8] zeroinitializer }, align 32
@fwded_unicast_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_fwded_unicast, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fwded_frames\00", [19 x i8] zeroinitializer }, align 32
@fwded_frames_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_fwded_frames, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dropped_frames_ttl\00", [45 x i8] zeroinitializer }, align 32
@dropped_frames_ttl_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dropped_frames_ttl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dropped_frames_no_route\00", [40 x i8] zeroinitializer }, align 32
@dropped_frames_no_route_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dropped_frames_no_route, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dropped_frames_congestion\00", [38 x i8] zeroinitializer }, align 32
@dropped_frames_congestion_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dropped_frames_congestion, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mesh_config\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dot11MeshMaxRetries\00", [44 x i8] zeroinitializer }, align 32
@dot11MeshMaxRetries_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dot11MeshMaxRetries, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dot11MeshRetryTimeout\00", [42 x i8] zeroinitializer }, align 32
@dot11MeshRetryTimeout_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dot11MeshRetryTimeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dot11MeshConfirmTimeout\00", [40 x i8] zeroinitializer }, align 32
@dot11MeshConfirmTimeout_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dot11MeshConfirmTimeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dot11MeshHoldingTimeout\00", [40 x i8] zeroinitializer }, align 32
@dot11MeshHoldingTimeout_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dot11MeshHoldingTimeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dot11MeshTTL\00", [19 x i8] zeroinitializer }, align 32
@dot11MeshTTL_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dot11MeshTTL, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"element_ttl\00", [20 x i8] zeroinitializer }, align 32
@element_ttl_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_element_ttl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"auto_open_plinks\00", [47 x i8] zeroinitializer }, align 32
@auto_open_plinks_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_auto_open_plinks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dot11MeshMaxPeerLinks\00", [42 x i8] zeroinitializer }, align 32
@dot11MeshMaxPeerLinks_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dot11MeshMaxPeerLinks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dot11MeshHWMPactivePathTimeout\00", [33 x i8] zeroinitializer }, align 32
@dot11MeshHWMPactivePathTimeout_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dot11MeshHWMPactivePathTimeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dot11MeshHWMPpreqMinInterval\00", [35 x i8] zeroinitializer }, align 32
@dot11MeshHWMPpreqMinInterval_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dot11MeshHWMPpreqMinInterval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dot11MeshHWMPperrMinInterval\00", [35 x i8] zeroinitializer }, align 32
@dot11MeshHWMPperrMinInterval_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dot11MeshHWMPperrMinInterval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"dot11MeshHWMPnetDiameterTraversalTime\00", [58 x i8] zeroinitializer }, align 32
@dot11MeshHWMPnetDiameterTraversalTime_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dot11MeshHWMPnetDiameterTraversalTime, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dot11MeshHWMPmaxPREQretries\00", [36 x i8] zeroinitializer }, align 32
@dot11MeshHWMPmaxPREQretries_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dot11MeshHWMPmaxPREQretries, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"path_refresh_time\00", [46 x i8] zeroinitializer }, align 32
@path_refresh_time_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_path_refresh_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"min_discovery_timeout\00", [42 x i8] zeroinitializer }, align 32
@min_discovery_timeout_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_min_discovery_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dot11MeshHWMPRootMode\00", [42 x i8] zeroinitializer }, align 32
@dot11MeshHWMPRootMode_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dot11MeshHWMPRootMode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dot11MeshHWMPRannInterval\00", [38 x i8] zeroinitializer }, align 32
@dot11MeshHWMPRannInterval_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dot11MeshHWMPRannInterval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dot11MeshForwarding\00", [44 x i8] zeroinitializer }, align 32
@dot11MeshForwarding_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dot11MeshForwarding, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dot11MeshGateAnnouncementProtocol\00", [62 x i8] zeroinitializer }, align 32
@dot11MeshGateAnnouncementProtocol_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dot11MeshGateAnnouncementProtocol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rssi_threshold\00", [17 x i8] zeroinitializer }, align 32
@rssi_threshold_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_rssi_threshold, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ht_opmode\00", [22 x i8] zeroinitializer }, align 32
@ht_opmode_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_ht_opmode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dot11MeshHWMPactivePathToRootTimeout\00", [59 x i8] zeroinitializer }, align 32
@dot11MeshHWMPactivePathToRootTimeout_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dot11MeshHWMPactivePathToRootTimeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dot11MeshHWMProotInterval\00", [38 x i8] zeroinitializer }, align 32
@dot11MeshHWMProotInterval_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dot11MeshHWMProotInterval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dot11MeshHWMPconfirmationInterval\00", [62 x i8] zeroinitializer }, align 32
@dot11MeshHWMPconfirmationInterval_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dot11MeshHWMPconfirmationInterval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"power_mode\00", [21 x i8] zeroinitializer }, align 32
@power_mode_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_power_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dot11MeshAwakeWindowDuration\00", [35 x i8] zeroinitializer }, align 32
@dot11MeshAwakeWindowDuration_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dot11MeshAwakeWindowDuration, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dot11MeshConnectedToMeshGate\00", [35 x i8] zeroinitializer }, align 32
@dot11MeshConnectedToMeshGate_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dot11MeshConnectedToMeshGate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dot11MeshNolearn\00", [47 x i8] zeroinitializer }, align 32
@dot11MeshNolearn_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dot11MeshNolearn, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dot11MeshConnectedToAuthServer\00", [33 x i8] zeroinitializer }, align 32
@dot11MeshConnectedToAuthServer_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dot11MeshConnectedToAuthServer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bssid\00", [26 x i8] zeroinitializer }, align 32
@bssid_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_bssid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aid\00", [28 x i8] zeroinitializer }, align 32
@aid_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_aid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"beacon_timeout\00", [17 x i8] zeroinitializer }, align 32
@beacon_timeout_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_beacon_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smps\00", [27 x i8] zeroinitializer }, align 32
@smps_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_smps, ptr @ieee80211_if_write_smps, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tkip_mic_test\00", [18 x i8] zeroinitializer }, align 32
@tkip_mic_test_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @ieee80211_if_write_tkip_mic_test, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"beacon_loss\00", [20 x i8] zeroinitializer }, align 32
@beacon_loss_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @ieee80211_if_write_beacon_loss, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uapsd_queues\00", [19 x i8] zeroinitializer }, align 32
@uapsd_queues_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_uapsd_queues, ptr @ieee80211_if_write_uapsd_queues, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uapsd_max_sp_len\00", [47 x i8] zeroinitializer }, align 32
@uapsd_max_sp_len_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_uapsd_max_sp_len, ptr @ieee80211_if_write_uapsd_max_sp_len, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tdls_wider_bw\00", [18 x i8] zeroinitializer }, align 32
@tdls_wider_bw_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_tdls_wider_bw, ptr @ieee80211_if_write_tdls_wider_bw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pM\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"request: %s\0Aused: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@smps_modes = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98], [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"static\00", [25 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dynamic\00", [24 x i8] zeroinitializer }, align 32
@ieee80211_tx_skb_tid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/mac80211/ieee80211_i.h\00", [37 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"num_mcast_sta\00", [18 x i8] zeroinitializer }, align 32
@num_mcast_sta_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_num_mcast_sta, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"num_sta_ps\00", [21 x i8] zeroinitializer }, align 32
@num_sta_ps_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_num_sta_ps, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dtim_count\00", [21 x i8] zeroinitializer }, align 32
@dtim_count_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_dtim_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"num_buffered_multicast\00", [41 x i8] zeroinitializer }, align 32
@num_buffered_multicast_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_num_buffered_multicast, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"multicast_to_unicast\00", [43 x i8] zeroinitializer }, align 32
@multicast_to_unicast_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_multicast_to_unicast, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@num_mcast_sta_vlan_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ieee80211_if_read_num_mcast_sta_vlan, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 12]
@__sancov_gen_cov_switch_values.108 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 8, i64 43, i64 45]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 838, i32 15 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 841, i32 54 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 800, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [10 x i8] c"flags_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 801, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [10 x i8] c"state_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 802, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [12 x i8] c"txpower_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 803, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [21 x i8] c"user_power_level_ops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 214, i32 1 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 804, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [19 x i8] c"ap_power_level_ops\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 213, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 210, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 211, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 212, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 678, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [25 x i8] c"rc_rateidx_mask_2ghz_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 169, i32 1 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 679, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [25 x i8] c"rc_rateidx_mask_5ghz_ops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 171, i32 1 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 680, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [29 x i8] c"rc_rateidx_mcs_mask_2ghz_ops\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 681, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [29 x i8] c"rc_rateidx_mcs_mask_5ghz_ops\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 175, i32 1 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 682, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant [33 x i8] c"rc_rateidx_vht_mcs_mask_2ghz_ops\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 192, i32 1 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 683, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [33 x i8] c"rc_rateidx_vht_mcs_mask_5ghz_ops\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 208, i32 1 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 684, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [14 x i8] c"hw_queues_ops\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 234, i32 1 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 689, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [8 x i8] c"aqm_ops\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 513, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 690, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [12 x i8] c"airtime_ops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 541, i32 1 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 173, i32 1 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 186, i32 45 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 222, i32 31 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 229, i32 45 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 495, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 695, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 723, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 530, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 734, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [8 x i8] c"tsf_ops\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 601, i32 1 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 735, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [17 x i8] c"estab_plinks_ops\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 605, i32 1 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 554, i32 32 }
@___asan_gen_.257 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 156, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 565, i32 19 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 568, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 585, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 593, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 740, i32 42 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 745, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant [16 x i8] c"fwded_mcast_ops\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 608, i32 1 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 746, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [18 x i8] c"fwded_unicast_ops\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 609, i32 1 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 747, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [17 x i8] c"fwded_frames_ops\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 610, i32 1 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 748, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [23 x i8] c"dropped_frames_ttl_ops\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 611, i32 1 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 749, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [28 x i8] c"dropped_frames_no_route_ops\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 614, i32 1 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 750, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [30 x i8] c"dropped_frames_congestion_ops\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 612, i32 1 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 756, i32 42 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 762, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [24 x i8] c"dot11MeshMaxRetries_ops\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 618, i32 1 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 763, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant [26 x i8] c"dot11MeshRetryTimeout_ops\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 620, i32 1 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 764, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [28 x i8] c"dot11MeshConfirmTimeout_ops\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 622, i32 1 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 765, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant [28 x i8] c"dot11MeshHoldingTimeout_ops\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 624, i32 1 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 766, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant [17 x i8] c"dot11MeshTTL_ops\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 626, i32 1 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 767, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant [16 x i8] c"element_ttl_ops\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 627, i32 1 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 768, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant [21 x i8] c"auto_open_plinks_ops\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 628, i32 1 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 769, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant [26 x i8] c"dot11MeshMaxPeerLinks_ops\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 629, i32 1 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 770, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant [35 x i8] c"dot11MeshHWMPactivePathTimeout_ops\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 631, i32 1 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 771, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant [33 x i8] c"dot11MeshHWMPpreqMinInterval_ops\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 633, i32 1 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 772, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant [33 x i8] c"dot11MeshHWMPperrMinInterval_ops\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 635, i32 1 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 773, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant [42 x i8] c"dot11MeshHWMPnetDiameterTraversalTime_ops\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 637, i32 1 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 774, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant [32 x i8] c"dot11MeshHWMPmaxPREQretries_ops\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 639, i32 1 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 775, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant [22 x i8] c"path_refresh_time_ops\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 641, i32 1 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 776, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant [26 x i8] c"min_discovery_timeout_ops\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 643, i32 1 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 777, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant [26 x i8] c"dot11MeshHWMPRootMode_ops\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 645, i32 1 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 778, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant [30 x i8] c"dot11MeshHWMPRannInterval_ops\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 649, i32 1 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 779, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant [24 x i8] c"dot11MeshForwarding_ops\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 651, i32 1 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 780, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant [38 x i8] c"dot11MeshGateAnnouncementProtocol_ops\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 647, i32 1 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 781, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant [19 x i8] c"rssi_threshold_ops\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 652, i32 1 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 782, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant [14 x i8] c"ht_opmode_ops\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 653, i32 1 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 783, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant [41 x i8] c"dot11MeshHWMPactivePathToRootTimeout_ops\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 654, i32 1 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 784, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant [30 x i8] c"dot11MeshHWMProotInterval_ops\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 656, i32 1 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 785, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant [38 x i8] c"dot11MeshHWMPconfirmationInterval_ops\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 658, i32 1 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 786, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant [15 x i8] c"power_mode_ops\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 660, i32 1 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 787, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant [33 x i8] c"dot11MeshAwakeWindowDuration_ops\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 661, i32 1 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 788, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant [33 x i8] c"dot11MeshConnectedToMeshGate_ops\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 663, i32 1 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 789, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant [21 x i8] c"dot11MeshNolearn_ops\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 665, i32 1 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 790, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant [35 x i8] c"dot11MeshConnectedToAuthServer_ops\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 666, i32 1 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 696, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant [10 x i8] c"bssid_ops\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 697, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant [8 x i8] c"aid_ops\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 238, i32 1 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 698, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant [19 x i8] c"beacon_timeout_ops\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 239, i32 1 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 699, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant [9 x i8] c"smps_ops\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 300, i32 1 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 700, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant [18 x i8] c"tkip_mic_test_ops\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 366, i32 1 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 701, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant [16 x i8] c"beacon_loss_ops\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 378, i32 1 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 702, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant [17 x i8] c"uapsd_queues_ops\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 406, i32 1 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 703, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant [21 x i8] c"uapsd_max_sp_len_ops\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 434, i32 1 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 704, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant [18 x i8] c"tdls_wider_bw_ops\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 462, i32 1 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 237, i32 1 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 278, i32 32 }
@___asan_gen_.568 = private unnamed_addr constant [11 x i8] c"smps_modes\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 267, i32 20 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 268, i32 31 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 269, i32 25 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 270, i32 28 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 271, i32 29 }
@___asan_gen_.587 = private unnamed_addr constant [30 x i8] c"../net/mac80211/ieee80211_i.h\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 2199, i32 17 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 385, i32 31 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 709, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant [18 x i8] c"num_mcast_sta_ops\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 465, i32 1 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 711, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant [15 x i8] c"num_sta_ps_ops\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 466, i32 1 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 712, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant [15 x i8] c"dtim_count_ops\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 467, i32 1 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 713, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant [27 x i8] c"num_buffered_multicast_ops\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 476, i32 1 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 715, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant [25 x i8] c"multicast_to_unicast_ops\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 543, i32 1 }
@___asan_gen_.622 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 473, i32 32 }
@___asan_gen_.625 = private unnamed_addr constant [23 x i8] c"num_mcast_sta_vlan_ops\00", align 1
@___asan_gen_.626 = private constant [33 x i8] c"../net/mac80211/debugfs_netdev.c\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 468, i32 1 }
@llvm.compiler.used = appending global [175 x ptr] [ptr @ieee80211_if_parse_tsf._entry, ptr @ieee80211_if_parse_tsf._entry.41, ptr @ieee80211_if_parse_tsf._entry.44, ptr @ieee80211_if_parse_tsf._entry_ptr, ptr @ieee80211_if_parse_tsf._entry_ptr.43, ptr @ieee80211_if_parse_tsf._entry_ptr.46, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @flags_ops, ptr @.str.3, ptr @state_ops, ptr @.str.4, ptr @txpower_ops, ptr @.str.5, ptr @user_power_level_ops, ptr @.str.6, ptr @ap_power_level_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @rc_rateidx_mask_2ghz_ops, ptr @.str.11, ptr @rc_rateidx_mask_5ghz_ops, ptr @.str.12, ptr @rc_rateidx_mcs_mask_2ghz_ops, ptr @.str.13, ptr @rc_rateidx_mcs_mask_5ghz_ops, ptr @.str.14, ptr @rc_rateidx_vht_mcs_mask_2ghz_ops, ptr @.str.15, ptr @rc_rateidx_vht_mcs_mask_5ghz_ops, ptr @.str.16, ptr @hw_queues_ops, ptr @.str.17, ptr @aqm_ops, ptr @.str.18, ptr @airtime_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @tsf_ops, ptr @.str.30, ptr @estab_plinks_ops, ptr @.str.31, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @fwded_mcast_ops, ptr @.str.49, ptr @fwded_unicast_ops, ptr @.str.50, ptr @fwded_frames_ops, ptr @.str.51, ptr @dropped_frames_ttl_ops, ptr @.str.52, ptr @dropped_frames_no_route_ops, ptr @.str.53, ptr @dropped_frames_congestion_ops, ptr @.str.54, ptr @.str.55, ptr @dot11MeshMaxRetries_ops, ptr @.str.56, ptr @dot11MeshRetryTimeout_ops, ptr @.str.57, ptr @dot11MeshConfirmTimeout_ops, ptr @.str.58, ptr @dot11MeshHoldingTimeout_ops, ptr @.str.59, ptr @dot11MeshTTL_ops, ptr @.str.60, ptr @element_ttl_ops, ptr @.str.61, ptr @auto_open_plinks_ops, ptr @.str.62, ptr @dot11MeshMaxPeerLinks_ops, ptr @.str.63, ptr @dot11MeshHWMPactivePathTimeout_ops, ptr @.str.64, ptr @dot11MeshHWMPpreqMinInterval_ops, ptr @.str.65, ptr @dot11MeshHWMPperrMinInterval_ops, ptr @.str.66, ptr @dot11MeshHWMPnetDiameterTraversalTime_ops, ptr @.str.67, ptr @dot11MeshHWMPmaxPREQretries_ops, ptr @.str.68, ptr @path_refresh_time_ops, ptr @.str.69, ptr @min_discovery_timeout_ops, ptr @.str.70, ptr @dot11MeshHWMPRootMode_ops, ptr @.str.71, ptr @dot11MeshHWMPRannInterval_ops, ptr @.str.72, ptr @dot11MeshForwarding_ops, ptr @.str.73, ptr @dot11MeshGateAnnouncementProtocol_ops, ptr @.str.74, ptr @rssi_threshold_ops, ptr @.str.75, ptr @ht_opmode_ops, ptr @.str.76, ptr @dot11MeshHWMPactivePathToRootTimeout_ops, ptr @.str.77, ptr @dot11MeshHWMProotInterval_ops, ptr @.str.78, ptr @dot11MeshHWMPconfirmationInterval_ops, ptr @.str.79, ptr @power_mode_ops, ptr @.str.80, ptr @dot11MeshAwakeWindowDuration_ops, ptr @.str.81, ptr @dot11MeshConnectedToMeshGate_ops, ptr @.str.82, ptr @dot11MeshNolearn_ops, ptr @.str.83, ptr @dot11MeshConnectedToAuthServer_ops, ptr @.str.84, ptr @bssid_ops, ptr @.str.85, ptr @aid_ops, ptr @.str.86, ptr @beacon_timeout_ops, ptr @.str.87, ptr @smps_ops, ptr @.str.88, ptr @tkip_mic_test_ops, ptr @.str.89, ptr @beacon_loss_ops, ptr @.str.90, ptr @uapsd_queues_ops, ptr @.str.91, ptr @uapsd_max_sp_len_ops, ptr @.str.92, ptr @tdls_wider_bw_ops, ptr @.str.93, ptr @.str.94, ptr @smps_modes, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @num_mcast_sta_ops, ptr @.str.103, ptr @num_sta_ps_ops, ptr @.str.104, ptr @dtim_count_ops, ptr @.str.105, ptr @num_buffered_multicast_ops, ptr @.str.106, ptr @multicast_to_unicast_ops, ptr @.str.107, ptr @num_mcast_sta_vlan_ops], section "llvm.metadata"
@0 = internal global [172 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flags_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @state_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txpower_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_power_level_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_power_level_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_rateidx_mask_2ghz_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_rateidx_mask_5ghz_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_rateidx_mcs_mask_2ghz_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_rateidx_mcs_mask_5ghz_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_rateidx_vht_mcs_mask_2ghz_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_rateidx_vht_mcs_mask_5ghz_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_queues_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aqm_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airtime_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 127, i32 160, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsf_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @estab_plinks_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_if_parse_tsf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_if_parse_tsf._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_if_parse_tsf._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwded_mcast_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwded_unicast_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwded_frames_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dropped_frames_ttl_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dropped_frames_no_route_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dropped_frames_congestion_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot11MeshMaxRetries_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot11MeshRetryTimeout_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot11MeshConfirmTimeout_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot11MeshHoldingTimeout_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot11MeshTTL_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @element_ttl_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auto_open_plinks_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot11MeshMaxPeerLinks_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot11MeshHWMPactivePathTimeout_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot11MeshHWMPpreqMinInterval_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot11MeshHWMPperrMinInterval_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot11MeshHWMPnetDiameterTraversalTime_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot11MeshHWMPmaxPREQretries_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_refresh_time_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_discovery_timeout_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot11MeshHWMPRootMode_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot11MeshHWMPRannInterval_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot11MeshForwarding_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot11MeshGateAnnouncementProtocol_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rssi_threshold_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht_opmode_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot11MeshHWMPactivePathToRootTimeout_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot11MeshHWMProotInterval_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot11MeshHWMPconfirmationInterval_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_mode_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot11MeshAwakeWindowDuration_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot11MeshConnectedToMeshGate_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot11MeshNolearn_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot11MeshConnectedToAuthServer_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bssid_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aid_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beacon_timeout_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smps_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tkip_mic_test_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beacon_loss_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uapsd_queues_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uapsd_max_sp_len_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdls_wider_bw_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smps_modes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_mcast_sta_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_sta_ps_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtim_count_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_buffered_multicast_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multicast_to_unicast_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_mcast_sta_vlan_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_debugfs_add_netdev(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [26 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %buf) #8
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %0 = call ptr @memset(ptr %buf, i32 255, i32 26)
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str, ptr noundef %name)
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %1 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %local, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wiphy, align 8
  %debugfsdir = getelementptr inbounds %struct.wiphy, ptr %4, i32 0, i32 58
  %5 = ptrtoint ptr %debugfsdir to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %debugfsdir, align 4
  %call3 = call ptr @debugfs_create_dir(ptr noundef nonnull %buf, ptr noundef %6) #8
  %debugfs_dir = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 12
  %7 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3, ptr %debugfs_dir, align 8
  %call6 = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef %call3) #8
  %debugfs = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 58
  %8 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %debugfs, align 8
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %9 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %debugfs_dir, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %entry.add_files.exit_crit_edge, label %if.end.i

entry.add_files.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_files.exit

if.end.i:                                         ; preds = %entry
  %call.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 256, ptr noundef nonnull %10, ptr noundef %sdata, ptr noundef nonnull @flags_ops) #8
  %11 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %debugfs_dir, align 8
  %call5.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 256, ptr noundef %12, ptr noundef %sdata, ptr noundef nonnull @state_ops) #8
  %13 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %debugfs_dir, align 8
  %call8.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 256, ptr noundef %14, ptr noundef %sdata, ptr noundef nonnull @txpower_ops) #8
  %15 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %debugfs_dir, align 8
  %call11.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 256, ptr noundef %16, ptr noundef %sdata, ptr noundef nonnull @user_power_level_ops) #8
  %17 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %debugfs_dir, align 8
  %call14.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 256, ptr noundef %18, ptr noundef %sdata, ptr noundef nonnull @ap_power_level_ops) #8
  %19 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vif.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %20)
  %cmp.not.i = icmp eq i32 %20, 6
  br i1 %cmp.not.i, label %if.end.i.add_files.exit_crit_edge, label %if.then16.i

if.end.i.add_files.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_files.exit

if.then16.i:                                      ; preds = %if.end.i
  %21 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %debugfs_dir, align 8
  %call.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef %22, ptr noundef %sdata, ptr noundef nonnull @rc_rateidx_mask_2ghz_ops) #8
  %23 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %debugfs_dir, align 8
  %call3.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 256, ptr noundef %24, ptr noundef %sdata, ptr noundef nonnull @rc_rateidx_mask_5ghz_ops) #8
  %25 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %debugfs_dir, align 8
  %call6.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 256, ptr noundef %26, ptr noundef %sdata, ptr noundef nonnull @rc_rateidx_mcs_mask_2ghz_ops) #8
  %27 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %debugfs_dir, align 8
  %call9.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 256, ptr noundef %28, ptr noundef %sdata, ptr noundef nonnull @rc_rateidx_mcs_mask_5ghz_ops) #8
  %29 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %debugfs_dir, align 8
  %call12.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 256, ptr noundef %30, ptr noundef %sdata, ptr noundef nonnull @rc_rateidx_vht_mcs_mask_2ghz_ops) #8
  %31 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %debugfs_dir, align 8
  %call15.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 256, ptr noundef %32, ptr noundef %sdata, ptr noundef nonnull @rc_rateidx_vht_mcs_mask_5ghz_ops) #8
  %33 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %debugfs_dir, align 8
  %call18.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 256, ptr noundef %34, ptr noundef %sdata, ptr noundef nonnull @hw_queues_ops) #8
  %35 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %local, align 4
  %ops.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i.i, align 4
  %wake_tx_queue.i.i = getelementptr inbounds %struct.ieee80211_ops, ptr %38, i32 0, i32 92
  %39 = ptrtoint ptr %wake_tx_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wake_tx_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %if.then16.i.if.end17thread-pre-split.i_crit_edge, label %land.lhs.true.i.i

if.then16.i.if.end17thread-pre-split.i_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17thread-pre-split.i

land.lhs.true.i.i:                                ; preds = %if.then16.i
  %41 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vif.i, align 8
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %42, label %if.then.i.i [
    i32 10, label %land.lhs.true.i.i.if.end17.i_crit_edge
    i32 12, label %land.lhs.true.i.i.if.end17.i_crit_edge12
  ]

land.lhs.true.i.i.if.end17.i_crit_edge12:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

land.lhs.true.i.i.if.end17.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %debugfs_dir, align 8
  %call26.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 256, ptr noundef %45, ptr noundef %sdata, ptr noundef nonnull @aqm_ops) #8
  %46 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %debugfs_dir, align 8
  %call29.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 256, ptr noundef %47, ptr noundef %sdata, ptr noundef nonnull @airtime_ops) #8
  br label %if.end17thread-pre-split.i

if.end17thread-pre-split.i:                       ; preds = %if.then.i.i, %if.then16.i.if.end17thread-pre-split.i_crit_edge
  %48 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr.i = load i32, ptr %vif.i, align 8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end17thread-pre-split.i, %land.lhs.true.i.i.if.end17.i_crit_edge, %land.lhs.true.i.i.if.end17.i_crit_edge12
  %49 = phi i32 [ %.pr.i, %if.end17thread-pre-split.i ], [ %42, %land.lhs.true.i.i.if.end17.i_crit_edge ], [ %42, %land.lhs.true.i.i.if.end17.i_crit_edge12 ]
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %49, label %if.end17.i.add_files.exit_crit_edge [
    i32 7, label %sw.bb.i
    i32 2, label %sw.bb20.i
    i32 1, label %sw.bb21.i
    i32 3, label %sw.bb22.i
    i32 4, label %sw.bb23.i
  ]

if.end17.i.add_files.exit_crit_edge:              ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_files.exit

sw.bb.i:                                          ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %debugfs_dir, align 8
  %call.i45.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.29, i16 noundef zeroext 384, ptr noundef %52, ptr noundef %sdata, ptr noundef nonnull @tsf_ops) #8
  %53 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %debugfs_dir, align 8
  %call3.i46.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.30, i16 noundef zeroext 256, ptr noundef %54, ptr noundef %sdata, ptr noundef nonnull @estab_plinks_ops) #8
  %55 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %debugfs_dir, align 8
  %call.i48.i = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.47, ptr noundef %56) #8
  %call1.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.48, i16 noundef zeroext 256, ptr noundef %call.i48.i, ptr noundef %sdata, ptr noundef nonnull @fwded_mcast_ops) #8
  %call2.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.49, i16 noundef zeroext 256, ptr noundef %call.i48.i, ptr noundef %sdata, ptr noundef nonnull @fwded_unicast_ops) #8
  %call3.i49.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.50, i16 noundef zeroext 256, ptr noundef %call.i48.i, ptr noundef %sdata, ptr noundef nonnull @fwded_frames_ops) #8
  %call4.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.51, i16 noundef zeroext 256, ptr noundef %call.i48.i, ptr noundef %sdata, ptr noundef nonnull @dropped_frames_ttl_ops) #8
  %call5.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.52, i16 noundef zeroext 256, ptr noundef %call.i48.i, ptr noundef %sdata, ptr noundef nonnull @dropped_frames_no_route_ops) #8
  %call6.i50.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.53, i16 noundef zeroext 256, ptr noundef %call.i48.i, ptr noundef %sdata, ptr noundef nonnull @dropped_frames_congestion_ops) #8
  %57 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %debugfs_dir, align 8
  %call.i52.i = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.54, ptr noundef %58) #8
  %call1.i53.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.55, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @dot11MeshMaxRetries_ops) #8
  %call2.i54.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.56, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @dot11MeshRetryTimeout_ops) #8
  %call3.i55.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.57, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @dot11MeshConfirmTimeout_ops) #8
  %call4.i56.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.58, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @dot11MeshHoldingTimeout_ops) #8
  %call5.i57.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.59, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @dot11MeshTTL_ops) #8
  %call6.i58.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.60, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @element_ttl_ops) #8
  %call7.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.61, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @auto_open_plinks_ops) #8
  %call8.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.62, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @dot11MeshMaxPeerLinks_ops) #8
  %call9.i59.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.63, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @dot11MeshHWMPactivePathTimeout_ops) #8
  %call10.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.64, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @dot11MeshHWMPpreqMinInterval_ops) #8
  %call11.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.65, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @dot11MeshHWMPperrMinInterval_ops) #8
  %call12.i60.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.66, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @dot11MeshHWMPnetDiameterTraversalTime_ops) #8
  %call13.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.67, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @dot11MeshHWMPmaxPREQretries_ops) #8
  %call14.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.68, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @path_refresh_time_ops) #8
  %call15.i61.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.69, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @min_discovery_timeout_ops) #8
  %call16.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.70, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @dot11MeshHWMPRootMode_ops) #8
  %call17.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.71, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @dot11MeshHWMPRannInterval_ops) #8
  %call18.i62.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.72, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @dot11MeshForwarding_ops) #8
  %call19.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.73, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @dot11MeshGateAnnouncementProtocol_ops) #8
  %call20.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.74, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @rssi_threshold_ops) #8
  %call21.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.75, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @ht_opmode_ops) #8
  %call22.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.76, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @dot11MeshHWMPactivePathToRootTimeout_ops) #8
  %call23.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.77, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @dot11MeshHWMProotInterval_ops) #8
  %call24.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.78, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @dot11MeshHWMPconfirmationInterval_ops) #8
  %call25.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.79, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @power_mode_ops) #8
  %call26.i63.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.80, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @dot11MeshAwakeWindowDuration_ops) #8
  %call27.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.81, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @dot11MeshConnectedToMeshGate_ops) #8
  %call28.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.82, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @dot11MeshNolearn_ops) #8
  %call29.i64.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.83, i16 noundef zeroext 384, ptr noundef %call.i52.i, ptr noundef %sdata, ptr noundef nonnull @dot11MeshConnectedToAuthServer_ops) #8
  br label %add_files.exit

sw.bb20.i:                                        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %debugfs_dir, align 8
  %call.i66.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.84, i16 noundef zeroext 256, ptr noundef %60, ptr noundef %sdata, ptr noundef nonnull @bssid_ops) #8
  %61 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %debugfs_dir, align 8
  %call3.i67.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.85, i16 noundef zeroext 256, ptr noundef %62, ptr noundef %sdata, ptr noundef nonnull @aid_ops) #8
  %63 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %debugfs_dir, align 8
  %call6.i68.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.86, i16 noundef zeroext 256, ptr noundef %64, ptr noundef %sdata, ptr noundef nonnull @beacon_timeout_ops) #8
  %65 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %debugfs_dir, align 8
  %call9.i69.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.87, i16 noundef zeroext 384, ptr noundef %66, ptr noundef %sdata, ptr noundef nonnull @smps_ops) #8
  %67 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %debugfs_dir, align 8
  %call12.i70.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.88, i16 noundef zeroext 128, ptr noundef %68, ptr noundef %sdata, ptr noundef nonnull @tkip_mic_test_ops) #8
  %69 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %debugfs_dir, align 8
  %call15.i71.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.89, i16 noundef zeroext 128, ptr noundef %70, ptr noundef %sdata, ptr noundef nonnull @beacon_loss_ops) #8
  %71 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %debugfs_dir, align 8
  %call18.i72.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.90, i16 noundef zeroext 384, ptr noundef %72, ptr noundef %sdata, ptr noundef nonnull @uapsd_queues_ops) #8
  %73 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %debugfs_dir, align 8
  %call21.i73.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.91, i16 noundef zeroext 384, ptr noundef %74, ptr noundef %sdata, ptr noundef nonnull @uapsd_max_sp_len_ops) #8
  %75 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %debugfs_dir, align 8
  %call24.i74.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.92, i16 noundef zeroext 384, ptr noundef %76, ptr noundef %sdata, ptr noundef nonnull @tdls_wider_bw_ops) #8
  br label %add_files.exit

sw.bb21.i:                                        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %debugfs_dir, align 8
  %call.i76.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.29, i16 noundef zeroext 384, ptr noundef %78, ptr noundef %sdata, ptr noundef nonnull @tsf_ops) #8
  br label %add_files.exit

sw.bb22.i:                                        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %debugfs_dir, align 8
  %call.i78.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.102, i16 noundef zeroext 256, ptr noundef %80, ptr noundef %sdata, ptr noundef nonnull @num_mcast_sta_ops) #8
  %81 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %debugfs_dir, align 8
  %call3.i79.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.87, i16 noundef zeroext 384, ptr noundef %82, ptr noundef %sdata, ptr noundef nonnull @smps_ops) #8
  %83 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %debugfs_dir, align 8
  %call6.i80.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.103, i16 noundef zeroext 256, ptr noundef %84, ptr noundef %sdata, ptr noundef nonnull @num_sta_ps_ops) #8
  %85 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %debugfs_dir, align 8
  %call9.i81.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.104, i16 noundef zeroext 256, ptr noundef %86, ptr noundef %sdata, ptr noundef nonnull @dtim_count_ops) #8
  %87 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %debugfs_dir, align 8
  %call12.i82.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.105, i16 noundef zeroext 256, ptr noundef %88, ptr noundef %sdata, ptr noundef nonnull @num_buffered_multicast_ops) #8
  %89 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %debugfs_dir, align 8
  %call15.i83.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.88, i16 noundef zeroext 128, ptr noundef %90, ptr noundef %sdata, ptr noundef nonnull @tkip_mic_test_ops) #8
  %91 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %debugfs_dir, align 8
  %call18.i84.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.106, i16 noundef zeroext 384, ptr noundef %92, ptr noundef %sdata, ptr noundef nonnull @multicast_to_unicast_ops) #8
  br label %add_files.exit

sw.bb23.i:                                        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %debugfs_dir, align 8
  %call.i86.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.102, i16 noundef zeroext 256, ptr noundef %94, ptr noundef %sdata, ptr noundef nonnull @num_mcast_sta_vlan_ops) #8
  br label %add_files.exit

add_files.exit:                                   ; preds = %sw.bb23.i, %sw.bb22.i, %sw.bb21.i, %sw.bb20.i, %sw.bb.i, %if.end17.i.add_files.exit_crit_edge, %if.end.i.add_files.exit_crit_edge, %entry.add_files.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_debugfs_remove_netdev(ptr nocapture noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_dir = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 12
  %0 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_dir, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debugfs_remove(ptr noundef nonnull %1) #8
  %2 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %debugfs_dir, align 8
  %debugfs = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 58
  %3 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %debugfs, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_debugfs_rename_netdev(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [26 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %buf) #8
  %debugfs_dir = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 12
  %0 = call ptr @memset(ptr %buf, i32 255, i32 26)
  %1 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %debugfs_dir, align 8
  %tobool.not.i = icmp eq ptr %2, null
  %cmp.i = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str, ptr noundef %name)
  %d_parent = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_parent, align 8
  %call5 = call ptr @debugfs_rename(ptr noundef %4, ptr noundef nonnull %2, ptr noundef %4, ptr noundef nonnull %buf) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_flags(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %flags.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 8
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.7, i32 noundef %4) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_state(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %state.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.8, i32 noundef %4) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_txpower(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %txpower.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 59, i32 1, i32 42
  %3 = ptrtoint ptr %txpower.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %txpower.i, align 8
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %4) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_user_power_level(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %user_power_level.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 45
  %3 = ptrtoint ptr %user_power_level.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %user_power_level.i, align 4
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %4) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_ap_power_level(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %ap_power_level.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 46
  %3 = ptrtoint ptr %ap_power_level.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ap_power_level.i, align 8
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %4) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_rc_rateidx_mask_2ghz(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %rc_rateidx_mask.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %rc_rateidx_mask.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rc_rateidx_mask.i, align 8
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.7, i32 noundef %4) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_rc_rateidx_mask_5ghz(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %arrayidx.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 50, i32 1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.7, i32 noundef %4) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_rc_rateidx_mcs_mask_2ghz(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %add.ptr.i = getelementptr inbounds i8, ptr %buf.i, i32 200
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %rc_rateidx_mcs_mask.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 52
  %sub.ptr.rhs.cast.i = ptrtoint ptr %buf.i to i32
  %3 = ptrtoint ptr %rc_rateidx_mcs_mask.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rc_rateidx_mcs_mask.i, align 1
  %conv.i = zext i8 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.19, i32 noundef %conv.i) #8
  %add.ptr2.i = getelementptr i8, ptr %buf.i, i32 %call.i1
  %gepdiff = sub i32 200, %call.i1
  %arrayidx1.1.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 52, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx1.1.i, align 1
  %conv.1.i = zext i8 %6 to i32
  %call.1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.i, i32 noundef %gepdiff, ptr noundef nonnull @.str.19, i32 noundef %conv.1.i) #8
  %add.ptr2.1.i = getelementptr i8, ptr %add.ptr2.i, i32 %call.1.i
  %sub.ptr.rhs.cast.2.i = ptrtoint ptr %add.ptr2.1.i to i32
  %sub.ptr.sub.2.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.2.i
  %arrayidx1.2.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 52, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx1.2.i, align 1
  %conv.2.i = zext i8 %8 to i32
  %call.2.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.1.i, i32 noundef %sub.ptr.sub.2.i, ptr noundef nonnull @.str.19, i32 noundef %conv.2.i) #8
  %add.ptr2.2.i = getelementptr i8, ptr %add.ptr2.1.i, i32 %call.2.i
  %sub.ptr.rhs.cast.3.i = ptrtoint ptr %add.ptr2.2.i to i32
  %sub.ptr.sub.3.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.3.i
  %arrayidx1.3.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 52, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx1.3.i, align 1
  %conv.3.i = zext i8 %10 to i32
  %call.3.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.2.i, i32 noundef %sub.ptr.sub.3.i, ptr noundef nonnull @.str.19, i32 noundef %conv.3.i) #8
  %add.ptr2.3.i = getelementptr i8, ptr %add.ptr2.2.i, i32 %call.3.i
  %sub.ptr.rhs.cast.4.i = ptrtoint ptr %add.ptr2.3.i to i32
  %sub.ptr.sub.4.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.4.i
  %arrayidx1.4.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 52, i32 0, i32 4
  %11 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1.4.i, align 1
  %conv.4.i = zext i8 %12 to i32
  %call.4.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.3.i, i32 noundef %sub.ptr.sub.4.i, ptr noundef nonnull @.str.19, i32 noundef %conv.4.i) #8
  %add.ptr2.4.i = getelementptr i8, ptr %add.ptr2.3.i, i32 %call.4.i
  %sub.ptr.rhs.cast.5.i = ptrtoint ptr %add.ptr2.4.i to i32
  %sub.ptr.sub.5.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.5.i
  %arrayidx1.5.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 52, i32 0, i32 5
  %13 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx1.5.i, align 1
  %conv.5.i = zext i8 %14 to i32
  %call.5.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.4.i, i32 noundef %sub.ptr.sub.5.i, ptr noundef nonnull @.str.19, i32 noundef %conv.5.i) #8
  %add.ptr2.5.i = getelementptr i8, ptr %add.ptr2.4.i, i32 %call.5.i
  %sub.ptr.rhs.cast.6.i = ptrtoint ptr %add.ptr2.5.i to i32
  %sub.ptr.sub.6.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.6.i
  %arrayidx1.6.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 52, i32 0, i32 6
  %15 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx1.6.i, align 1
  %conv.6.i = zext i8 %16 to i32
  %call.6.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.5.i, i32 noundef %sub.ptr.sub.6.i, ptr noundef nonnull @.str.19, i32 noundef %conv.6.i) #8
  %add.ptr2.6.i = getelementptr i8, ptr %add.ptr2.5.i, i32 %call.6.i
  %sub.ptr.rhs.cast.7.i = ptrtoint ptr %add.ptr2.6.i to i32
  %sub.ptr.sub.7.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.7.i
  %arrayidx1.7.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 52, i32 0, i32 7
  %17 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx1.7.i, align 1
  %conv.7.i = zext i8 %18 to i32
  %call.7.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.6.i, i32 noundef %sub.ptr.sub.7.i, ptr noundef nonnull @.str.19, i32 noundef %conv.7.i) #8
  %add.ptr2.7.i = getelementptr i8, ptr %add.ptr2.6.i, i32 %call.7.i
  %sub.ptr.rhs.cast.8.i = ptrtoint ptr %add.ptr2.7.i to i32
  %sub.ptr.sub.8.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.8.i
  %arrayidx1.8.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 52, i32 0, i32 8
  %19 = ptrtoint ptr %arrayidx1.8.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx1.8.i, align 1
  %conv.8.i = zext i8 %20 to i32
  %call.8.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.7.i, i32 noundef %sub.ptr.sub.8.i, ptr noundef nonnull @.str.19, i32 noundef %conv.8.i) #8
  %add.ptr2.8.i = getelementptr i8, ptr %add.ptr2.7.i, i32 %call.8.i
  %sub.ptr.rhs.cast.9.i = ptrtoint ptr %add.ptr2.8.i to i32
  %sub.ptr.sub.9.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.9.i
  %arrayidx1.9.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 52, i32 0, i32 9
  %21 = ptrtoint ptr %arrayidx1.9.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx1.9.i, align 1
  %conv.9.i = zext i8 %22 to i32
  %call.9.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.8.i, i32 noundef %sub.ptr.sub.9.i, ptr noundef nonnull @.str.19, i32 noundef %conv.9.i) #8
  %add.ptr2.9.i = getelementptr i8, ptr %add.ptr2.8.i, i32 %call.9.i
  %sub.ptr.rhs.cast5.i = ptrtoint ptr %add.ptr2.9.i to i32
  %sub.ptr.sub6.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast5.i
  %call7.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.9.i, i32 noundef %sub.ptr.sub6.i, ptr noundef nonnull @.str.20) #8
  %add.ptr8.i = getelementptr i8, ptr %add.ptr2.9.i, i32 %call7.i
  %sub.ptr.lhs.cast9.i = ptrtoint ptr %add.ptr8.i to i32
  %sub.ptr.sub11.i = sub i32 %sub.ptr.lhs.cast9.i, %sub.ptr.rhs.cast.i
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.ptr.sub11.i)
  %cmp.i = icmp sgt i32 %sub.ptr.sub11.i, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %sub.ptr.sub11.i) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %sub.ptr.sub11.i, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_rc_rateidx_mcs_mask_5ghz(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %add.ptr.i = getelementptr inbounds i8, ptr %buf.i, i32 200
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %buf.i to i32
  %arrayidx1.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 52, i32 1, i32 0
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1.i, align 1
  %conv.i = zext i8 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.19, i32 noundef %conv.i) #8
  %add.ptr2.i = getelementptr i8, ptr %buf.i, i32 %call.i1
  %gepdiff = sub i32 200, %call.i1
  %arrayidx1.1.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 52, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx1.1.i, align 1
  %conv.1.i = zext i8 %6 to i32
  %call.1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.i, i32 noundef %gepdiff, ptr noundef nonnull @.str.19, i32 noundef %conv.1.i) #8
  %add.ptr2.1.i = getelementptr i8, ptr %add.ptr2.i, i32 %call.1.i
  %sub.ptr.rhs.cast.2.i = ptrtoint ptr %add.ptr2.1.i to i32
  %sub.ptr.sub.2.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.2.i
  %arrayidx1.2.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 52, i32 1, i32 2
  %7 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx1.2.i, align 1
  %conv.2.i = zext i8 %8 to i32
  %call.2.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.1.i, i32 noundef %sub.ptr.sub.2.i, ptr noundef nonnull @.str.19, i32 noundef %conv.2.i) #8
  %add.ptr2.2.i = getelementptr i8, ptr %add.ptr2.1.i, i32 %call.2.i
  %sub.ptr.rhs.cast.3.i = ptrtoint ptr %add.ptr2.2.i to i32
  %sub.ptr.sub.3.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.3.i
  %arrayidx1.3.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 52, i32 1, i32 3
  %9 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx1.3.i, align 1
  %conv.3.i = zext i8 %10 to i32
  %call.3.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.2.i, i32 noundef %sub.ptr.sub.3.i, ptr noundef nonnull @.str.19, i32 noundef %conv.3.i) #8
  %add.ptr2.3.i = getelementptr i8, ptr %add.ptr2.2.i, i32 %call.3.i
  %sub.ptr.rhs.cast.4.i = ptrtoint ptr %add.ptr2.3.i to i32
  %sub.ptr.sub.4.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.4.i
  %arrayidx1.4.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 52, i32 1, i32 4
  %11 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1.4.i, align 1
  %conv.4.i = zext i8 %12 to i32
  %call.4.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.3.i, i32 noundef %sub.ptr.sub.4.i, ptr noundef nonnull @.str.19, i32 noundef %conv.4.i) #8
  %add.ptr2.4.i = getelementptr i8, ptr %add.ptr2.3.i, i32 %call.4.i
  %sub.ptr.rhs.cast.5.i = ptrtoint ptr %add.ptr2.4.i to i32
  %sub.ptr.sub.5.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.5.i
  %arrayidx1.5.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 52, i32 1, i32 5
  %13 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx1.5.i, align 1
  %conv.5.i = zext i8 %14 to i32
  %call.5.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.4.i, i32 noundef %sub.ptr.sub.5.i, ptr noundef nonnull @.str.19, i32 noundef %conv.5.i) #8
  %add.ptr2.5.i = getelementptr i8, ptr %add.ptr2.4.i, i32 %call.5.i
  %sub.ptr.rhs.cast.6.i = ptrtoint ptr %add.ptr2.5.i to i32
  %sub.ptr.sub.6.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.6.i
  %arrayidx1.6.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 52, i32 1, i32 6
  %15 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx1.6.i, align 1
  %conv.6.i = zext i8 %16 to i32
  %call.6.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.5.i, i32 noundef %sub.ptr.sub.6.i, ptr noundef nonnull @.str.19, i32 noundef %conv.6.i) #8
  %add.ptr2.6.i = getelementptr i8, ptr %add.ptr2.5.i, i32 %call.6.i
  %sub.ptr.rhs.cast.7.i = ptrtoint ptr %add.ptr2.6.i to i32
  %sub.ptr.sub.7.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.7.i
  %arrayidx1.7.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 52, i32 1, i32 7
  %17 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx1.7.i, align 1
  %conv.7.i = zext i8 %18 to i32
  %call.7.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.6.i, i32 noundef %sub.ptr.sub.7.i, ptr noundef nonnull @.str.19, i32 noundef %conv.7.i) #8
  %add.ptr2.7.i = getelementptr i8, ptr %add.ptr2.6.i, i32 %call.7.i
  %sub.ptr.rhs.cast.8.i = ptrtoint ptr %add.ptr2.7.i to i32
  %sub.ptr.sub.8.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.8.i
  %arrayidx1.8.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 52, i32 1, i32 8
  %19 = ptrtoint ptr %arrayidx1.8.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx1.8.i, align 1
  %conv.8.i = zext i8 %20 to i32
  %call.8.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.7.i, i32 noundef %sub.ptr.sub.8.i, ptr noundef nonnull @.str.19, i32 noundef %conv.8.i) #8
  %add.ptr2.8.i = getelementptr i8, ptr %add.ptr2.7.i, i32 %call.8.i
  %sub.ptr.rhs.cast.9.i = ptrtoint ptr %add.ptr2.8.i to i32
  %sub.ptr.sub.9.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.9.i
  %arrayidx1.9.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 52, i32 1, i32 9
  %21 = ptrtoint ptr %arrayidx1.9.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx1.9.i, align 1
  %conv.9.i = zext i8 %22 to i32
  %call.9.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.8.i, i32 noundef %sub.ptr.sub.9.i, ptr noundef nonnull @.str.19, i32 noundef %conv.9.i) #8
  %add.ptr2.9.i = getelementptr i8, ptr %add.ptr2.8.i, i32 %call.9.i
  %sub.ptr.rhs.cast5.i = ptrtoint ptr %add.ptr2.9.i to i32
  %sub.ptr.sub6.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast5.i
  %call7.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.9.i, i32 noundef %sub.ptr.sub6.i, ptr noundef nonnull @.str.20) #8
  %add.ptr8.i = getelementptr i8, ptr %add.ptr2.9.i, i32 %call7.i
  %sub.ptr.lhs.cast9.i = ptrtoint ptr %add.ptr8.i to i32
  %sub.ptr.sub11.i = sub i32 %sub.ptr.lhs.cast9.i, %sub.ptr.rhs.cast.i
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.ptr.sub11.i)
  %cmp.i = icmp sgt i32 %sub.ptr.sub11.i, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %sub.ptr.sub11.i) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %sub.ptr.sub11.i, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_rc_rateidx_vht_mcs_mask_2ghz(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %rc_rateidx_vht_mcs_mask.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 54
  %3 = ptrtoint ptr %rc_rateidx_vht_mcs_mask.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %rc_rateidx_vht_mcs_mask.i, align 2
  %conv.i = zext i16 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.21, i32 noundef %conv.i) #8
  %add.ptr.1.i = getelementptr i8, ptr %buf.i, i32 %call.i1
  %sub.1.i = sub i32 200, %call.i1
  %arrayidx1.1.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 54, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx1.1.i, align 2
  %conv.1.i = zext i16 %6 to i32
  %call.1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1.i, i32 noundef %sub.1.i, ptr noundef nonnull @.str.21, i32 noundef %conv.1.i) #8
  %add.1.i = add i32 %call.1.i, %call.i1
  %add.ptr.2.i = getelementptr i8, ptr %buf.i, i32 %add.1.i
  %sub.2.i = sub i32 200, %add.1.i
  %arrayidx1.2.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 54, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx1.2.i, align 2
  %conv.2.i = zext i16 %8 to i32
  %call.2.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2.i, i32 noundef %sub.2.i, ptr noundef nonnull @.str.21, i32 noundef %conv.2.i) #8
  %add.2.i = add i32 %call.2.i, %add.1.i
  %add.ptr.3.i = getelementptr i8, ptr %buf.i, i32 %add.2.i
  %sub.3.i = sub i32 200, %add.2.i
  %arrayidx1.3.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 54, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx1.3.i, align 2
  %conv.3.i = zext i16 %10 to i32
  %call.3.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.3.i, i32 noundef %sub.3.i, ptr noundef nonnull @.str.21, i32 noundef %conv.3.i) #8
  %add.3.i = add i32 %call.3.i, %add.2.i
  %add.ptr.4.i = getelementptr i8, ptr %buf.i, i32 %add.3.i
  %sub.4.i = sub i32 200, %add.3.i
  %arrayidx1.4.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 54, i32 0, i32 4
  %11 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx1.4.i, align 2
  %conv.4.i = zext i16 %12 to i32
  %call.4.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.4.i, i32 noundef %sub.4.i, ptr noundef nonnull @.str.21, i32 noundef %conv.4.i) #8
  %add.4.i = add i32 %call.4.i, %add.3.i
  %add.ptr.5.i = getelementptr i8, ptr %buf.i, i32 %add.4.i
  %sub.5.i = sub i32 200, %add.4.i
  %arrayidx1.5.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 54, i32 0, i32 5
  %13 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx1.5.i, align 2
  %conv.5.i = zext i16 %14 to i32
  %call.5.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.5.i, i32 noundef %sub.5.i, ptr noundef nonnull @.str.21, i32 noundef %conv.5.i) #8
  %add.5.i = add i32 %call.5.i, %add.4.i
  %add.ptr.6.i = getelementptr i8, ptr %buf.i, i32 %add.5.i
  %sub.6.i = sub i32 200, %add.5.i
  %arrayidx1.6.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 54, i32 0, i32 6
  %15 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx1.6.i, align 2
  %conv.6.i = zext i16 %16 to i32
  %call.6.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.6.i, i32 noundef %sub.6.i, ptr noundef nonnull @.str.21, i32 noundef %conv.6.i) #8
  %add.6.i = add i32 %call.6.i, %add.5.i
  %add.ptr.7.i = getelementptr i8, ptr %buf.i, i32 %add.6.i
  %sub.7.i = sub i32 200, %add.6.i
  %arrayidx1.7.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 54, i32 0, i32 7
  %17 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx1.7.i, align 2
  %conv.7.i = zext i16 %18 to i32
  %call.7.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.7.i, i32 noundef %sub.7.i, ptr noundef nonnull @.str.21, i32 noundef %conv.7.i) #8
  %add.7.i = add i32 %call.7.i, %add.6.i
  %add.ptr2.i = getelementptr i8, ptr %buf.i, i32 %add.7.i
  %sub3.i = sub i32 200, %add.7.i
  %call4.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.i, i32 noundef %sub3.i, ptr noundef nonnull @.str.20) #8
  %add5.i = add i32 %call4.i, %add.7.i
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add5.i)
  %cmp.i = icmp sgt i32 %add5.i, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %add5.i) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %add5.i, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_rc_rateidx_vht_mcs_mask_5ghz(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %arrayidx.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 54, i32 1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.21, i32 noundef %conv.i) #8
  %add.ptr.1.i = getelementptr i8, ptr %buf.i, i32 %call.i1
  %sub.1.i = sub i32 200, %call.i1
  %arrayidx1.1.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 54, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx1.1.i, align 2
  %conv.1.i = zext i16 %6 to i32
  %call.1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1.i, i32 noundef %sub.1.i, ptr noundef nonnull @.str.21, i32 noundef %conv.1.i) #8
  %add.1.i = add i32 %call.1.i, %call.i1
  %add.ptr.2.i = getelementptr i8, ptr %buf.i, i32 %add.1.i
  %sub.2.i = sub i32 200, %add.1.i
  %arrayidx1.2.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 54, i32 1, i32 2
  %7 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx1.2.i, align 2
  %conv.2.i = zext i16 %8 to i32
  %call.2.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2.i, i32 noundef %sub.2.i, ptr noundef nonnull @.str.21, i32 noundef %conv.2.i) #8
  %add.2.i = add i32 %call.2.i, %add.1.i
  %add.ptr.3.i = getelementptr i8, ptr %buf.i, i32 %add.2.i
  %sub.3.i = sub i32 200, %add.2.i
  %arrayidx1.3.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 54, i32 1, i32 3
  %9 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx1.3.i, align 2
  %conv.3.i = zext i16 %10 to i32
  %call.3.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.3.i, i32 noundef %sub.3.i, ptr noundef nonnull @.str.21, i32 noundef %conv.3.i) #8
  %add.3.i = add i32 %call.3.i, %add.2.i
  %add.ptr.4.i = getelementptr i8, ptr %buf.i, i32 %add.3.i
  %sub.4.i = sub i32 200, %add.3.i
  %arrayidx1.4.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 54, i32 1, i32 4
  %11 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx1.4.i, align 2
  %conv.4.i = zext i16 %12 to i32
  %call.4.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.4.i, i32 noundef %sub.4.i, ptr noundef nonnull @.str.21, i32 noundef %conv.4.i) #8
  %add.4.i = add i32 %call.4.i, %add.3.i
  %add.ptr.5.i = getelementptr i8, ptr %buf.i, i32 %add.4.i
  %sub.5.i = sub i32 200, %add.4.i
  %arrayidx1.5.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 54, i32 1, i32 5
  %13 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx1.5.i, align 2
  %conv.5.i = zext i16 %14 to i32
  %call.5.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.5.i, i32 noundef %sub.5.i, ptr noundef nonnull @.str.21, i32 noundef %conv.5.i) #8
  %add.5.i = add i32 %call.5.i, %add.4.i
  %add.ptr.6.i = getelementptr i8, ptr %buf.i, i32 %add.5.i
  %sub.6.i = sub i32 200, %add.5.i
  %arrayidx1.6.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 54, i32 1, i32 6
  %15 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx1.6.i, align 2
  %conv.6.i = zext i16 %16 to i32
  %call.6.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.6.i, i32 noundef %sub.6.i, ptr noundef nonnull @.str.21, i32 noundef %conv.6.i) #8
  %add.6.i = add i32 %call.6.i, %add.5.i
  %add.ptr.7.i = getelementptr i8, ptr %buf.i, i32 %add.6.i
  %sub.7.i = sub i32 200, %add.6.i
  %arrayidx1.7.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 54, i32 1, i32 7
  %17 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx1.7.i, align 2
  %conv.7.i = zext i16 %18 to i32
  %call.7.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.7.i, i32 noundef %sub.7.i, ptr noundef nonnull @.str.21, i32 noundef %conv.7.i) #8
  %add.7.i = add i32 %call.7.i, %add.6.i
  %add.ptr2.i = getelementptr i8, ptr %buf.i, i32 %add.7.i
  %sub3.i = sub i32 200, %add.7.i
  %call4.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.i, i32 noundef %sub3.i, ptr noundef nonnull @.str.20) #8
  %add5.i = add i32 %call4.i, %add.7.i
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add5.i)
  %cmp.i = icmp sgt i32 %add5.i, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %add5.i) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %add5.i, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_hw_queues(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 59
  %hw_queue.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 59, i32 7
  %3 = ptrtoint ptr %hw_queue.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hw_queue.i, align 2
  %conv.i = zext i8 %4 to i32
  %arrayidx3.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 59, i32 7, i32 1
  %5 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %6 to i32
  %arrayidx7.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 59, i32 7, i32 2
  %7 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx7.i, align 2
  %conv8.i = zext i8 %8 to i32
  %arrayidx11.i = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 59, i32 7, i32 3
  %9 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %10 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.22, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef %conv8.i, i32 noundef %conv12.i) #8
  %11 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vif.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp.i2 = icmp eq i32 %12, 3
  br i1 %cmp.i2, label %if.then.i3, label %entry.ieee80211_if_fmt_hw_queues.exit_crit_edge

entry.ieee80211_if_fmt_hw_queues.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_fmt_hw_queues.exit

if.then.i3:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %buf.i, i32 %call.i1
  %sub.i = sub i32 200, %call.i1
  %cab_queue.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 59, i32 6
  %13 = ptrtoint ptr %cab_queue.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cab_queue.i, align 1
  %conv16.i = zext i8 %14 to i32
  %call17.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.23, i32 noundef %conv16.i) #8
  %add.i = add i32 %call17.i, %call.i1
  br label %ieee80211_if_fmt_hw_queues.exit

ieee80211_if_fmt_hw_queues.exit:                  ; preds = %if.then.i3, %entry.ieee80211_if_fmt_hw_queues.exit_crit_edge
  %len.0.i = phi i32 [ %add.i, %if.then.i3 ], [ %call.i1, %entry.ieee80211_if_fmt_hw_queues.exit_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %len.0.i)
  %cmp.i = icmp sgt i32 %len.0.i, -1
  br i1 %cmp.i, label %if.then.i, label %ieee80211_if_fmt_hw_queues.exit.ieee80211_if_read.exit_crit_edge

ieee80211_if_fmt_hw_queues.exit.ieee80211_if_read.exit_crit_edge: ; preds = %ieee80211_if_fmt_hw_queues.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %ieee80211_if_fmt_hw_queues.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %len.0.i) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %ieee80211_if_fmt_hw_queues.exit.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %len.0.i, %ieee80211_if_fmt_hw_queues.exit.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_aqm(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %txq.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 59, i32 8
  %3 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %txq.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %ieee80211_if_fmt_aqm.exit.thread, label %if.end.i

ieee80211_if_fmt_aqm.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  br label %if.then.i

if.end.i:                                         ; preds = %entry
  %local1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %local1.i, align 4
  %lock.i = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 1, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #8
  %7 = tail call i32 @llvm.read_register.i32(metadata !340) #8
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !350
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 696, ptr noundef nonnull @.str.26) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %ac.i = getelementptr i8, ptr %4, i32 9
  %11 = ptrtoint ptr %ac.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ac.i, align 1
  %conv.i = zext i8 %12 to i32
  %backlog_bytes.i = getelementptr i8, ptr %4, i32 -144
  %13 = ptrtoint ptr %backlog_bytes.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %backlog_bytes.i, align 4
  %backlog_packets.i = getelementptr i8, ptr %4, i32 -140
  %15 = ptrtoint ptr %backlog_packets.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %backlog_packets.i, align 4
  %flows.i = getelementptr i8, ptr %4, i32 -128
  %17 = ptrtoint ptr %flows.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flows.i, align 4
  %drop_count.i = getelementptr i8, ptr %4, i32 -88
  %19 = ptrtoint ptr %drop_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %drop_count.i, align 4
  %ecn_mark.i = getelementptr i8, ptr %4, i32 -80
  %21 = ptrtoint ptr %ecn_mark.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ecn_mark.i, align 4
  %overlimit.i = getelementptr i8, ptr %4, i32 -136
  %23 = ptrtoint ptr %overlimit.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %overlimit.i, align 4
  %collisions.i = getelementptr i8, ptr %4, i32 -132
  %25 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %collisions.i, align 4
  %tx_bytes.i = getelementptr i8, ptr %4, i32 -124
  %27 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_bytes.i, align 4
  %tx_packets.i = getelementptr i8, ptr %4, i32 -120
  %29 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_packets.i, align 4
  %call12.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.24, i32 noundef %conv.i, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30) #8
  %call.i29.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i29.i, label %rcu_read_lock.exit.i.ieee80211_if_fmt_aqm.exit_crit_edge, label %land.lhs.true.i32.i

rcu_read_lock.exit.i.ieee80211_if_fmt_aqm.exit_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_fmt_aqm.exit

land.lhs.true.i32.i:                              ; preds = %rcu_read_lock.exit.i
  %call1.i30.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30.i)
  %tobool.not.i31.i = icmp eq i32 %call1.i30.i, 0
  br i1 %tobool.not.i31.i, label %land.lhs.true.i32.i.ieee80211_if_fmt_aqm.exit_crit_edge, label %land.lhs.true2.i34.i

land.lhs.true.i32.i.ieee80211_if_fmt_aqm.exit_crit_edge: ; preds = %land.lhs.true.i32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_fmt_aqm.exit

land.lhs.true2.i34.i:                             ; preds = %land.lhs.true.i32.i
  %.b4.i33.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33.i, label %land.lhs.true2.i34.i.ieee80211_if_fmt_aqm.exit_crit_edge, label %if.then.i35.i

land.lhs.true2.i34.i.ieee80211_if_fmt_aqm.exit_crit_edge: ; preds = %land.lhs.true2.i34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_fmt_aqm.exit

if.then.i35.i:                                    ; preds = %land.lhs.true2.i34.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 724, ptr noundef nonnull @.str.27) #8
  br label %ieee80211_if_fmt_aqm.exit

ieee80211_if_fmt_aqm.exit:                        ; preds = %if.then.i35.i, %land.lhs.true2.i34.i.ieee80211_if_fmt_aqm.exit_crit_edge, %land.lhs.true.i32.i.ieee80211_if_fmt_aqm.exit_crit_edge, %rcu_read_lock.exit.i.ieee80211_if_fmt_aqm.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !351
  %31 = call i32 @llvm.read_register.i32(metadata !340) #8
  %and.i.i.i.i.i36.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i36.i to ptr
  %preempt_count.i.i.i.i37.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i37.i, align 4
  %sub.i.i.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i37.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call12.i)
  %cmp.i = icmp sgt i32 %call12.i, -1
  br i1 %cmp.i, label %ieee80211_if_fmt_aqm.exit.if.then.i_crit_edge, label %ieee80211_if_fmt_aqm.exit.ieee80211_if_read.exit_crit_edge

ieee80211_if_fmt_aqm.exit.ieee80211_if_read.exit_crit_edge: ; preds = %ieee80211_if_fmt_aqm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

ieee80211_if_fmt_aqm.exit.if.then.i_crit_edge:    ; preds = %ieee80211_if_fmt_aqm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %ieee80211_if_fmt_aqm.exit.if.then.i_crit_edge, %ieee80211_if_fmt_aqm.exit.thread
  %retval.0.i3 = phi i32 [ 0, %ieee80211_if_fmt_aqm.exit.thread ], [ %call12.i, %ieee80211_if_fmt_aqm.exit.if.then.i_crit_edge ]
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %retval.0.i3) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %ieee80211_if_fmt_aqm.exit.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call12.i, %ieee80211_if_fmt_aqm.exit.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_airtime(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %txq2.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 59, i32 8
  %3 = ptrtoint ptr %txq2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %txq2.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %ieee80211_if_fmt_airtime.exit.thread, label %if.end.i

ieee80211_if_fmt_airtime.exit.thread:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  br label %if.then.i

if.end.i:                                         ; preds = %entry
  %local1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %local1.i, align 4
  %ac.i = getelementptr inbounds %struct.ieee80211_txq, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %ac.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ac.i, align 1
  %idxprom.i = zext i8 %8 to i32
  %arrayidx.i = getelementptr %struct.ieee80211_local, ptr %6, i32 0, i32 4, i32 %idxprom.i
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx.i) #8
  %sta1.i.i = getelementptr inbounds %struct.ieee80211_txq, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %sta1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sta1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %airtime.i.i = getelementptr i8, ptr %10, i32 -1096
  %11 = ptrtoint ptr %ac.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ac.i, align 1
  %idxprom.i.i = zext i8 %12 to i32
  %arrayidx.i.i = getelementptr [4 x %struct.airtime_info], ptr %airtime.i.i, i32 0, i32 %idxprom.i.i
  br label %ieee80211_if_fmt_airtime.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 -4080
  %15 = ptrtoint ptr %ac.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ac.i, align 1
  %idxprom5.i.i = zext i8 %16 to i32
  %arrayidx6.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %add.ptr.i.i.i, i32 0, i32 28, i32 %idxprom5.i.i
  br label %ieee80211_if_fmt_airtime.exit

ieee80211_if_fmt_airtime.exit:                    ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %arrayidx.i.i, %if.then.i.i ], [ %arrayidx6.i.i, %if.end.i.i ]
  %17 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %retval.0.i.i, align 8
  %tx_airtime.i = getelementptr inbounds %struct.airtime_info, ptr %retval.0.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %tx_airtime.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %tx_airtime.i, align 8
  %weight.i = getelementptr inbounds %struct.airtime_info, ptr %retval.0.i.i, i32 0, i32 9
  %21 = ptrtoint ptr %weight.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %weight.i, align 8
  %conv.i = zext i16 %22 to i32
  %v_t.i = getelementptr inbounds %struct.airtime_info, ptr %retval.0.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %v_t.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %v_t.i, align 8
  %call3.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.28, i64 noundef %18, i64 noundef %20, i32 noundef %conv.i, i64 noundef %24) #8
  %25 = ptrtoint ptr %ac.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ac.i, align 1
  %idxprom6.i = zext i8 %26 to i32
  %arrayidx7.i = getelementptr %struct.ieee80211_local, ptr %6, i32 0, i32 4, i32 %idxprom6.i
  call void @_raw_spin_unlock_bh(ptr noundef %arrayidx7.i) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %cmp.i = icmp sgt i32 %call3.i, -1
  br i1 %cmp.i, label %ieee80211_if_fmt_airtime.exit.if.then.i_crit_edge, label %ieee80211_if_fmt_airtime.exit.ieee80211_if_read.exit_crit_edge

ieee80211_if_fmt_airtime.exit.ieee80211_if_read.exit_crit_edge: ; preds = %ieee80211_if_fmt_airtime.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

ieee80211_if_fmt_airtime.exit.if.then.i_crit_edge: ; preds = %ieee80211_if_fmt_airtime.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %ieee80211_if_fmt_airtime.exit.if.then.i_crit_edge, %ieee80211_if_fmt_airtime.exit.thread
  %retval.0.i3 = phi i32 [ 0, %ieee80211_if_fmt_airtime.exit.thread ], [ %call3.i, %ieee80211_if_fmt_airtime.exit.if.then.i_crit_edge ]
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %retval.0.i3) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %ieee80211_if_fmt_airtime.exit.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call3.i, %ieee80211_if_fmt_airtime.exit.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_tsf(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %local1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %local1.i, align 4
  %call.i1 = tail call i64 @drv_get_tsf(ptr noundef %4, ptr noundef %1) #8
  %call2.i2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.31, i64 noundef %call.i1) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i2)
  %cmp.i = icmp sgt i32 %call2.i2, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call2.i2) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call2.i2, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_write_tsf(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @ieee80211_if_write(ptr noundef %1, ptr noundef %userbuf, i32 noundef %count, ptr noundef nonnull @ieee80211_if_parse_tsf)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drv_get_tsf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_if_write(ptr noundef %sdata, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readonly %write) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #8
  %0 = call ptr @memset(ptr %buf, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %count)
  %cmp = icmp ugt i32 %count, 63
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.then.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %entry
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %count, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %1 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %userbuf, i32 %count, i32 -1226833920) #11, !srcloc !352
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !353

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %count) #8
  %2 = call i32 @llvm.read_register.i32(metadata !340) #8
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !354
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !355
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !356
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %userbuf, i32 noundef %count) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #8, !srcloc !355
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !356
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.then11.i.i, !prof !353

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end2:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [64 x i8], ptr %buf, i32 0, i32 %count
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  call void @rtnl_lock() #8
  %call4 = call i32 %write(ptr noundef %sdata, ptr noundef nonnull %buf, i32 noundef %count) #8
  call void @rtnl_unlock() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end2 ], [ -7, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_parse_tsf(ptr noundef %sdata, ptr noundef %buf, i32 noundef %buflen) #0 align 64 {
entry:
  %tsf = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tsf) #8
  %2 = ptrtoint ptr %tsf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %tsf, align 8, !annotation !357
  %call = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(6) @.str.35, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %reset_tsf = getelementptr inbounds %struct.ieee80211_ops, ptr %4, i32 0, i32 45
  %5 = ptrtoint ptr %reset_tsf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset_tsf, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then.if.end59_crit_edge, label %if.then2

if.then.if.end59_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drv_reset_tsf(ptr noundef %1, ptr noundef %sdata) #8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.36) #12
  br label %if.end59

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %buflen)
  %cmp3 = icmp sgt i32 %buflen, 10
  br i1 %cmp3, label %land.lhs.true, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

land.lhs.true:                                    ; preds = %if.else
  %arrayidx = getelementptr i8, ptr %buf, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %10)
  %cmp4 = icmp eq i8 %10, 61
  br i1 %cmp4, label %if.then6, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then6:                                         ; preds = %land.lhs.true
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.109)
  switch i8 %12, label %if.then6.cleanup_crit_edge [
    i8 43, label %if.then6.if.end20_crit_edge
    i8 45, label %if.then17
  ]

if.then6.if.end20_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then6.if.end20_crit_edge
  %tsf_is_delta.0 = phi i32 [ -1, %if.then17 ], [ 1, %if.then6.if.end20_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 2
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %land.lhs.true.if.end21_crit_edge, %if.else.if.end21_crit_edge
  %buf.addr.0 = phi ptr [ %add.ptr, %if.end20 ], [ %buf, %land.lhs.true.if.end21_crit_edge ], [ %buf, %if.else.if.end21_crit_edge ]
  %tsf_is_delta.1 = phi i32 [ %tsf_is_delta.0, %if.end20 ], [ 0, %land.lhs.true.if.end21_crit_edge ], [ 0, %if.else.if.end21_crit_edge ]
  %call22 = call i32 @kstrtoull(ptr noundef %buf.addr.0, i32 noundef 10, ptr noundef nonnull %tsf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end21.cleanup_crit_edge, label %if.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tsf_is_delta.1)
  %tobool27.not = icmp eq i32 %tsf_is_delta.1, 0
  %ops42 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %ops42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops42, align 4
  br i1 %tobool27.not, label %if.else41, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %if.end26
  %offset_tsf = getelementptr inbounds %struct.ieee80211_ops, ptr %15, i32 0, i32 44
  %16 = ptrtoint ptr %offset_tsf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %offset_tsf, align 4
  %tobool30.not = icmp eq ptr %17, null
  br i1 %tobool30.not, label %if.else41.thread, label %if.then31

if.then31:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  %conv32 = sext i32 %tsf_is_delta.1 to i64
  %18 = ptrtoint ptr %tsf to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tsf, align 8
  %mul = mul i64 %19, %conv32
  call void @drv_offset_tsf(ptr noundef %1, ptr noundef %sdata, i64 noundef %mul) #8
  %wiphy37 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %wiphy37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wiphy37, align 8
  %dev38 = getelementptr inbounds %struct.wiphy, ptr %21, i32 0, i32 56
  %22 = ptrtoint ptr %tsf to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %tsf, align 8
  %mul40 = mul i64 %23, %conv32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev38, ptr noundef nonnull @.str.42, i64 noundef %mul40) #12
  br label %if.end59

if.else41:                                        ; preds = %if.end26
  %set_tsf = getelementptr inbounds %struct.ieee80211_ops, ptr %15, i32 0, i32 43
  %24 = ptrtoint ptr %set_tsf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_tsf, align 4
  %tobool43.not = icmp eq ptr %25, null
  br i1 %tobool43.not, label %if.else41.if.end59_crit_edge, label %if.else41.if.end50_crit_edge

if.else41.if.end50_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.else41.if.end59_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.else41.thread:                                 ; preds = %land.lhs.true28
  %26 = ptrtoint ptr %ops42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops42, align 4
  %set_tsf90 = getelementptr inbounds %struct.ieee80211_ops, ptr %27, i32 0, i32 43
  %28 = ptrtoint ptr %set_tsf90 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_tsf90, align 4
  %tobool43.not91 = icmp eq ptr %29, null
  br i1 %tobool43.not91, label %if.else41.thread.if.end59_crit_edge, label %if.then46

if.else41.thread.if.end59_crit_edge:              ; preds = %if.else41.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then46:                                        ; preds = %if.else41.thread
  call void @__sanitizer_cov_trace_pc() #10
  %call47 = call i64 @drv_get_tsf(ptr noundef %1, ptr noundef %sdata) #8
  %conv48 = sext i32 %tsf_is_delta.1 to i64
  %30 = ptrtoint ptr %tsf to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %tsf, align 8
  %mul49 = mul i64 %31, %conv48
  %add = add i64 %mul49, %call47
  store i64 %add, ptr %tsf, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %if.else41.if.end50_crit_edge
  %32 = ptrtoint ptr %tsf to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %tsf, align 8
  call void @drv_set_tsf(ptr noundef %1, ptr noundef %sdata, i64 noundef %33) #8
  %wiphy55 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %wiphy55 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wiphy55, align 8
  %dev56 = getelementptr inbounds %struct.wiphy, ptr %35, i32 0, i32 56
  %36 = ptrtoint ptr %tsf to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %tsf, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev56, ptr noundef nonnull @.str.45, i64 noundef %37) #12
  br label %if.end59

if.end59:                                         ; preds = %if.end50, %if.else41.thread.if.end59_crit_edge, %if.else41.if.end59_crit_edge, %if.then31, %if.then2, %if.then.if.end59_crit_edge
  call void @ieee80211_recalc_dtim(ptr noundef %1, ptr noundef %sdata) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end21.cleanup_crit_edge, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ %buflen, %if.end59 ], [ -22, %if.then6.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tsf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drv_reset_tsf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drv_offset_tsf(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drv_set_tsf(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_dtim(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_estab_plinks(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %estab_plinks.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 25
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %estab_plinks.i, i32 noundef 4) #8
  %3 = ptrtoint ptr %estab_plinks.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %estab_plinks.i, align 4
  %call1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %4) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call1.i) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call1.i, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_fwded_mcast(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %mshstats.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 23
  %3 = ptrtoint ptr %mshstats.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mshstats.i, align 4
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %4) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_fwded_unicast(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %fwded_unicast.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 23, i32 1
  %3 = ptrtoint ptr %fwded_unicast.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fwded_unicast.i, align 4
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %4) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_fwded_frames(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %fwded_frames.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 23, i32 2
  %3 = ptrtoint ptr %fwded_frames.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fwded_frames.i, align 4
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %4) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dropped_frames_ttl(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dropped_frames_ttl.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 23, i32 3
  %3 = ptrtoint ptr %dropped_frames_ttl.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dropped_frames_ttl.i, align 4
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %4) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dropped_frames_no_route(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dropped_frames_no_route.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 23, i32 4
  %3 = ptrtoint ptr %dropped_frames_no_route.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dropped_frames_no_route.i, align 4
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %4) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dropped_frames_congestion(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dropped_frames_congestion.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 23, i32 5
  %3 = ptrtoint ptr %dropped_frames_congestion.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dropped_frames_congestion.i, align 4
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %4) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dot11MeshMaxRetries(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dot11MeshMaxRetries.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 4
  %3 = ptrtoint ptr %dot11MeshMaxRetries.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dot11MeshMaxRetries.i, align 4
  %conv.i = zext i8 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dot11MeshRetryTimeout(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %mshcfg.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24
  %3 = ptrtoint ptr %mshcfg.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mshcfg.i, align 4
  %conv.i = zext i16 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dot11MeshConfirmTimeout(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dot11MeshConfirmTimeout.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 1
  %3 = ptrtoint ptr %dot11MeshConfirmTimeout.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dot11MeshConfirmTimeout.i, align 2
  %conv.i = zext i16 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dot11MeshHoldingTimeout(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dot11MeshHoldingTimeout.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 2
  %3 = ptrtoint ptr %dot11MeshHoldingTimeout.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dot11MeshHoldingTimeout.i, align 4
  %conv.i = zext i16 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dot11MeshTTL(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dot11MeshTTL.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 5
  %3 = ptrtoint ptr %dot11MeshTTL.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dot11MeshTTL.i, align 1
  %conv.i = zext i8 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_element_ttl(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %element_ttl.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 6
  %3 = ptrtoint ptr %element_ttl.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %element_ttl.i, align 2
  %conv.i = zext i8 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_auto_open_plinks(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %auto_open_plinks.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 7
  %3 = ptrtoint ptr %auto_open_plinks.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %auto_open_plinks.i, align 1, !range !358
  %5 = zext i8 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %5) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dot11MeshMaxPeerLinks(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dot11MeshMaxPeerLinks.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 3
  %3 = ptrtoint ptr %dot11MeshMaxPeerLinks.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dot11MeshMaxPeerLinks.i, align 2
  %conv.i = zext i16 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dot11MeshHWMPactivePathTimeout(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dot11MeshHWMPactivePathTimeout.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 12
  %3 = ptrtoint ptr %dot11MeshHWMPactivePathTimeout.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dot11MeshHWMPactivePathTimeout.i, align 4
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %4) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dot11MeshHWMPpreqMinInterval(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dot11MeshHWMPpreqMinInterval.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 13
  %3 = ptrtoint ptr %dot11MeshHWMPpreqMinInterval.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dot11MeshHWMPpreqMinInterval.i, align 4
  %conv.i = zext i16 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dot11MeshHWMPperrMinInterval(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dot11MeshHWMPperrMinInterval.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 14
  %3 = ptrtoint ptr %dot11MeshHWMPperrMinInterval.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dot11MeshHWMPperrMinInterval.i, align 2
  %conv.i = zext i16 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dot11MeshHWMPnetDiameterTraversalTime(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dot11MeshHWMPnetDiameterTraversalTime.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 15
  %3 = ptrtoint ptr %dot11MeshHWMPnetDiameterTraversalTime.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dot11MeshHWMPnetDiameterTraversalTime.i, align 4
  %conv.i = zext i16 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dot11MeshHWMPmaxPREQretries(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dot11MeshHWMPmaxPREQretries.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 9
  %3 = ptrtoint ptr %dot11MeshHWMPmaxPREQretries.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dot11MeshHWMPmaxPREQretries.i, align 4
  %conv.i = zext i8 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_path_refresh_time(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %path_refresh_time.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 10
  %3 = ptrtoint ptr %path_refresh_time.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %path_refresh_time.i, align 4
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %4) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_min_discovery_timeout(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %min_discovery_timeout.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 11
  %3 = ptrtoint ptr %min_discovery_timeout.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %min_discovery_timeout.i, align 4
  %conv.i = zext i16 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dot11MeshHWMPRootMode(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dot11MeshHWMPRootMode.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 16
  %3 = ptrtoint ptr %dot11MeshHWMPRootMode.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dot11MeshHWMPRootMode.i, align 2
  %conv.i = zext i8 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dot11MeshHWMPRannInterval(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dot11MeshHWMPRannInterval.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 19
  %3 = ptrtoint ptr %dot11MeshHWMPRannInterval.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dot11MeshHWMPRannInterval.i, align 2
  %conv.i = zext i16 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dot11MeshForwarding(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dot11MeshForwarding.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 21
  %3 = ptrtoint ptr %dot11MeshForwarding.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dot11MeshForwarding.i, align 1, !range !358
  %5 = zext i8 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %5) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dot11MeshGateAnnouncementProtocol(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dot11MeshGateAnnouncementProtocol.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 20
  %3 = ptrtoint ptr %dot11MeshGateAnnouncementProtocol.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dot11MeshGateAnnouncementProtocol.i, align 4, !range !358
  %5 = zext i8 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %5) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_rssi_threshold(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %rssi_threshold.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 22
  %3 = ptrtoint ptr %rssi_threshold.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rssi_threshold.i, align 4
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %4) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_ht_opmode(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %ht_opmode.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 23
  %3 = ptrtoint ptr %ht_opmode.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ht_opmode.i, align 4
  %conv.i = zext i16 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dot11MeshHWMPactivePathToRootTimeout(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dot11MeshHWMPactivePathToRootTimeout.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 24
  %3 = ptrtoint ptr %dot11MeshHWMPactivePathToRootTimeout.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dot11MeshHWMPactivePathToRootTimeout.i, align 4
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %4) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dot11MeshHWMProotInterval(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dot11MeshHWMProotInterval.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 25
  %3 = ptrtoint ptr %dot11MeshHWMProotInterval.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dot11MeshHWMProotInterval.i, align 4
  %conv.i = zext i16 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dot11MeshHWMPconfirmationInterval(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dot11MeshHWMPconfirmationInterval.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 26
  %3 = ptrtoint ptr %dot11MeshHWMPconfirmationInterval.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dot11MeshHWMPconfirmationInterval.i, align 2
  %conv.i = zext i16 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_power_mode(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %power_mode.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 27
  %3 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %power_mode.i, align 4
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %4) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dot11MeshAwakeWindowDuration(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dot11MeshAwakeWindowDuration.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 28
  %3 = ptrtoint ptr %dot11MeshAwakeWindowDuration.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dot11MeshAwakeWindowDuration.i, align 4
  %conv.i = zext i16 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dot11MeshConnectedToMeshGate(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dot11MeshConnectedToMeshGate.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 17
  %3 = ptrtoint ptr %dot11MeshConnectedToMeshGate.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dot11MeshConnectedToMeshGate.i, align 1, !range !358
  %5 = zext i8 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %5) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dot11MeshNolearn(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dot11MeshNolearn.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 30
  %3 = ptrtoint ptr %dot11MeshNolearn.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dot11MeshNolearn.i, align 4, !range !358
  %5 = zext i8 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %5) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dot11MeshConnectedToAuthServer(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dot11MeshConnectedToAuthServer.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 18
  %3 = ptrtoint ptr %dot11MeshConnectedToAuthServer.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dot11MeshConnectedToAuthServer.i, align 4, !range !358
  %5 = zext i8 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %5) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_bssid(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %bssid.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 25
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.93, ptr noundef %bssid.i) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_aid(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %aid.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 59, i32 1, i32 13
  %3 = ptrtoint ptr %aid.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %aid.i, align 2
  %conv.i = zext i16 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_beacon_timeout(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %beacon_timeout.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 23
  %3 = ptrtoint ptr %beacon_timeout.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %beacon_timeout.i, align 8
  %call.i1 = tail call i32 @jiffies_to_msecs(i32 noundef %4) #8
  %call1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %call.i1) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call1.i) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call1.i, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_smps(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 59
  %3 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vif.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.i1 = icmp eq i32 %4, 2
  br i1 %cmp.i1, label %ieee80211_if_fmt_smps.exit, label %ieee80211_if_fmt_smps.exit.thread

ieee80211_if_fmt_smps.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  br label %ieee80211_if_read.exit

ieee80211_if_fmt_smps.exit:                       ; preds = %entry
  %req_smps.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 28
  %5 = ptrtoint ptr %req_smps.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req_smps.i, align 8
  %arrayidx.i = getelementptr [4 x ptr], ptr @smps_modes, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %smps_mode.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 44
  %9 = ptrtoint ptr %smps_mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %smps_mode.i, align 8
  %arrayidx1.i = getelementptr [4 x ptr], ptr @smps_modes, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx1.i, align 4
  %call.i2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.94, ptr noundef %8, ptr noundef %12) #8
  tail call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i2)
  %cmp.i = icmp sgt i32 %call.i2, -1
  br i1 %cmp.i, label %if.then.i, label %ieee80211_if_fmt_smps.exit.ieee80211_if_read.exit_crit_edge

ieee80211_if_fmt_smps.exit.ieee80211_if_read.exit_crit_edge: ; preds = %ieee80211_if_fmt_smps.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %ieee80211_if_fmt_smps.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i2) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %ieee80211_if_fmt_smps.exit.ieee80211_if_read.exit_crit_edge, %ieee80211_if_fmt_smps.exit.thread
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i2, %ieee80211_if_fmt_smps.exit.ieee80211_if_read.exit_crit_edge ], [ -22, %ieee80211_if_fmt_smps.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_write_smps(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @ieee80211_if_write(ptr noundef %1, ptr noundef %userbuf, i32 noundef %count, ptr noundef nonnull @ieee80211_if_parse_smps)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_parse_smps(ptr noundef %sdata, ptr nocapture noundef readonly %buf, i32 noundef %buflen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.95, i32 noundef %buflen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %entry.if.then.thread_crit_edge, label %for.inc

entry.if.then.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.thread

if.then.thread:                                   ; preds = %for.inc.2.if.then.thread_crit_edge, %for.inc.if.then.thread_crit_edge, %entry.if.then.thread_crit_edge
  %mode.015.lcssa.ph = phi i32 [ 0, %entry.if.then.thread_crit_edge ], [ 1, %for.inc.if.then.thread_crit_edge ], [ 3, %for.inc.2.if.then.thread_crit_edge ]
  %local1.i19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1.i19 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1.i19, align 4
  %wiphy.i20 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy.i20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy.i20, align 8
  %features.i21 = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %features.i21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features.i21, align 8
  br label %if.end.i

if.then:                                          ; preds = %for.inc.1
  %local1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %6 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %local1.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy.i, align 8
  %features.i = getelementptr inbounds %struct.wiphy, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %features.i, align 8
  %and.i = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.cleanup5_crit_edge, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.cleanup5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup5

if.end.i:                                         ; preds = %if.then.if.end.i_crit_edge, %if.then.thread
  %12 = phi i32 [ %5, %if.then.thread ], [ %11, %if.then.if.end.i_crit_edge ]
  %mode.015.lcssa25 = phi i32 [ %mode.015.lcssa.ph, %if.then.thread ], [ 2, %if.then.if.end.i_crit_edge ]
  %and5.i = and i32 %12, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true7.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

land.lhs.true7.i:                                 ; preds = %if.end.i
  %13 = zext i32 %mode.015.lcssa25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %mode.015.lcssa25, label %land.lhs.true7.i.if.end11.i_crit_edge [
    i32 3, label %land.lhs.true7.i.cleanup5_crit_edge
    i32 0, label %land.lhs.true7.i.cleanup5_crit_edge26
  ]

land.lhs.true7.i.cleanup5_crit_edge26:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup5

land.lhs.true7.i.cleanup5_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup5

land.lhs.true7.i.if.end11.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %land.lhs.true7.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %14 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vif.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp12.not.i = icmp eq i32 %15, 2
  br i1 %cmp12.not.i, label %ieee80211_set_smps.exit, label %if.end11.i.cleanup5_crit_edge

if.end11.i.cleanup5_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup5

ieee80211_set_smps.exit:                          ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %mtx.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i.i, i32 noundef 0) #8
  %call.i = tail call i32 @__ieee80211_request_smps_mgd(ptr noundef %sdata, i32 noundef %mode.015.lcssa25) #8
  tail call void @mutex_unlock(ptr noundef %mtx.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %spec.select = select i1 %tobool.not, i32 %buflen, i32 %call.i
  br label %cleanup5

for.inc:                                          ; preds = %entry
  %call.1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.96, i32 noundef %buflen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp1.1 = icmp eq i32 %call.1, 0
  br i1 %cmp1.1, label %for.inc.if.then.thread_crit_edge, label %for.inc.1

for.inc.if.then.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.thread

for.inc.1:                                        ; preds = %for.inc
  %call.2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.97, i32 noundef %buflen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp1.2 = icmp eq i32 %call.2, 0
  br i1 %cmp1.2, label %if.then, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %call.3 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.98, i32 noundef %buflen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp1.3 = icmp eq i32 %call.3, 0
  br i1 %cmp1.3, label %for.inc.2.if.then.thread_crit_edge, label %for.inc.2.cleanup5_crit_edge

for.inc.2.cleanup5_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup5

for.inc.2.if.then.thread_crit_edge:               ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.thread

cleanup5:                                         ; preds = %for.inc.2.cleanup5_crit_edge, %ieee80211_set_smps.exit, %if.end11.i.cleanup5_crit_edge, %land.lhs.true7.i.cleanup5_crit_edge, %land.lhs.true7.i.cleanup5_crit_edge26, %if.then.cleanup5_crit_edge
  %retval.1 = phi i32 [ -95, %if.end11.i.cleanup5_crit_edge ], [ -22, %land.lhs.true7.i.cleanup5_crit_edge ], [ -22, %land.lhs.true7.i.cleanup5_crit_edge26 ], [ -22, %if.then.cleanup5_crit_edge ], [ %spec.select, %ieee80211_set_smps.exit ], [ -22, %for.inc.2.cleanup5_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ieee80211_request_smps_mgd(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_write_tkip_mic_test(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @ieee80211_if_write(ptr noundef %1, ptr noundef %userbuf, i32 noundef %count, ptr noundef nonnull @ieee80211_if_parse_tkip_mic_test)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_parse_tkip_mic_test(ptr noundef %sdata, ptr noundef %buf, i32 noundef %buflen) #0 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #8
  %2 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %call = call zeroext i1 @mac_pton(ptr noundef %buf, ptr noundef nonnull %addr) #8
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 9
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %extra_tx_headroom = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %extra_tx_headroom, align 4
  %add5 = add i32 %6, 124
  %call.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add5, i32 noundef 2592) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %7 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %extra_tx_headroom, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %8
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %12, i32 %8
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 24) #8
  %13 = call ptr @memset(ptr %call.i, i32 0, i32 24)
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %14 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vif, align 8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %15, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb23
  ]

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %call.i, i32 0, i32 2
  %17 = call ptr @memcpy(ptr %addr1, ptr %addr, i32 6)
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %call.i, i32 0, i32 3
  %addr17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %18 = call ptr @memcpy(ptr %addr2, ptr %addr17, i32 6)
  %addr3 = getelementptr inbounds %struct.ieee80211_hdr, ptr %call.i, i32 0, i32 4
  %19 = call ptr @memcpy(ptr %addr3, ptr %addr17, i32 6)
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end8
  %mtx.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7
  call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #8
  %associated = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 28
  %20 = ptrtoint ptr %associated to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %associated, align 8
  %tobool27.not = icmp eq ptr %21, null
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %mtx.i) #8
  call void @consume_skb(ptr noundef nonnull %call.i.i) #8
  br label %cleanup

if.end29:                                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  %addr130 = getelementptr inbounds %struct.ieee80211_hdr, ptr %call.i, i32 0, i32 2
  %bssid = getelementptr inbounds %struct.cfg80211_bss, ptr %21, i32 0, i32 11
  %22 = call ptr @memcpy(ptr %addr130, ptr %bssid, i32 6)
  %addr235 = getelementptr inbounds %struct.ieee80211_hdr, ptr %call.i, i32 0, i32 3
  %addr38 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %23 = call ptr @memcpy(ptr %addr235, ptr %addr38, i32 6)
  %addr340 = getelementptr inbounds %struct.ieee80211_hdr, ptr %call.i, i32 0, i32 4
  %24 = call ptr @memcpy(ptr %addr340, ptr %addr, i32 6)
  call void @mutex_unlock(ptr noundef %mtx.i) #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void @consume_skb(ptr noundef nonnull %call.i.i) #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.end29, %sw.bb
  %fc.0 = phi i16 [ 2049, %if.end29 ], [ 2050, %sw.bb ]
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %fc.0, ptr %call.i, align 2
  %call.i79 = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 50) #8
  %26 = call ptr @memset(ptr %call.i79, i32 0, i32 50)
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cb.i, align 8
  %or45 = or i32 %28, 67108864
  store i32 %or45, ptr %cb.i, align 8
  %29 = call i32 @llvm.read_register.i32(metadata !340) #8
  %and.i.i.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %32, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !350
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i.i, label %sw.epilog.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.epilog.rcu_read_lock.exit.i.i_crit_edge:       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.epilog
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 696, ptr noundef nonnull @.str.26) #8
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %sw.epilog.rcu_read_lock.exit.i.i_crit_edge
  %chanctx_conf1.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %33 = ptrtoint ptr %chanctx_conf1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %chanctx_conf1.i.i, align 4
  %call.i.i80 = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i80)
  %tobool.not.i.i = icmp eq i32 %call.i.i80, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end8.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end8.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @ieee80211_tx_skb_tid.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_tx_skb_tid.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.99, i32 noundef 2199, ptr noundef nonnull @.str.100) #8
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %34, null
  br i1 %tobool10.not.i.i, label %do.end23.i.i, label %if.end39.i.i, !prof !359

do.end23.i.i:                                     ; preds = %do.end8.i.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.99, i32 noundef 2200, i32 noundef 9, ptr noundef null) #8
  %call.i1.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i1.i, label %do.end23.i.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i3.i

do.end23.i.i.rcu_read_unlock.exit.i_crit_edge:    ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true.i3.i:                               ; preds = %do.end23.i.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i2.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i2.i, label %land.lhs.true.i3.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i3.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i3.i
  %.b4.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i4.i

land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

if.then.i4.i:                                     ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 724, ptr noundef nonnull @.str.27) #8
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i4.i, %land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i3.i.rcu_read_unlock.exit.i_crit_edge, %do.end23.i.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !351
  %35 = call i32 @llvm.read_register.i32(metadata !340) #8
  %and.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %cleanup

if.end39.i.i:                                     ; preds = %do.end8.i.i
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %34, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  call void @__ieee80211_tx_skb_tid_band(ptr noundef %sdata, ptr noundef nonnull %call.i.i, i32 noundef 7, i32 noundef %42) #8
  %call.i2.i.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i2.i.i, label %if.end39.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i5.i.i

if.end39.i.i.rcu_read_unlock.exit.i.i_crit_edge:  ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i5.i.i:                             ; preds = %if.end39.i.i
  %call1.i3.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i.i)
  %tobool.not.i4.i.i = icmp eq i32 %call1.i3.i.i, 0
  br i1 %tobool.not.i4.i.i, label %land.lhs.true.i5.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i7.i.i

land.lhs.true.i5.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i7.i.i:                            ; preds = %land.lhs.true.i5.i.i
  %.b4.i6.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i.i, label %land.lhs.true2.i7.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i8.i.i

land.lhs.true2.i7.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i

if.then.i8.i.i:                                   ; preds = %land.lhs.true2.i7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 724, ptr noundef nonnull @.str.27) #8
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i8.i.i, %land.lhs.true2.i7.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i5.i.i.rcu_read_unlock.exit.i.i_crit_edge, %if.end39.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !351
  %43 = call i32 @llvm.read_register.i32(metadata !340) #8
  %and.i.i.i.i.i9.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i9.i.i to ptr
  %preempt_count.i.i.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i10.i.i, align 4
  %sub.i.i.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i10.i.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit.i.i, %rcu_read_unlock.exit.i, %sw.default, %if.then28, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %sw.default ], [ -107, %if.then28 ], [ -22, %entry.cleanup_crit_edge ], [ -107, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %buflen, %rcu_read_unlock.exit.i ], [ %buflen, %rcu_read_unlock.exit.i.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mac_pton(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_write_beacon_loss(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @ieee80211_if_write(ptr noundef %1, ptr noundef %userbuf, i32 noundef %count, ptr noundef nonnull @ieee80211_if_parse_beacon_loss)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_parse_beacon_loss(ptr noundef %sdata, ptr nocapture noundef readnone %buf, i32 noundef %buflen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 9
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %assoc = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 10
  %2 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %assoc, align 1, !range !358
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  tail call void @ieee80211_beacon_loss(ptr noundef %vif) #8
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %buflen, %if.end ], [ -107, %lor.lhs.false.return_crit_edge ], [ -107, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_beacon_loss(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_uapsd_queues(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %uapsd_queues.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 36, i32 0, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %uapsd_queues.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %uapsd_queues.i, align 4
  %call.i1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.101, i32 noundef %4) #8
  tail call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_write_uapsd_queues(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @ieee80211_if_write(ptr noundef %1, ptr noundef %userbuf, i32 noundef %count, ptr noundef nonnull @ieee80211_if_parse_uapsd_queues)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_parse_uapsd_queues(ptr nocapture noundef writeonly %sdata, ptr noundef %buf, i32 noundef %buflen) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !357
  %call = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %uapsd_queues = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 36, i32 0, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %uapsd_queues to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %uapsd_queues, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %buflen, %if.end3 ], [ %call, %entry.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_uapsd_max_sp_len(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %uapsd_max_sp_len.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 36, i32 0, i32 0, i32 4, i32 6
  %3 = ptrtoint ptr %uapsd_max_sp_len.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %uapsd_max_sp_len.i, align 4
  %call.i1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.101, i32 noundef %4) #8
  tail call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_write_uapsd_max_sp_len(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @ieee80211_if_write(ptr noundef %1, ptr noundef %userbuf, i32 noundef %count, ptr noundef nonnull @ieee80211_if_parse_uapsd_max_sp_len)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_parse_uapsd_max_sp_len(ptr nocapture noundef writeonly %sdata, ptr noundef %buf, i32 noundef %buflen) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !357
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %tobool1.not = icmp ult i32 %2, 4
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %uapsd_max_sp_len = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 36, i32 0, i32 0, i32 4, i32 6
  %3 = ptrtoint ptr %uapsd_max_sp_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %uapsd_max_sp_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %buflen, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_tdls_wider_bw(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %local.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %local.i, align 4
  %flags.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i.i, align 4
  %7 = and i32 %6, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %entry.ieee80211_if_fmt_tdls_wider_bw.exit_crit_edge, label %land.rhs.i

entry.ieee80211_if_fmt_tdls_wider_bw.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_fmt_tdls_wider_bw.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %u.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57
  %tdls_wider_bw_prohibited.i = getelementptr inbounds %struct.ieee80211_if_managed, ptr %u.i, i32 0, i32 58
  %8 = ptrtoint ptr %tdls_wider_bw_prohibited.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tdls_wider_bw_prohibited.i, align 1, !range !358
  %10 = xor i8 %9, 1
  %lnot.i = zext i8 %10 to i32
  br label %ieee80211_if_fmt_tdls_wider_bw.exit

ieee80211_if_fmt_tdls_wider_bw.exit:              ; preds = %land.rhs.i, %entry.ieee80211_if_fmt_tdls_wider_bw.exit_crit_edge
  %11 = phi i32 [ 0, %entry.ieee80211_if_fmt_tdls_wider_bw.exit_crit_edge ], [ %lnot.i, %land.rhs.i ]
  %call2.i1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %11) #8
  tail call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i1)
  %cmp.i = icmp sgt i32 %call2.i1, -1
  br i1 %cmp.i, label %if.then.i, label %ieee80211_if_fmt_tdls_wider_bw.exit.ieee80211_if_read.exit_crit_edge

ieee80211_if_fmt_tdls_wider_bw.exit.ieee80211_if_read.exit_crit_edge: ; preds = %ieee80211_if_fmt_tdls_wider_bw.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %ieee80211_if_fmt_tdls_wider_bw.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call2.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %ieee80211_if_fmt_tdls_wider_bw.exit.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call2.i1, %ieee80211_if_fmt_tdls_wider_bw.exit.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_write_tdls_wider_bw(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @ieee80211_if_write(ptr noundef %1, ptr noundef %userbuf, i32 noundef %count, ptr noundef nonnull @ieee80211_if_parse_tdls_wider_bw)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_parse_tdls_wider_bw(ptr nocapture noundef writeonly %sdata, ptr noundef %buf, i32 noundef %buflen) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !357
  %call = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %u = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  %tdls_wider_bw_prohibited = getelementptr inbounds %struct.ieee80211_if_managed, ptr %u, i32 0, i32 58
  %frombool = zext i1 %tobool1.not to i8
  %3 = ptrtoint ptr %tdls_wider_bw_prohibited to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %tdls_wider_bw_prohibited, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %buflen, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_num_mcast_sta(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %num_mcast_sta.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_mcast_sta.i, i32 noundef 4) #8
  %3 = ptrtoint ptr %num_mcast_sta.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %num_mcast_sta.i, align 4
  %call1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %4) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call1.i) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call1.i, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_num_sta_ps(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %num_sta_ps.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_sta_ps.i, i32 noundef 4) #8
  %3 = ptrtoint ptr %num_sta_ps.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %num_sta_ps.i, align 4
  %call1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %4) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call1.i) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call1.i, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_dtim_count(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %dtim_count.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 11
  %3 = ptrtoint ptr %dtim_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dtim_count.i, align 4
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %4) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_num_buffered_multicast(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %qlen.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 22
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i.i, align 4
  %call1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.107, i32 noundef %4) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call1.i) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call1.i, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_multicast_to_unicast(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %multicast_to_unicast.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 15
  %3 = ptrtoint ptr %multicast_to_unicast.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %multicast_to_unicast.i, align 8, !range !358
  %5 = zext i8 %4 to i32
  %call.i1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.7, i32 noundef %5) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %cmp.i = icmp sgt i32 %call.i1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i1) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i1, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ieee80211_if_read_num_mcast_sta_vlan(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf.i = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf.i) #8
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 200)
  tail call void @_raw_read_lock(ptr noundef nonnull @dev_base_lock) #8
  %num_mcast_sta.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_mcast_sta.i, i32 noundef 4) #8
  %3 = ptrtoint ptr %num_mcast_sta.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %num_mcast_sta.i, align 4
  %call1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 200, ptr noundef nonnull @.str.9, i32 noundef %4) #8
  call void @_raw_read_unlock(ptr noundef nonnull @dev_base_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_if_read.exit_crit_edge

entry.ieee80211_if_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_if_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call1.i) #8
  br label %ieee80211_if_read.exit

ieee80211_if_read.exit:                           ; preds = %if.then.i, %entry.ieee80211_if_read.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call1.i, %entry.ieee80211_if_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf.i) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 172)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 172)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !77, !78, !80, !82, !84, !86, !88, !90, !92, !93, !95, !97, !99, !101, !102, !103, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !305, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338}
!llvm.named.register.sp = !{!340}
!llvm.module.flags = !{!341, !342, !343, !344, !345, !346, !347, !348}
!llvm.ident = !{!349}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mac80211/debugfs_netdev.c", i32 838, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/mac80211/debugfs_netdev.c", i32 841, i32 54}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/mac80211/debugfs_netdev.c", i32 800, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/mac80211/debugfs_netdev.c", i32 801, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/mac80211/debugfs_netdev.c", i32 802, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/mac80211/debugfs_netdev.c", i32 803, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/mac80211/debugfs_netdev.c", i32 804, i32 2}
!14 = !{ptr @flags_ops, !15, !"flags_ops", i1 false, i1 false}
!15 = !{!"../net/mac80211/debugfs_netdev.c", i32 210, i32 1}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @state_ops, !18, !"state_ops", i1 false, i1 false}
!18 = !{!"../net/mac80211/debugfs_netdev.c", i32 211, i32 1}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @txpower_ops, !21, !"txpower_ops", i1 false, i1 false}
!21 = !{!"../net/mac80211/debugfs_netdev.c", i32 212, i32 1}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @user_power_level_ops, !24, !"user_power_level_ops", i1 false, i1 false}
!24 = !{!"../net/mac80211/debugfs_netdev.c", i32 214, i32 1}
!25 = !{ptr @ap_power_level_ops, !26, !"ap_power_level_ops", i1 false, i1 false}
!26 = !{!"../net/mac80211/debugfs_netdev.c", i32 213, i32 1}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/mac80211/debugfs_netdev.c", i32 678, i32 2}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/mac80211/debugfs_netdev.c", i32 679, i32 2}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/mac80211/debugfs_netdev.c", i32 680, i32 2}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/mac80211/debugfs_netdev.c", i32 681, i32 2}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/mac80211/debugfs_netdev.c", i32 682, i32 2}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/mac80211/debugfs_netdev.c", i32 683, i32 2}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/mac80211/debugfs_netdev.c", i32 684, i32 2}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/mac80211/debugfs_netdev.c", i32 689, i32 3}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/mac80211/debugfs_netdev.c", i32 690, i32 3}
!45 = !{ptr @rc_rateidx_mask_2ghz_ops, !46, !"rc_rateidx_mask_2ghz_ops", i1 false, i1 false}
!46 = !{!"../net/mac80211/debugfs_netdev.c", i32 169, i32 1}
!47 = !{ptr @rc_rateidx_mask_5ghz_ops, !48, !"rc_rateidx_mask_5ghz_ops", i1 false, i1 false}
!48 = !{!"../net/mac80211/debugfs_netdev.c", i32 171, i32 1}
!49 = !{ptr @rc_rateidx_mcs_mask_2ghz_ops, !50, !"rc_rateidx_mcs_mask_2ghz_ops", i1 false, i1 false}
!50 = !{!"../net/mac80211/debugfs_netdev.c", i32 173, i32 1}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @rc_rateidx_mcs_mask_5ghz_ops, !54, !"rc_rateidx_mcs_mask_5ghz_ops", i1 false, i1 false}
!54 = !{!"../net/mac80211/debugfs_netdev.c", i32 175, i32 1}
!55 = !{ptr @rc_rateidx_vht_mcs_mask_2ghz_ops, !56, !"rc_rateidx_vht_mcs_mask_2ghz_ops", i1 false, i1 false}
!56 = !{!"../net/mac80211/debugfs_netdev.c", i32 192, i32 1}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/mac80211/debugfs_netdev.c", i32 186, i32 45}
!59 = !{ptr @rc_rateidx_vht_mcs_mask_5ghz_ops, !60, !"rc_rateidx_vht_mcs_mask_5ghz_ops", i1 false, i1 false}
!60 = !{!"../net/mac80211/debugfs_netdev.c", i32 208, i32 1}
!61 = !{ptr @hw_queues_ops, !62, !"hw_queues_ops", i1 false, i1 false}
!62 = !{!"../net/mac80211/debugfs_netdev.c", i32 234, i32 1}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/mac80211/debugfs_netdev.c", i32 222, i32 31}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/mac80211/debugfs_netdev.c", i32 229, i32 45}
!67 = !{ptr @aqm_ops, !68, !"aqm_ops", i1 false, i1 false}
!68 = !{!"../net/mac80211/debugfs_netdev.c", i32 513, i32 1}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/mac80211/debugfs_netdev.c", i32 495, i32 4}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!73 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!77 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @airtime_ops, !79, !"airtime_ops", i1 false, i1 false}
!79 = !{!"../net/mac80211/debugfs_netdev.c", i32 541, i32 1}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/mac80211/debugfs_netdev.c", i32 530, i32 4}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/mac80211/debugfs_netdev.c", i32 734, i32 2}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/mac80211/debugfs_netdev.c", i32 735, i32 2}
!86 = !{ptr @tsf_ops, !87, !"tsf_ops", i1 false, i1 false}
!87 = !{!"../net/mac80211/debugfs_netdev.c", i32 601, i32 1}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/mac80211/debugfs_netdev.c", i32 554, i32 32}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!92 = distinct !{null, !91, !"<string literal>", i1 false, i1 false}
!93 = distinct !{null, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/mac80211/debugfs_netdev.c", i32 565, i32 19}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/mac80211/debugfs_netdev.c", i32 568, i32 4}
!101 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @ieee80211_if_parse_tsf._entry, !100, !"_entry", i1 false, i1 false}
!106 = !{ptr @ieee80211_if_parse_tsf._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/mac80211/debugfs_netdev.c", i32 585, i32 4}
!109 = !{ptr @ieee80211_if_parse_tsf._entry.41, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @ieee80211_if_parse_tsf._entry_ptr.43, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/mac80211/debugfs_netdev.c", i32 593, i32 4}
!113 = !{ptr @ieee80211_if_parse_tsf._entry.44, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @ieee80211_if_parse_tsf._entry_ptr.46, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @estab_plinks_ops, !116, !"estab_plinks_ops", i1 false, i1 false}
!116 = !{!"../net/mac80211/debugfs_netdev.c", i32 605, i32 1}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/mac80211/debugfs_netdev.c", i32 740, i32 42}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/mac80211/debugfs_netdev.c", i32 745, i32 2}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/mac80211/debugfs_netdev.c", i32 746, i32 2}
!123 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/mac80211/debugfs_netdev.c", i32 747, i32 2}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/mac80211/debugfs_netdev.c", i32 748, i32 2}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/mac80211/debugfs_netdev.c", i32 749, i32 2}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/mac80211/debugfs_netdev.c", i32 750, i32 2}
!131 = !{ptr @fwded_mcast_ops, !132, !"fwded_mcast_ops", i1 false, i1 false}
!132 = !{!"../net/mac80211/debugfs_netdev.c", i32 608, i32 1}
!133 = !{ptr @fwded_unicast_ops, !134, !"fwded_unicast_ops", i1 false, i1 false}
!134 = !{!"../net/mac80211/debugfs_netdev.c", i32 609, i32 1}
!135 = !{ptr @fwded_frames_ops, !136, !"fwded_frames_ops", i1 false, i1 false}
!136 = !{!"../net/mac80211/debugfs_netdev.c", i32 610, i32 1}
!137 = !{ptr @dropped_frames_ttl_ops, !138, !"dropped_frames_ttl_ops", i1 false, i1 false}
!138 = !{!"../net/mac80211/debugfs_netdev.c", i32 611, i32 1}
!139 = !{ptr @dropped_frames_no_route_ops, !140, !"dropped_frames_no_route_ops", i1 false, i1 false}
!140 = !{!"../net/mac80211/debugfs_netdev.c", i32 614, i32 1}
!141 = !{ptr @dropped_frames_congestion_ops, !142, !"dropped_frames_congestion_ops", i1 false, i1 false}
!142 = !{!"../net/mac80211/debugfs_netdev.c", i32 612, i32 1}
!143 = !{ptr @.str.54, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../net/mac80211/debugfs_netdev.c", i32 756, i32 42}
!145 = !{ptr @.str.55, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../net/mac80211/debugfs_netdev.c", i32 762, i32 2}
!147 = !{ptr @.str.56, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../net/mac80211/debugfs_netdev.c", i32 763, i32 2}
!149 = !{ptr @.str.57, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../net/mac80211/debugfs_netdev.c", i32 764, i32 2}
!151 = !{ptr @.str.58, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../net/mac80211/debugfs_netdev.c", i32 765, i32 2}
!153 = !{ptr @.str.59, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../net/mac80211/debugfs_netdev.c", i32 766, i32 2}
!155 = !{ptr @.str.60, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../net/mac80211/debugfs_netdev.c", i32 767, i32 2}
!157 = !{ptr @.str.61, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../net/mac80211/debugfs_netdev.c", i32 768, i32 2}
!159 = !{ptr @.str.62, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../net/mac80211/debugfs_netdev.c", i32 769, i32 2}
!161 = !{ptr @.str.63, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../net/mac80211/debugfs_netdev.c", i32 770, i32 2}
!163 = !{ptr @.str.64, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../net/mac80211/debugfs_netdev.c", i32 771, i32 2}
!165 = !{ptr @.str.65, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../net/mac80211/debugfs_netdev.c", i32 772, i32 2}
!167 = !{ptr @.str.66, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../net/mac80211/debugfs_netdev.c", i32 773, i32 2}
!169 = !{ptr @.str.67, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../net/mac80211/debugfs_netdev.c", i32 774, i32 2}
!171 = !{ptr @.str.68, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../net/mac80211/debugfs_netdev.c", i32 775, i32 2}
!173 = !{ptr @.str.69, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../net/mac80211/debugfs_netdev.c", i32 776, i32 2}
!175 = !{ptr @.str.70, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../net/mac80211/debugfs_netdev.c", i32 777, i32 2}
!177 = !{ptr @.str.71, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../net/mac80211/debugfs_netdev.c", i32 778, i32 2}
!179 = !{ptr @.str.72, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../net/mac80211/debugfs_netdev.c", i32 779, i32 2}
!181 = !{ptr @.str.73, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../net/mac80211/debugfs_netdev.c", i32 780, i32 2}
!183 = !{ptr @.str.74, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../net/mac80211/debugfs_netdev.c", i32 781, i32 2}
!185 = !{ptr @.str.75, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../net/mac80211/debugfs_netdev.c", i32 782, i32 2}
!187 = !{ptr @.str.76, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../net/mac80211/debugfs_netdev.c", i32 783, i32 2}
!189 = !{ptr @.str.77, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../net/mac80211/debugfs_netdev.c", i32 784, i32 2}
!191 = !{ptr @.str.78, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../net/mac80211/debugfs_netdev.c", i32 785, i32 2}
!193 = !{ptr @.str.79, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../net/mac80211/debugfs_netdev.c", i32 786, i32 2}
!195 = !{ptr @.str.80, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../net/mac80211/debugfs_netdev.c", i32 787, i32 2}
!197 = !{ptr @.str.81, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../net/mac80211/debugfs_netdev.c", i32 788, i32 2}
!199 = !{ptr @.str.82, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../net/mac80211/debugfs_netdev.c", i32 789, i32 2}
!201 = !{ptr @.str.83, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../net/mac80211/debugfs_netdev.c", i32 790, i32 2}
!203 = !{ptr @dot11MeshMaxRetries_ops, !204, !"dot11MeshMaxRetries_ops", i1 false, i1 false}
!204 = !{!"../net/mac80211/debugfs_netdev.c", i32 618, i32 1}
!205 = !{ptr @dot11MeshRetryTimeout_ops, !206, !"dot11MeshRetryTimeout_ops", i1 false, i1 false}
!206 = !{!"../net/mac80211/debugfs_netdev.c", i32 620, i32 1}
!207 = !{ptr @dot11MeshConfirmTimeout_ops, !208, !"dot11MeshConfirmTimeout_ops", i1 false, i1 false}
!208 = !{!"../net/mac80211/debugfs_netdev.c", i32 622, i32 1}
!209 = !{ptr @dot11MeshHoldingTimeout_ops, !210, !"dot11MeshHoldingTimeout_ops", i1 false, i1 false}
!210 = !{!"../net/mac80211/debugfs_netdev.c", i32 624, i32 1}
!211 = !{ptr @dot11MeshTTL_ops, !212, !"dot11MeshTTL_ops", i1 false, i1 false}
!212 = !{!"../net/mac80211/debugfs_netdev.c", i32 626, i32 1}
!213 = !{ptr @element_ttl_ops, !214, !"element_ttl_ops", i1 false, i1 false}
!214 = !{!"../net/mac80211/debugfs_netdev.c", i32 627, i32 1}
!215 = !{ptr @auto_open_plinks_ops, !216, !"auto_open_plinks_ops", i1 false, i1 false}
!216 = !{!"../net/mac80211/debugfs_netdev.c", i32 628, i32 1}
!217 = !{ptr @dot11MeshMaxPeerLinks_ops, !218, !"dot11MeshMaxPeerLinks_ops", i1 false, i1 false}
!218 = !{!"../net/mac80211/debugfs_netdev.c", i32 629, i32 1}
!219 = !{ptr @dot11MeshHWMPactivePathTimeout_ops, !220, !"dot11MeshHWMPactivePathTimeout_ops", i1 false, i1 false}
!220 = !{!"../net/mac80211/debugfs_netdev.c", i32 631, i32 1}
!221 = !{ptr @dot11MeshHWMPpreqMinInterval_ops, !222, !"dot11MeshHWMPpreqMinInterval_ops", i1 false, i1 false}
!222 = !{!"../net/mac80211/debugfs_netdev.c", i32 633, i32 1}
!223 = !{ptr @dot11MeshHWMPperrMinInterval_ops, !224, !"dot11MeshHWMPperrMinInterval_ops", i1 false, i1 false}
!224 = !{!"../net/mac80211/debugfs_netdev.c", i32 635, i32 1}
!225 = !{ptr @dot11MeshHWMPnetDiameterTraversalTime_ops, !226, !"dot11MeshHWMPnetDiameterTraversalTime_ops", i1 false, i1 false}
!226 = !{!"../net/mac80211/debugfs_netdev.c", i32 637, i32 1}
!227 = !{ptr @dot11MeshHWMPmaxPREQretries_ops, !228, !"dot11MeshHWMPmaxPREQretries_ops", i1 false, i1 false}
!228 = !{!"../net/mac80211/debugfs_netdev.c", i32 639, i32 1}
!229 = !{ptr @path_refresh_time_ops, !230, !"path_refresh_time_ops", i1 false, i1 false}
!230 = !{!"../net/mac80211/debugfs_netdev.c", i32 641, i32 1}
!231 = !{ptr @min_discovery_timeout_ops, !232, !"min_discovery_timeout_ops", i1 false, i1 false}
!232 = !{!"../net/mac80211/debugfs_netdev.c", i32 643, i32 1}
!233 = !{ptr @dot11MeshHWMPRootMode_ops, !234, !"dot11MeshHWMPRootMode_ops", i1 false, i1 false}
!234 = !{!"../net/mac80211/debugfs_netdev.c", i32 645, i32 1}
!235 = !{ptr @dot11MeshHWMPRannInterval_ops, !236, !"dot11MeshHWMPRannInterval_ops", i1 false, i1 false}
!236 = !{!"../net/mac80211/debugfs_netdev.c", i32 649, i32 1}
!237 = !{ptr @dot11MeshForwarding_ops, !238, !"dot11MeshForwarding_ops", i1 false, i1 false}
!238 = !{!"../net/mac80211/debugfs_netdev.c", i32 651, i32 1}
!239 = !{ptr @dot11MeshGateAnnouncementProtocol_ops, !240, !"dot11MeshGateAnnouncementProtocol_ops", i1 false, i1 false}
!240 = !{!"../net/mac80211/debugfs_netdev.c", i32 647, i32 1}
!241 = !{ptr @rssi_threshold_ops, !242, !"rssi_threshold_ops", i1 false, i1 false}
!242 = !{!"../net/mac80211/debugfs_netdev.c", i32 652, i32 1}
!243 = !{ptr @ht_opmode_ops, !244, !"ht_opmode_ops", i1 false, i1 false}
!244 = !{!"../net/mac80211/debugfs_netdev.c", i32 653, i32 1}
!245 = !{ptr @dot11MeshHWMPactivePathToRootTimeout_ops, !246, !"dot11MeshHWMPactivePathToRootTimeout_ops", i1 false, i1 false}
!246 = !{!"../net/mac80211/debugfs_netdev.c", i32 654, i32 1}
!247 = !{ptr @dot11MeshHWMProotInterval_ops, !248, !"dot11MeshHWMProotInterval_ops", i1 false, i1 false}
!248 = !{!"../net/mac80211/debugfs_netdev.c", i32 656, i32 1}
!249 = !{ptr @dot11MeshHWMPconfirmationInterval_ops, !250, !"dot11MeshHWMPconfirmationInterval_ops", i1 false, i1 false}
!250 = !{!"../net/mac80211/debugfs_netdev.c", i32 658, i32 1}
!251 = !{ptr @power_mode_ops, !252, !"power_mode_ops", i1 false, i1 false}
!252 = !{!"../net/mac80211/debugfs_netdev.c", i32 660, i32 1}
!253 = !{ptr @dot11MeshAwakeWindowDuration_ops, !254, !"dot11MeshAwakeWindowDuration_ops", i1 false, i1 false}
!254 = !{!"../net/mac80211/debugfs_netdev.c", i32 661, i32 1}
!255 = !{ptr @dot11MeshConnectedToMeshGate_ops, !256, !"dot11MeshConnectedToMeshGate_ops", i1 false, i1 false}
!256 = !{!"../net/mac80211/debugfs_netdev.c", i32 663, i32 1}
!257 = !{ptr @dot11MeshNolearn_ops, !258, !"dot11MeshNolearn_ops", i1 false, i1 false}
!258 = !{!"../net/mac80211/debugfs_netdev.c", i32 665, i32 1}
!259 = !{ptr @dot11MeshConnectedToAuthServer_ops, !260, !"dot11MeshConnectedToAuthServer_ops", i1 false, i1 false}
!260 = !{!"../net/mac80211/debugfs_netdev.c", i32 666, i32 1}
!261 = !{ptr @.str.84, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../net/mac80211/debugfs_netdev.c", i32 696, i32 2}
!263 = !{ptr @.str.85, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../net/mac80211/debugfs_netdev.c", i32 697, i32 2}
!265 = !{ptr @.str.86, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../net/mac80211/debugfs_netdev.c", i32 698, i32 2}
!267 = !{ptr @.str.87, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../net/mac80211/debugfs_netdev.c", i32 699, i32 2}
!269 = !{ptr @.str.88, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../net/mac80211/debugfs_netdev.c", i32 700, i32 2}
!271 = !{ptr @.str.89, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../net/mac80211/debugfs_netdev.c", i32 701, i32 2}
!273 = !{ptr @.str.90, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../net/mac80211/debugfs_netdev.c", i32 702, i32 2}
!275 = !{ptr @.str.91, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../net/mac80211/debugfs_netdev.c", i32 703, i32 2}
!277 = !{ptr @.str.92, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../net/mac80211/debugfs_netdev.c", i32 704, i32 2}
!279 = !{ptr @bssid_ops, !280, !"bssid_ops", i1 false, i1 false}
!280 = !{!"../net/mac80211/debugfs_netdev.c", i32 237, i32 1}
!281 = !{ptr @.str.93, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @aid_ops, !283, !"aid_ops", i1 false, i1 false}
!283 = !{!"../net/mac80211/debugfs_netdev.c", i32 238, i32 1}
!284 = !{ptr @beacon_timeout_ops, !285, !"beacon_timeout_ops", i1 false, i1 false}
!285 = !{!"../net/mac80211/debugfs_netdev.c", i32 239, i32 1}
!286 = !{ptr @smps_ops, !287, !"smps_ops", i1 false, i1 false}
!287 = !{!"../net/mac80211/debugfs_netdev.c", i32 300, i32 1}
!288 = !{ptr @.str.94, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../net/mac80211/debugfs_netdev.c", i32 278, i32 32}
!290 = !{ptr @.str.95, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../net/mac80211/debugfs_netdev.c", i32 268, i32 31}
!292 = !{ptr @.str.96, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../net/mac80211/debugfs_netdev.c", i32 269, i32 25}
!294 = !{ptr @.str.97, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../net/mac80211/debugfs_netdev.c", i32 270, i32 28}
!296 = !{ptr @.str.98, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../net/mac80211/debugfs_netdev.c", i32 271, i32 29}
!298 = !{ptr @smps_modes, !299, !"smps_modes", i1 false, i1 false}
!299 = !{!"../net/mac80211/debugfs_netdev.c", i32 267, i32 20}
!300 = !{ptr @tkip_mic_test_ops, !301, !"tkip_mic_test_ops", i1 false, i1 false}
!301 = !{!"../net/mac80211/debugfs_netdev.c", i32 366, i32 1}
!302 = distinct !{null, !303, !"__warned", i1 false, i1 false}
!303 = !{!"../net/mac80211/ieee80211_i.h", i32 2199, i32 17}
!304 = !{ptr @.str.99, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @.str.100, !303, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @beacon_loss_ops, !307, !"beacon_loss_ops", i1 false, i1 false}
!307 = !{!"../net/mac80211/debugfs_netdev.c", i32 378, i32 1}
!308 = !{ptr @uapsd_queues_ops, !309, !"uapsd_queues_ops", i1 false, i1 false}
!309 = !{!"../net/mac80211/debugfs_netdev.c", i32 406, i32 1}
!310 = !{ptr @.str.101, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../net/mac80211/debugfs_netdev.c", i32 385, i32 31}
!312 = !{ptr @uapsd_max_sp_len_ops, !313, !"uapsd_max_sp_len_ops", i1 false, i1 false}
!313 = !{!"../net/mac80211/debugfs_netdev.c", i32 434, i32 1}
!314 = !{ptr @tdls_wider_bw_ops, !315, !"tdls_wider_bw_ops", i1 false, i1 false}
!315 = !{!"../net/mac80211/debugfs_netdev.c", i32 462, i32 1}
!316 = !{ptr @.str.102, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../net/mac80211/debugfs_netdev.c", i32 709, i32 2}
!318 = !{ptr @.str.103, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../net/mac80211/debugfs_netdev.c", i32 711, i32 2}
!320 = !{ptr @.str.104, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../net/mac80211/debugfs_netdev.c", i32 712, i32 2}
!322 = !{ptr @.str.105, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../net/mac80211/debugfs_netdev.c", i32 713, i32 2}
!324 = !{ptr @.str.106, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../net/mac80211/debugfs_netdev.c", i32 715, i32 2}
!326 = !{ptr @num_mcast_sta_ops, !327, !"num_mcast_sta_ops", i1 false, i1 false}
!327 = !{!"../net/mac80211/debugfs_netdev.c", i32 465, i32 1}
!328 = !{ptr @num_sta_ps_ops, !329, !"num_sta_ps_ops", i1 false, i1 false}
!329 = !{!"../net/mac80211/debugfs_netdev.c", i32 466, i32 1}
!330 = !{ptr @dtim_count_ops, !331, !"dtim_count_ops", i1 false, i1 false}
!331 = !{!"../net/mac80211/debugfs_netdev.c", i32 467, i32 1}
!332 = !{ptr @num_buffered_multicast_ops, !333, !"num_buffered_multicast_ops", i1 false, i1 false}
!333 = !{!"../net/mac80211/debugfs_netdev.c", i32 476, i32 1}
!334 = !{ptr @.str.107, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../net/mac80211/debugfs_netdev.c", i32 473, i32 32}
!336 = !{ptr @multicast_to_unicast_ops, !337, !"multicast_to_unicast_ops", i1 false, i1 false}
!337 = !{!"../net/mac80211/debugfs_netdev.c", i32 543, i32 1}
!338 = !{ptr @num_mcast_sta_vlan_ops, !339, !"num_mcast_sta_vlan_ops", i1 false, i1 false}
!339 = !{!"../net/mac80211/debugfs_netdev.c", i32 468, i32 1}
!340 = !{!"sp"}
!341 = !{i32 1, !"wchar_size", i32 2}
!342 = !{i32 1, !"min_enum_size", i32 4}
!343 = !{i32 8, !"branch-target-enforcement", i32 0}
!344 = !{i32 8, !"sign-return-address", i32 0}
!345 = !{i32 8, !"sign-return-address-all", i32 0}
!346 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!347 = !{i32 7, !"uwtable", i32 1}
!348 = !{i32 7, !"frame-pointer", i32 2}
!349 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!350 = !{i64 2149314665}
!351 = !{i64 2149314931}
!352 = !{i64 2152891262, i64 2152891287}
!353 = !{!"branch_weights", i32 2000, i32 1}
!354 = !{i64 5386817}
!355 = !{i64 5387014}
!356 = !{i64 2152872247}
!357 = !{!"auto-init"}
!358 = !{i8 0, i8 2}
!359 = !{!"branch_weights", i32 1, i32 2000}
