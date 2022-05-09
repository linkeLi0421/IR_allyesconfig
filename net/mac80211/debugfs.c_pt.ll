; ModuleID = '/llk/IR_all_yes/net/mac80211/debugfs.c_pt.bc'
source_filename = "../net/mac80211/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%struct.atomic_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.__va_list = type { ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.local_debugfsdentries, i8, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
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
%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.local_debugfsdentries = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.rate_control_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"keys\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"total_ps_buffered\00", [46 x i8] zeroinitializer }, align 32
@total_ps_buffered_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @total_ps_buffered_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wep_iv\00", [25 x i8] zeroinitializer }, align 32
@wep_iv_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @wep_iv_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rate_ctrl_alg\00", [18 x i8] zeroinitializer }, align 32
@rate_ctrl_alg_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @rate_ctrl_alg_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"queues\00", [25 x i8] zeroinitializer }, align 32
@queues_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @queues_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"misc\00", [27 x i8] zeroinitializer }, align 32
@misc_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @misc_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@reset_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr @reset_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hwflags\00", [24 x i8] zeroinitializer }, align 32
@hwflags_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @hwflags_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"user_power\00", [21 x i8] zeroinitializer }, align 32
@user_power_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @user_power_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@power_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @power_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hw_conf\00", [24 x i8] zeroinitializer }, align 32
@hw_conf_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @hw_conf_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"force_tx_status\00", [16 x i8] zeroinitializer }, align 32
@force_tx_status_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @force_tx_status_read, ptr @force_tx_status_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aql_enable\00", [21 x i8] zeroinitializer }, align 32
@aql_enable_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @aql_enable_read, ptr @aql_enable_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aqm\00", [28 x i8] zeroinitializer }, align 32
@aqm_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @aqm_read, ptr @aqm_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"airtime\00", [24 x i8] zeroinitializer }, align 32
@airtime_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @airtime_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"airtime_flags\00", [18 x i8] zeroinitializer }, align 32
@airtime_flags_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @airtime_flags_read, ptr @airtime_flags_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aql_txq_limit\00", [18 x i8] zeroinitializer }, align 32
@aql_txq_limit_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @aql_txq_limit_read, ptr @aql_txq_limit_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aql_threshold\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"statistics\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dot11TransmittedFragmentCount\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dot11MulticastTransmittedFrameCount\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dot11FailedCount\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dot11RetryCount\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dot11MultipleRetryCount\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dot11FrameDuplicateCount\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dot11ReceivedFragmentCount\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dot11MulticastReceivedFrameCount\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dot11TransmittedFrameCount\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_handlers_drop\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_handlers_queued\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx_handlers_drop_wep\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tx_handlers_drop_not_assoc\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tx_handlers_drop_unauth_port\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_handlers_drop\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_handlers_queued\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rx_handlers_drop_nullfunc\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rx_handlers_drop_defrag\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_expand_skb_head\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tx_expand_skb_head_cloned\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rx_expand_skb_head_defrag\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_handlers_fragments\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx_status_drop\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dot11ACKFailureCount\00", [43 x i8] zeroinitializer }, align 32
@stats_dot11ACKFailureCount_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @stats_dot11ACKFailureCount_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dot11RTSFailureCount\00", [43 x i8] zeroinitializer }, align 32
@stats_dot11RTSFailureCount_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @stats_dot11RTSFailureCount_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dot11FCSErrorCount\00", [45 x i8] zeroinitializer }, align 32
@stats_dot11FCSErrorCount_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @stats_dot11FCSErrorCount_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dot11RTSSuccessCount\00", [43 x i8] zeroinitializer }, align 32
@stats_dot11RTSSuccessCount_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @stats_dot11RTSSuccessCount_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%#08x\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hw/driver\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%02d: %#.8lx/%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pending:\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"[%i] %d\0A\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/mac80211/ieee80211_i.h\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: resume with hardware scan still in progress\0A\00", [47 x i8] zeroinitializer }, align 32
@hw_flag_names = internal constant { [52 x ptr], [48 x i8] } { [52 x ptr] [ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106], [48 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HAS_RATE_CONTROL\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX_INCLUDES_FCS\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HOST_BROADCAST_PS_BUFFERING\00", [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SIGNAL_UNSPEC\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SIGNAL_DBM\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NEED_DTIM_BEFORE_ASSOC\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SPECTRUM_MGMT\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AMPDU_AGGREGATION\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SUPPORTS_PS\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PS_NULLFUNC_STACK\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SUPPORTS_DYNAMIC_PS\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MFP_CAPABLE\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"WANT_MONITOR_VIF\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NO_AUTO_VIF\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SW_CRYPTO_CONTROL\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SUPPORT_FAST_XMIT\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"REPORTS_TX_ACK_STATUS\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CONNECTION_MONITOR\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUEUE_CONTROL\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SUPPORTS_PER_STA_GTK\00", [43 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AP_LINK_PS\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TX_AMPDU_SETUP_IN_HW\00", [43 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SUPPORTS_RC_TABLE\00", [46 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"P2P_DEV_ADDR_FOR_INTF\00", [42 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TIMING_BEACON_ONLY\00", [45 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SUPPORTS_HT_CCK_RATES\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CHANCTX_STA_CSA\00", [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SUPPORTS_CLONED_SKBS\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SINGLE_SCAN_ON_ALL_BANDS\00", [39 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TDLS_WIDER_BW\00", [18 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SUPPORTS_AMSDU_IN_AMPDU\00", [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BEACON_TX_STATUS\00", [47 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NEEDS_UNIQUE_STA_ADDR\00", [42 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SUPPORTS_REORDERING_BUFFER\00", [37 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"USES_RSS\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TX_AMSDU\00", [23 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX_FRAG_LIST\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"REPORTS_LOW_ACK\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SUPPORTS_TX_FRAG\00", [47 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SUPPORTS_TDLS_BUFFER_STA\00", [39 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEAUTH_NEED_MGD_TX_PREP\00", [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DOESNT_SUPPORT_QOS_NDP\00", [41 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"BUFF_MMPDU_TXQ\00", [17 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SUPPORTS_VHT_EXT_NSS_BW\00", [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"STA_MMPDU_TXQ\00", [18 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TX_STATUS_NO_AMPDU_LEN\00", [41 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SUPPORTS_MULTI_BSSID\00", [43 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SUPPORTS_ONLY_HE_MULTI_BSSID\00", [35 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AMPDU_KEYBORDER_SUPPORT\00", [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SUPPORTS_TX_ENCAP_OFFLOAD\00", [38 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SUPPORTS_RX_DECAP_OFFLOAD\00", [38 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SUPPORTS_CONC_MON_RX_DECAP\00", [37 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@aql_disable = external dso_local global %struct.static_key_false, align 4
@.str.111 = internal constant { [184 x i8], [40 x i8] } { [184 x i8] c"access name value\0AR fq_flows_cnt %u\0AR fq_backlog %u\0AR fq_overlimit %u\0AR fq_overmemory %u\0AR fq_collisions %u\0AR fq_memory_usage %u\0ARW fq_memory_limit %u\0ARW fq_limit %u\0ARW fq_quantum %u\0A\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.112 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.114 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fq_limit %u\00", [20 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fq_memory_limit %u\00", [45 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fq_quantum %u\00", [18 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"\09VO         VI         BE         BK\0AVirt-t\09%-10llu %-10llu %-10llu %-10llu\0AWeight\09%-10llu %-10llu %-10llu %-10llu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AIRTIME_TX\09(%lx)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AIRTIME_RX\09(%lx)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"AC\09AQL limit low\09AQL limit high\0AVO\09%u\09\09%u\0AVI\09%u\09\09%u\0ABE\09%u\09\09%u\0ABK\09%u\09\09%u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%u %u %u\00", [23 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/mac80211/driver-ops.h\00", [38 x i8] zeroinitializer }, align 32
@__tracepoint_drv_get_stats = external dso_local global %struct.tracepoint, align 4
@.str.124 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/mac80211/trace.h\00", [43 x i8] zeroinitializer }, align 32
@trace_drv_get_stats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.125 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.126 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 49]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 49]
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 655, i32 43 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 657, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [22 x i8] c"total_ps_buffered_ops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 658, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [11 x i8] c"wep_iv_ops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 659, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [18 x i8] c"rate_ctrl_alg_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 660, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [11 x i8] c"queues_ops\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 590, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 661, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [9 x i8] c"misc_ops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 591, i32 1 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 663, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [10 x i8] c"reset_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 446, i32 37 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 665, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [12 x i8] c"hwflags_ops\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 589, i32 1 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 666, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [15 x i8] c"user_power_ops\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 64, i32 1 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 667, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [10 x i8] c"power_ops\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 66, i32 1 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 668, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [12 x i8] c"hw_conf_ops\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 669, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [20 x i8] c"force_tx_status_ops\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 378, i32 37 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 670, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [15 x i8] c"aql_enable_ops\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 327, i32 37 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 673, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [8 x i8] c"aqm_ops\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 145, i32 37 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 677, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant [12 x i8] c"airtime_ops\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 419, i32 37 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 678, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [18 x i8] c"airtime_flags_ops\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 197, i32 37 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 681, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [18 x i8] c"aql_txq_limit_ops\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 277, i32 37 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 682, i32 21 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 685, i32 30 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 692, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 693, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 694, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 695, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 696, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 697, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 698, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 699, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 700, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 701, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 702, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 703, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 704, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 705, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 706, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 707, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 708, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 709, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 710, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 711, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 712, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 713, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 714, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 716, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant [31 x i8] c"stats_dot11ACKFailureCount_ops\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 717, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant [31 x i8] c"stats_dot11RTSFailureCount_ops\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 643, i32 1 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 718, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant [29 x i8] c"stats_dot11FCSErrorCount_ops\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 644, i32 1 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 719, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant [31 x i8] c"stats_dot11RTSSuccessCount_ops\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 645, i32 1 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 68, i32 1 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 70, i32 1 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 72, i32 1 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 581, i32 29 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 558, i32 35 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 562, i32 36 }
@___asan_gen_.352 = private unnamed_addr constant [30 x i8] c"../net/mac80211/ieee80211_i.h\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 2153, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant [14 x i8] c"hw_flag_names\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 453, i32 20 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 455, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 456, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 457, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 458, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 459, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 460, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 461, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 462, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 463, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 464, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 465, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 466, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 467, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 468, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 469, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 470, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 471, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 472, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 473, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 474, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 475, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 476, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 477, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 478, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 479, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 480, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 481, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 482, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 483, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 484, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 485, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 486, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 487, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 488, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 489, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 490, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 491, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 492, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 493, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 494, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 495, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 496, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 497, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 498, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 499, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 500, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 501, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 502, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 503, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 504, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 505, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 506, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 62, i32 1 }
@___asan_gen_.517 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 156, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 89, i32 4 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 695, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 723, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 135, i32 18 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 137, i32 23 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 139, i32 23 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 403, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 163, i32 36 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 166, i32 36 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 214, i32 4 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 252, i32 18 }
@___asan_gen_.556 = private unnamed_addr constant [29 x i8] c"../net/mac80211/driver-ops.h\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 374, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant [24 x i8] c"../net/mac80211/trace.h\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 700, i32 1 }
@___asan_gen_.565 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 108, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.568 = private constant [26 x i8] c"../net/mac80211/debugfs.c\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 642, i32 1 }
@llvm.compiler.used = appending global [147 x ptr] [ptr @.str, ptr @.str.1, ptr @total_ps_buffered_ops, ptr @.str.2, ptr @wep_iv_ops, ptr @.str.3, ptr @rate_ctrl_alg_ops, ptr @.str.4, ptr @queues_ops, ptr @.str.5, ptr @misc_ops, ptr @.str.6, ptr @reset_ops, ptr @.str.7, ptr @hwflags_ops, ptr @.str.8, ptr @user_power_ops, ptr @.str.9, ptr @power_ops, ptr @.str.10, ptr @hw_conf_ops, ptr @.str.11, ptr @force_tx_status_ops, ptr @.str.12, ptr @aql_enable_ops, ptr @.str.13, ptr @aqm_ops, ptr @.str.14, ptr @airtime_ops, ptr @.str.15, ptr @airtime_flags_ops, ptr @.str.16, ptr @aql_txq_limit_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @stats_dot11ACKFailureCount_ops, ptr @.str.43, ptr @stats_dot11RTSFailureCount_ops, ptr @.str.44, ptr @stats_dot11FCSErrorCount_ops, ptr @.str.45, ptr @stats_dot11RTSSuccessCount_ops, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @hw_flag_names, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127], section "llvm.metadata"
@0 = internal global [147 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @total_ps_buffered_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wep_iv_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rate_ctrl_alg_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queues_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @misc_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwflags_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_power_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_conf_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_tx_status_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aql_enable_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aqm_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airtime_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airtime_flags_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aql_txq_limit_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_dot11ACKFailureCount_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_dot11RTSFailureCount_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_dot11FCSErrorCount_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_dot11RTSSuccessCount_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_flag_names to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mac80211_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  %buf = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #9
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !305
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf) #9
  %1 = call ptr @memset(ptr %buf, i32 255, i32 100)
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vscnprintf(ptr noundef nonnull %buf, i32 noundef 100, ptr noundef %fmt, [1 x i32] %.fca.0.insert) #9
  call void @llvm.va_end(ptr nonnull %args)
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #9
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #9
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @debugfs_hw_add(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 1
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %debugfsdir = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %debugfsdir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfsdir, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef nonnull %3) #9
  %keys = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 136, i32 1
  %4 = ptrtoint ptr %keys to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %keys, align 4
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 256, ptr noundef nonnull %3, ptr noundef %local, ptr noundef nonnull @total_ps_buffered_ops) #9
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 256, ptr noundef nonnull %3, ptr noundef %local, ptr noundef nonnull @wep_iv_ops) #9
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 256, ptr noundef nonnull %3, ptr noundef %local, ptr noundef nonnull @rate_ctrl_alg_ops) #9
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 256, ptr noundef nonnull %3, ptr noundef %local, ptr noundef nonnull @queues_ops) #9
  %call5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 256, ptr noundef nonnull %3, ptr noundef %local, ptr noundef nonnull @misc_ops) #9
  %call6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 128, ptr noundef nonnull %3, ptr noundef %local, ptr noundef nonnull @reset_ops) #9
  %call7 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 256, ptr noundef nonnull %3, ptr noundef %local, ptr noundef nonnull @hwflags_ops) #9
  %call8 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 256, ptr noundef nonnull %3, ptr noundef %local, ptr noundef nonnull @user_power_ops) #9
  %call9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 256, ptr noundef nonnull %3, ptr noundef %local, ptr noundef nonnull @power_ops) #9
  %call10 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef nonnull %3, ptr noundef %local, ptr noundef nonnull @hw_conf_ops) #9
  %call11 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 384, ptr noundef nonnull %3, ptr noundef %local, ptr noundef nonnull @force_tx_status_ops) #9
  %call12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 384, ptr noundef nonnull %3, ptr noundef %local, ptr noundef nonnull @aql_enable_ops) #9
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %wake_tx_queue = getelementptr inbounds %struct.ieee80211_ops, ptr %6, i32 0, i32 92
  %7 = ptrtoint ptr %wake_tx_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wake_tx_queue, align 4
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %if.end.if.end16_crit_edge, label %if.then14

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 384, ptr noundef nonnull %3, ptr noundef %local, ptr noundef nonnull @aqm_ops) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end.if.end16_crit_edge
  %9 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wiphy, align 8
  %arrayidx.i = getelementptr %struct.wiphy, ptr %10, i32 0, i32 14, i32 4
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %13 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.i.not = icmp eq i8 %13, 0
  br i1 %cmp.i.not, label %if.end16.if.end23_crit_edge, label %if.then20

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 384, ptr noundef nonnull %3, ptr noundef %local, ptr noundef nonnull @airtime_ops) #9
  %call22 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 384, ptr noundef nonnull %3, ptr noundef %local, ptr noundef nonnull @airtime_flags_ops) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end16.if.end23_crit_edge
  %call24 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 256, ptr noundef nonnull %3, ptr noundef %local, ptr noundef nonnull @aql_txq_limit_ops) #9
  %aql_threshold = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 6
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.17, i16 noundef zeroext 384, ptr noundef nonnull %3, ptr noundef %aql_threshold) #9
  %call25 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.18, ptr noundef nonnull %3) #9
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %dot11TransmittedFragmentCount = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 101
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.19, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %dot11TransmittedFragmentCount) #9
  %dot11MulticastTransmittedFrameCount = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 102
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.20, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %dot11MulticastTransmittedFrameCount) #9
  %dot11FailedCount = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 103
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.21, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %dot11FailedCount) #9
  %dot11RetryCount = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 104
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.22, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %dot11RetryCount) #9
  %dot11MultipleRetryCount = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 105
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.23, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %dot11MultipleRetryCount) #9
  %dot11FrameDuplicateCount = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 106
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.24, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %dot11FrameDuplicateCount) #9
  %dot11ReceivedFragmentCount = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 107
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.25, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %dot11ReceivedFragmentCount) #9
  %dot11MulticastReceivedFrameCount = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 108
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.26, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %dot11MulticastReceivedFrameCount) #9
  %dot11TransmittedFrameCount = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 109
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.27, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %dot11TransmittedFrameCount) #9
  %tx_handlers_drop = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 110
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.28, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %tx_handlers_drop) #9
  %tx_handlers_queued = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 111
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.29, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %tx_handlers_queued) #9
  %tx_handlers_drop_wep = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 112
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.30, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %tx_handlers_drop_wep) #9
  %tx_handlers_drop_not_assoc = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 113
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.31, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %tx_handlers_drop_not_assoc) #9
  %tx_handlers_drop_unauth_port = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 114
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.32, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %tx_handlers_drop_unauth_port) #9
  %rx_handlers_drop = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 115
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.33, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %rx_handlers_drop) #9
  %rx_handlers_queued = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 116
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.34, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %rx_handlers_queued) #9
  %rx_handlers_drop_nullfunc = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 117
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.35, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %rx_handlers_drop_nullfunc) #9
  %rx_handlers_drop_defrag = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 118
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.36, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %rx_handlers_drop_defrag) #9
  %tx_expand_skb_head = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 119
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.37, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %tx_expand_skb_head) #9
  %tx_expand_skb_head_cloned = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 120
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.38, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %tx_expand_skb_head_cloned) #9
  %rx_expand_skb_head_defrag = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 121
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.39, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %rx_expand_skb_head_defrag) #9
  %rx_handlers_fragments = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 122
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.40, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %rx_handlers_fragments) #9
  %tx_status_drop = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 123
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.41, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %tx_status_drop) #9
  %call29 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.42, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %local, ptr noundef nonnull @stats_dot11ACKFailureCount_ops) #9
  %call30 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.43, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %local, ptr noundef nonnull @stats_dot11RTSFailureCount_ops) #9
  %call31 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.44, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %local, ptr noundef nonnull @stats_dot11FCSErrorCount_ops) #9
  %call32 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.45, i16 noundef zeroext 256, ptr noundef nonnull %call25, ptr noundef %local, ptr noundef nonnull @stats_dot11RTSSuccessCount_ops) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @total_ps_buffered_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %total_ps_buffered = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 124
  %2 = ptrtoint ptr %total_ps_buffered to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total_ps_buffered, align 4
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @mac80211_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.46, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wep_iv_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %wep_iv = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %wep_iv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wep_iv, align 4
  %and = and i32 %3, 16777215
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @mac80211_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.47, i32 noundef %and)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rate_ctrl_alg_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %rate_ctrl = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %rate_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rate_ctrl, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %name = getelementptr inbounds %struct.rate_control_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %7, %cond.true ], [ @.str.49, %entry.cond.end_crit_edge ]
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @mac80211_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.48, ptr noundef %cond)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queues_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [320 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %buf) #9
  %2 = call ptr @memset(ptr %buf, i32 255, i32 320)
  %queue_stop_reason_lock = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_stop_reason_lock) #9
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %queues to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %queues, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp625.not = icmp eq i16 %4, 0
  br i1 %cmp625.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %res.027 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %q.026 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %res.027
  %arrayidx = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 10, i32 %q.026
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %qlen.i = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 53, i32 %q.026, i32 1
  %7 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qlen.i, align 4
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.50, i32 noundef %q.026, i32 noundef %6, i32 noundef %8)
  %add = add i32 %call10, %res.027
  %inc = add nuw nsw i32 %q.026, 1
  %9 = ptrtoint ptr %queues to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %queues, align 4
  %conv5 = zext i16 %10 to i32
  %cmp6 = icmp ult i32 %inc, %conv5
  br i1 %cmp6, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %res.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_stop_reason_lock, i32 noundef %call2) #9
  %call13 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %res.0.lcssa) #9
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %buf) #9
  ret i32 %call13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @misc_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 265) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr1 = getelementptr i8, ptr %call7.i.i, i32 264
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr1 to i32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 264, ptr noundef nonnull @.str.51) #9
  %add.ptr3 = getelementptr i8, ptr %call7.i.i, i32 %call2
  %qlen.i = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 53, i32 0, i32 1
  %3 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i, align 4
  %gepdiff = sub i32 264, %call2
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3, i32 noundef %gepdiff, ptr noundef nonnull @.str.52, i32 noundef 0, i32 noundef %4) #9
  %add.ptr9 = getelementptr i8, ptr %add.ptr3, i32 %call8
  %qlen.i.1 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 53, i32 1, i32 1
  %5 = ptrtoint ptr %qlen.i.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i.1, align 4
  %sub.ptr.rhs.cast6.1 = ptrtoint ptr %add.ptr9 to i32
  %sub.ptr.sub7.1 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast6.1
  %call8.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9, i32 noundef %sub.ptr.sub7.1, ptr noundef nonnull @.str.52, i32 noundef 1, i32 noundef %6) #9
  %add.ptr9.1 = getelementptr i8, ptr %add.ptr9, i32 %call8.1
  %qlen.i.2 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 53, i32 2, i32 1
  %7 = ptrtoint ptr %qlen.i.2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qlen.i.2, align 4
  %sub.ptr.rhs.cast6.2 = ptrtoint ptr %add.ptr9.1 to i32
  %sub.ptr.sub7.2 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast6.2
  %call8.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9.1, i32 noundef %sub.ptr.sub7.2, ptr noundef nonnull @.str.52, i32 noundef 2, i32 noundef %8) #9
  %add.ptr9.2 = getelementptr i8, ptr %add.ptr9.1, i32 %call8.2
  %qlen.i.3 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 53, i32 3, i32 1
  %9 = ptrtoint ptr %qlen.i.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qlen.i.3, align 4
  %sub.ptr.rhs.cast6.3 = ptrtoint ptr %add.ptr9.2 to i32
  %sub.ptr.sub7.3 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast6.3
  %call8.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9.2, i32 noundef %sub.ptr.sub7.3, ptr noundef nonnull @.str.52, i32 noundef 3, i32 noundef %10) #9
  %add.ptr9.3 = getelementptr i8, ptr %add.ptr9.2, i32 %call8.3
  %qlen.i.4 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 53, i32 4, i32 1
  %11 = ptrtoint ptr %qlen.i.4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qlen.i.4, align 4
  %sub.ptr.rhs.cast6.4 = ptrtoint ptr %add.ptr9.3 to i32
  %sub.ptr.sub7.4 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast6.4
  %call8.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9.3, i32 noundef %sub.ptr.sub7.4, ptr noundef nonnull @.str.52, i32 noundef 4, i32 noundef %12) #9
  %add.ptr9.4 = getelementptr i8, ptr %add.ptr9.3, i32 %call8.4
  %qlen.i.5 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 53, i32 5, i32 1
  %13 = ptrtoint ptr %qlen.i.5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qlen.i.5, align 4
  %sub.ptr.rhs.cast6.5 = ptrtoint ptr %add.ptr9.4 to i32
  %sub.ptr.sub7.5 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast6.5
  %call8.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9.4, i32 noundef %sub.ptr.sub7.5, ptr noundef nonnull @.str.52, i32 noundef 5, i32 noundef %14) #9
  %add.ptr9.5 = getelementptr i8, ptr %add.ptr9.4, i32 %call8.5
  %qlen.i.6 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 53, i32 6, i32 1
  %15 = ptrtoint ptr %qlen.i.6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qlen.i.6, align 4
  %sub.ptr.rhs.cast6.6 = ptrtoint ptr %add.ptr9.5 to i32
  %sub.ptr.sub7.6 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast6.6
  %call8.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9.5, i32 noundef %sub.ptr.sub7.6, ptr noundef nonnull @.str.52, i32 noundef 6, i32 noundef %16) #9
  %add.ptr9.6 = getelementptr i8, ptr %add.ptr9.5, i32 %call8.6
  %qlen.i.7 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 53, i32 7, i32 1
  %17 = ptrtoint ptr %qlen.i.7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qlen.i.7, align 4
  %sub.ptr.rhs.cast6.7 = ptrtoint ptr %add.ptr9.6 to i32
  %sub.ptr.sub7.7 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast6.7
  %call8.7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9.6, i32 noundef %sub.ptr.sub7.7, ptr noundef nonnull @.str.52, i32 noundef 7, i32 noundef %18) #9
  %add.ptr9.7 = getelementptr i8, ptr %add.ptr9.6, i32 %call8.7
  %qlen.i.8 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 53, i32 8, i32 1
  %19 = ptrtoint ptr %qlen.i.8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qlen.i.8, align 4
  %sub.ptr.rhs.cast6.8 = ptrtoint ptr %add.ptr9.7 to i32
  %sub.ptr.sub7.8 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast6.8
  %call8.8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9.7, i32 noundef %sub.ptr.sub7.8, ptr noundef nonnull @.str.52, i32 noundef 8, i32 noundef %20) #9
  %add.ptr9.8 = getelementptr i8, ptr %add.ptr9.7, i32 %call8.8
  %qlen.i.9 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 53, i32 9, i32 1
  %21 = ptrtoint ptr %qlen.i.9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qlen.i.9, align 4
  %sub.ptr.rhs.cast6.9 = ptrtoint ptr %add.ptr9.8 to i32
  %sub.ptr.sub7.9 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast6.9
  %call8.9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9.8, i32 noundef %sub.ptr.sub7.9, ptr noundef nonnull @.str.52, i32 noundef 9, i32 noundef %22) #9
  %add.ptr9.9 = getelementptr i8, ptr %add.ptr9.8, i32 %call8.9
  %qlen.i.10 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 53, i32 10, i32 1
  %23 = ptrtoint ptr %qlen.i.10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qlen.i.10, align 4
  %sub.ptr.rhs.cast6.10 = ptrtoint ptr %add.ptr9.9 to i32
  %sub.ptr.sub7.10 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast6.10
  %call8.10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9.9, i32 noundef %sub.ptr.sub7.10, ptr noundef nonnull @.str.52, i32 noundef 10, i32 noundef %24) #9
  %add.ptr9.10 = getelementptr i8, ptr %add.ptr9.9, i32 %call8.10
  %qlen.i.11 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 53, i32 11, i32 1
  %25 = ptrtoint ptr %qlen.i.11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qlen.i.11, align 4
  %sub.ptr.rhs.cast6.11 = ptrtoint ptr %add.ptr9.10 to i32
  %sub.ptr.sub7.11 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast6.11
  %call8.11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9.10, i32 noundef %sub.ptr.sub7.11, ptr noundef nonnull @.str.52, i32 noundef 11, i32 noundef %26) #9
  %add.ptr9.11 = getelementptr i8, ptr %add.ptr9.10, i32 %call8.11
  %qlen.i.12 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 53, i32 12, i32 1
  %27 = ptrtoint ptr %qlen.i.12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qlen.i.12, align 4
  %sub.ptr.rhs.cast6.12 = ptrtoint ptr %add.ptr9.11 to i32
  %sub.ptr.sub7.12 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast6.12
  %call8.12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9.11, i32 noundef %sub.ptr.sub7.12, ptr noundef nonnull @.str.52, i32 noundef 12, i32 noundef %28) #9
  %add.ptr9.12 = getelementptr i8, ptr %add.ptr9.11, i32 %call8.12
  %qlen.i.13 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 53, i32 13, i32 1
  %29 = ptrtoint ptr %qlen.i.13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qlen.i.13, align 4
  %sub.ptr.rhs.cast6.13 = ptrtoint ptr %add.ptr9.12 to i32
  %sub.ptr.sub7.13 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast6.13
  %call8.13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9.12, i32 noundef %sub.ptr.sub7.13, ptr noundef nonnull @.str.52, i32 noundef 13, i32 noundef %30) #9
  %add.ptr9.13 = getelementptr i8, ptr %add.ptr9.12, i32 %call8.13
  %qlen.i.14 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 53, i32 14, i32 1
  %31 = ptrtoint ptr %qlen.i.14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %qlen.i.14, align 4
  %sub.ptr.rhs.cast6.14 = ptrtoint ptr %add.ptr9.13 to i32
  %sub.ptr.sub7.14 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast6.14
  %call8.14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9.13, i32 noundef %sub.ptr.sub7.14, ptr noundef nonnull @.str.52, i32 noundef 14, i32 noundef %32) #9
  %add.ptr9.14 = getelementptr i8, ptr %add.ptr9.13, i32 %call8.14
  %qlen.i.15 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 53, i32 15, i32 1
  %33 = ptrtoint ptr %qlen.i.15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qlen.i.15, align 4
  %sub.ptr.rhs.cast6.15 = ptrtoint ptr %add.ptr9.14 to i32
  %sub.ptr.sub7.15 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast6.15
  %call8.15 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9.14, i32 noundef %sub.ptr.sub7.15, ptr noundef nonnull @.str.52, i32 noundef 15, i32 noundef %34) #9
  %call10 = tail call i32 @strlen(ptr noundef nonnull %call7.i.i) #13
  %call11 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %call10) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reset_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %user_buf, i32 noundef returned %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @rtnl_lock() #9
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #9
  %call = tail call i32 @__ieee80211_suspend(ptr noundef %1, ptr noundef null) #9
  %scanning.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 67
  %4 = ptrtoint ptr %scanning.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %scanning.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.__ieee80211_resume.exit_crit_edge, label %land.rhs.i

entry.__ieee80211_resume.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ieee80211_resume.exit

land.rhs.i:                                       ; preds = %entry
  %7 = ptrtoint ptr %scanning.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %scanning.i, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not.i = icmp eq i32 %9, 0
  br i1 %tobool4.not.i, label %do.end.i, label %land.rhs.i.__ieee80211_resume.exit_crit_edge, !prof !306

land.rhs.i.__ieee80211_resume.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ieee80211_resume.exit

do.end.i:                                         ; preds = %land.rhs.i
  %10 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wiphy, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 56, i32 3
  %12 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.wiphy_name.exit.i_crit_edge

do.end.i.wiphy_name.exit.i_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 56
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  br label %wiphy_name.exit.i

wiphy_name.exit.i:                                ; preds = %if.end.i.i.i, %do.end.i.wiphy_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %15, %if.end.i.i.i ], [ %13, %do.end.i.wiphy_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 2156, i32 noundef 9, ptr noundef nonnull @.str.54, ptr noundef %retval.0.i.i.i) #9
  br label %__ieee80211_resume.exit

__ieee80211_resume.exit:                          ; preds = %wiphy_name.exit.i, %land.rhs.i.__ieee80211_resume.exit_crit_edge, %entry.__ieee80211_resume.exit_crit_edge
  %call27.i = tail call i32 @ieee80211_reconfig(ptr noundef %1) #9
  %16 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wiphy, align 8
  tail call void @mutex_unlock(ptr noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool.not = icmp eq i32 %call27.i, 0
  br i1 %tobool.not, label %__ieee80211_resume.exit.if.end_crit_edge, label %if.then

__ieee80211_resume.exit.if.end_crit_edge:         ; preds = %__ieee80211_resume.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %__ieee80211_resume.exit
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wiphy, align 8
  tail call void @cfg80211_shutdown_all_interfaces(ptr noundef %19) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %__ieee80211_resume.exit.if.end_crit_edge
  tail call void @rtnl_unlock() #9
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ieee80211_suspend(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_shutdown_all_interfaces(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_reconfig(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwflags_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1560) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %add.ptr1 = getelementptr i8, ptr %call7.i.i, i32 1559
  %flags = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr1 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.028 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %pos.027 = phi ptr [ %call7.i.i, %for.cond.preheader ], [ %pos.1, %for.inc.for.body_crit_edge ]
  %div3.i = lshr i32 %i.028, 5
  %arrayidx.i = getelementptr i32, ptr %flags, i32 %div3.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.028, 31
  %5 = shl nuw i32 1, %and.i
  %6 = and i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %sub.ptr.rhs.cast = ptrtoint ptr %pos.027 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %arrayidx = getelementptr [52 x ptr], ptr @hw_flag_names, i32 0, i32 %i.028
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %pos.027, i32 noundef %sub.ptr.sub, ptr noundef nonnull @.str.48, ptr noundef %8) #9
  %add.ptr6 = getelementptr i8, ptr %pos.027, i32 %call5
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body.for.inc_crit_edge
  %pos.1 = phi ptr [ %add.ptr6, %if.then4 ], [ %pos.027, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 52
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 @strlen(ptr noundef nonnull %call7.i.i) #13
  %call9 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %call8) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @user_power_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %user_power_level = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 133
  %2 = ptrtoint ptr %user_power_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %user_power_level, align 4
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @mac80211_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.46, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %power_level = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_level, align 4
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @mac80211_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.46, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_conf_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %call = tail call i32 (ptr, i32, ptr, ptr, ...) @mac80211_format_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.107, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_tx_status_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #9
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !305
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !305
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !305
  %force_tx_status = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 137
  %7 = ptrtoint ptr %force_tx_status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %force_tx_status, align 8, !range !307
  %9 = zext i8 %8 to i32
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 3, ptr noundef nonnull @.str.46, i32 noundef %9) #9
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_tx_status_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #9
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !305
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !305
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !305
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp = icmp ugt i32 %count, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.then.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %entry
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %count, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.110, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %count, i32 -1226833920) #14, !srcloc !308
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !309

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %count) #9
  %8 = call i32 @llvm.read_register.i32(metadata !295) #9
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !310
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !312
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %count) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #9, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !312
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.then11.i.i, !prof !309

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end2:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool3.not = icmp eq i32 %count, 0
  br i1 %tobool3.not, label %if.end2.if.else_crit_edge, label %land.lhs.true

if.end2.if.else_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end2
  %sub = add nsw i32 %count, -1
  %arrayidx = getelementptr [3 x i8], ptr %buf, i32 0, i32 %sub
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %13)
  %cmp4 = icmp eq i8 %13, 10
  br i1 %cmp4, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end2.if.else_crit_edge
  %arrayidx9 = getelementptr [3 x i8], ptr %buf, i32 0, i32 %count
  br label %if.end10

if.end10:                                         ; preds = %if.else, %land.lhs.true.if.end10_crit_edge
  %arrayidx9.sink = phi ptr [ %arrayidx9, %if.else ], [ %arrayidx, %land.lhs.true.if.end10_crit_edge ]
  %14 = ptrtoint ptr %arrayidx9.sink to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx9.sink, align 1
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buf, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i8 %16, label %if.end10.cleanup_crit_edge [
    i8 48, label %land.lhs.true15
    i8 49, label %land.lhs.true26
  ]

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true15:                                  ; preds = %if.end10
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp18 = icmp eq i8 %19, 0
  br i1 %cmp18, label %if.then20, label %land.lhs.true15.cleanup_crit_edge

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then20:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  %force_tx_status = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 137
  %20 = ptrtoint ptr %force_tx_status to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %force_tx_status, align 8
  br label %cleanup

land.lhs.true26:                                  ; preds = %if.end10
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp29 = icmp eq i8 %22, 0
  br i1 %cmp29, label %if.then31, label %land.lhs.true26.cleanup_crit_edge

land.lhs.true26.cleanup_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then31:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #11
  %force_tx_status32 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 137
  %23 = ptrtoint ptr %force_tx_status32 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %force_tx_status32, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %land.lhs.true26.cleanup_crit_edge, %if.then20, %land.lhs.true15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true26.cleanup_crit_edge ], [ %count, %if.then31 ], [ %count, %if.then20 ], [ -14, %if.then11.i.i ], [ -22, %land.lhs.true15.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #9
  ret i32 %retval.0
}

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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aql_enable_read(ptr nocapture noundef readnone %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #9
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !305
  %1 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !305
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !305
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @aql_disable, ptr blockaddress(@aql_enable_read, %l_yes.i.i)) #9
          to label %static_key_false.exit [label %l_yes.i.i], !srcloc !313

l_yes.i.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %static_key_false.exit

static_key_false.exit:                            ; preds = %l_yes.i.i, %entry
  %retval.0.i.i = phi i32 [ 0, %l_yes.i.i ], [ 1, %entry ]
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 3, ptr noundef nonnull @.str.46, i32 noundef %retval.0.i.i) #9
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call1) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #9
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aql_enable_write(ptr nocapture noundef readnone %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @aql_disable, ptr blockaddress(@aql_enable_write, %l_yes.i.i)) #9
          to label %static_key_false.exit [label %l_yes.i.i], !srcloc !313

l_yes.i.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %static_key_false.exit

static_key_false.exit:                            ; preds = %l_yes.i.i, %entry
  %retval.0.i.i = phi i1 [ true, %l_yes.i.i ], [ false, %entry ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #9
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !305
  %1 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !305
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !305
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp = icmp ugt i32 %count, 3
  br i1 %cmp, label %static_key_false.exit.cleanup_crit_edge, label %if.then.i.i.i

static_key_false.exit.cleanup_crit_edge:          ; preds = %static_key_false.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %static_key_false.exit
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %count, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.110, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %count, i32 -1226833920) #14, !srcloc !308
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !309

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %count) #9
  %6 = call i32 @llvm.read_register.i32(metadata !295) #9
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !310
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !312
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %count) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #9, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !312
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.then11.i.i, !prof !309

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %3, align 1
  %call5 = call i32 @strlen(ptr noundef nonnull %buf) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end3.if.end13_crit_edge, label %land.lhs.true

if.end3.if.end13_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end3
  %sub = add i32 %call5, -1
  %arrayidx7 = getelementptr [3 x i8], ptr %buf, i32 0, i32 %sub
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %12)
  %cmp8 = icmp eq i8 %12, 10
  br i1 %cmp8, label %if.then10, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx7, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %land.lhs.true.if.end13_crit_edge, %if.end3.if.end13_crit_edge
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.128)
  switch i8 %15, label %if.end13.cleanup_crit_edge [
    i8 48, label %land.lhs.true18
    i8 49, label %land.lhs.true31
  ]

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true18:                                  ; preds = %if.end13
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp21 = icmp ne i8 %18, 0
  %brmerge53 = or i1 %retval.0.i.i, %cmp21
  %.mux54 = select i1 %cmp21, i32 -22, i32 %count
  br i1 %brmerge53, label %land.lhs.true18.cleanup_crit_edge, label %if.then25

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then25:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  call void @static_key_slow_inc(ptr noundef nonnull @aql_disable) #9
  br label %cleanup

land.lhs.true31:                                  ; preds = %if.end13
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp34 = icmp ne i8 %20, 0
  %call.not = xor i1 %retval.0.i.i, true
  %brmerge = or i1 %cmp34, %call.not
  %.mux = select i1 %cmp34, i32 -22, i32 %count
  br i1 %brmerge, label %land.lhs.true31.cleanup_crit_edge, label %if.then38

land.lhs.true31.cleanup_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then38:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  call void @static_key_slow_dec(ptr noundef nonnull @aql_disable) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %land.lhs.true31.cleanup_crit_edge, %if.then25, %land.lhs.true18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then11.i.i, %static_key_false.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %static_key_false.exit.cleanup_crit_edge ], [ %.mux, %land.lhs.true31.cleanup_crit_edge ], [ %count, %if.then38 ], [ %count, %if.then25 ], [ -14, %if.then11.i.i ], [ %.mux54, %land.lhs.true18.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_inc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_dec(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqm_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf) #9
  %2 = call ptr @memset(ptr %buf, i32 255, i32 200)
  %lock = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 1, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %3 = tail call i32 @llvm.read_register.i32(metadata !295) #9
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !314
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.112, i32 noundef 696, ptr noundef nonnull @.str.113) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %flows_cnt = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %flows_cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flows_cnt, align 4
  %backlog = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 1, i32 9
  %9 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %backlog, align 4
  %overmemory = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 1, i32 11
  %11 = ptrtoint ptr %overmemory to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %overmemory, align 4
  %overlimit = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 1, i32 10
  %13 = ptrtoint ptr %overlimit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %overlimit, align 4
  %collisions = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 1, i32 12
  %15 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %collisions, align 4
  %memory_usage = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 1, i32 7
  %17 = ptrtoint ptr %memory_usage to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %memory_usage, align 4
  %memory_limit = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 1, i32 6
  %19 = ptrtoint ptr %memory_limit to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %memory_limit, align 4
  %limit = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 1, i32 5
  %21 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %limit, align 4
  %quantum = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 1, i32 8
  %23 = ptrtoint ptr %quantum to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %quantum, align 4
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 200, ptr noundef nonnull @.str.111, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24) #9
  %call.i17 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i17, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i20

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i20:                                ; preds = %rcu_read_lock.exit
  %call1.i18 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.112, i32 noundef 724, ptr noundef nonnull @.str.114) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !315
  %25 = call i32 @llvm.read_register.i32(metadata !295) #9
  %and.i.i.i.i.i24 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i25, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %call6 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #9
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf) #9
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqm_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf) #9
  %2 = call ptr @memset(ptr %buf, i32 255, i32 100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %count)
  %cmp = icmp ugt i32 %count, 99
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.then.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %entry
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %count, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.110, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %3 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %count, i32 -1226833920) #14, !srcloc !308
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !309

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %count) #9
  %4 = call i32 @llvm.read_register.i32(metadata !295) #9
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !310
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !312
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %count) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #9, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !312
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.then11.i.i, !prof !309

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end2:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool3.not = icmp eq i32 %count, 0
  br i1 %tobool3.not, label %if.end2.if.else_crit_edge, label %land.lhs.true

if.end2.if.else_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end2
  %sub = add nsw i32 %count, -1
  %arrayidx = getelementptr [100 x i8], ptr %buf, i32 0, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %9)
  %cmp4 = icmp eq i8 %9, 10
  br i1 %cmp4, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end2.if.else_crit_edge
  %arrayidx9 = getelementptr [100 x i8], ptr %buf, i32 0, i32 %count
  br label %if.end10

if.end10:                                         ; preds = %if.else, %land.lhs.true.if.end10_crit_edge
  %arrayidx9.sink = phi ptr [ %arrayidx9, %if.else ], [ %arrayidx, %land.lhs.true.if.end10_crit_edge ]
  %10 = ptrtoint ptr %arrayidx9.sink to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx9.sink, align 1
  %limit = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 1, i32 5
  %call12 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.115, ptr noundef %limit)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 1
  br i1 %cmp13, label %if.end10.cleanup_crit_edge, label %if.else16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else16:                                        ; preds = %if.end10
  %memory_limit = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 1, i32 6
  %call19 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.116, ptr noundef %memory_limit)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19)
  %cmp20 = icmp eq i32 %call19, 1
  br i1 %cmp20, label %if.else16.cleanup_crit_edge, label %if.else23

if.else16.cleanup_crit_edge:                      ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else23:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  %quantum = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 1, i32 8
  %call26 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.117, ptr noundef %quantum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call26)
  %cmp27 = icmp eq i32 %call26, 1
  %count. = select i1 %cmp27, i32 %count, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.else23, %if.else16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %if.end10.cleanup_crit_edge ], [ %count, %if.else16.cleanup_crit_edge ], [ %count., %if.else23 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @airtime_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf) #9
  %2 = call ptr @memset(ptr %buf, i32 255, i32 200)
  %arrayidx = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 4, i32 0
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx) #9
  %v_t3 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 4, i32 0, i32 6
  %3 = ptrtoint ptr %v_t3 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %v_t3, align 8
  %weight_sum = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 4, i32 0, i32 7
  %5 = ptrtoint ptr %weight_sum to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %weight_sum, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx) #9
  %arrayidx.1 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 4, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx.1) #9
  %v_t3.1 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 4, i32 1, i32 6
  %7 = ptrtoint ptr %v_t3.1 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %v_t3.1, align 8
  %weight_sum.1 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 4, i32 1, i32 7
  %9 = ptrtoint ptr %weight_sum.1 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %weight_sum.1, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx.1) #9
  %arrayidx.2 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 4, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx.2) #9
  %v_t3.2 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 4, i32 2, i32 6
  %11 = ptrtoint ptr %v_t3.2 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %v_t3.2, align 8
  %weight_sum.2 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 4, i32 2, i32 7
  %13 = ptrtoint ptr %weight_sum.2 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %weight_sum.2, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx.2) #9
  %arrayidx.3 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 4, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx.3) #9
  %v_t3.3 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 4, i32 3, i32 6
  %15 = ptrtoint ptr %v_t3.3 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %v_t3.3, align 8
  %weight_sum.3 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 4, i32 3, i32 7
  %17 = ptrtoint ptr %weight_sum.3 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %weight_sum.3, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx.3) #9
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 200, ptr noundef nonnull @.str.118, i64 noundef %4, i64 noundef %8, i64 noundef %12, i64 noundef %16, i64 noundef %6, i64 noundef %10, i64 noundef %14, i64 noundef %18) #9
  %call20 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #9
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf) #9
  ret i32 %call20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @airtime_flags_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #9
  %2 = call ptr @memset(ptr %buf, i32 0, i32 128)
  %add.ptr1 = getelementptr inbounds i8, ptr %buf, i32 127
  %airtime_flags = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %airtime_flags to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %airtime_flags, align 8
  %5 = and i16 %4, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 127, ptr noundef nonnull @.str.119, i32 noundef 1) #9
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %call
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pos.0 = phi ptr [ %add.ptr2, %if.then ], [ %buf, %entry.if.end_crit_edge ]
  %6 = ptrtoint ptr %airtime_flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %airtime_flags, align 8
  %8 = and i16 %7, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool6.not = icmp eq i16 %8, 0
  br i1 %tobool6.not, label %if.end.if.end13_crit_edge, label %if.then7

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.ptr.lhs.cast8 = ptrtoint ptr %add.ptr1 to i32
  %sub.ptr.rhs.cast9 = ptrtoint ptr %pos.0 to i32
  %sub.ptr.sub10 = sub i32 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast9
  %call11 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %pos.0, i32 noundef %sub.ptr.sub10, ptr noundef nonnull @.str.120, i32 noundef 2) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.end.if.end13_crit_edge
  %call16 = call i32 @strlen(ptr noundef nonnull %buf) #13
  %call17 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call16) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #9
  ret i32 %call17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @airtime_flags_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %count)
  %cmp = icmp ugt i32 %count, 15
  %2 = call ptr @memset(ptr %buf, i32 255, i32 16)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.then.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %entry
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %count, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.110, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %3 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %count, i32 -1226833920) #14, !srcloc !308
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !309

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %count) #9
  %4 = call i32 @llvm.read_register.i32(metadata !295) #9
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !310
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !312
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %count) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #9, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !312
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.then11.i.i, !prof !309

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end2:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool3.not = icmp eq i32 %count, 0
  br i1 %tobool3.not, label %if.end2.if.else_crit_edge, label %land.lhs.true

if.end2.if.else_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end2
  %sub = add nsw i32 %count, -1
  %arrayidx = getelementptr [16 x i8], ptr %buf, i32 0, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %9)
  %cmp4 = icmp eq i8 %9, 10
  br i1 %cmp4, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end2.if.else_crit_edge
  %arrayidx9 = getelementptr [16 x i8], ptr %buf, i32 0, i32 %count
  br label %if.end10

if.end10:                                         ; preds = %if.else, %land.lhs.true.if.end10_crit_edge
  %arrayidx9.sink = phi ptr [ %arrayidx9, %if.else ], [ %arrayidx, %land.lhs.true.if.end10_crit_edge ]
  %10 = ptrtoint ptr %arrayidx9.sink to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx9.sink, align 1
  %airtime_flags = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 5
  %call12 = call i32 @kstrtou16(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef %airtime_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  %count. = select i1 %tobool13.not, i32 %count, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count., %if.end10 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aql_txq_limit_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [400 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %buf) #9
  %2 = call ptr @memset(ptr %buf, i32 255, i32 400)
  %aql_txq_limit_low = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 4, i32 0, i32 9
  %3 = ptrtoint ptr %aql_txq_limit_low to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %aql_txq_limit_low, align 8
  %aql_txq_limit_high = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 4, i32 0, i32 10
  %5 = ptrtoint ptr %aql_txq_limit_high to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %aql_txq_limit_high, align 4
  %aql_txq_limit_low5 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 4, i32 1, i32 9
  %7 = ptrtoint ptr %aql_txq_limit_low5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %aql_txq_limit_low5, align 8
  %aql_txq_limit_high8 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 4, i32 1, i32 10
  %9 = ptrtoint ptr %aql_txq_limit_high8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %aql_txq_limit_high8, align 4
  %aql_txq_limit_low11 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 4, i32 2, i32 9
  %11 = ptrtoint ptr %aql_txq_limit_low11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %aql_txq_limit_low11, align 8
  %aql_txq_limit_high14 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 4, i32 2, i32 10
  %13 = ptrtoint ptr %aql_txq_limit_high14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %aql_txq_limit_high14, align 4
  %aql_txq_limit_low17 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 4, i32 3, i32 9
  %15 = ptrtoint ptr %aql_txq_limit_low17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %aql_txq_limit_low17, align 8
  %aql_txq_limit_high20 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 4, i32 3, i32 10
  %17 = ptrtoint ptr %aql_txq_limit_high20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %aql_txq_limit_high20, align 4
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 400, ptr noundef nonnull @.str.121, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18) #9
  %call22 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #9
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %buf) #9
  ret i32 %call22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aql_txq_limit_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [100 x i8], align 1
  %ac = alloca i32, align 4
  %q_limit_low = alloca i32, align 4
  %q_limit_high = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf) #9
  %2 = call ptr @memset(ptr %buf, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ac) #9
  %3 = ptrtoint ptr %ac to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %ac, align 4, !annotation !305
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %q_limit_low) #9
  %4 = ptrtoint ptr %q_limit_low to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %q_limit_low, align 4, !annotation !305
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %q_limit_high) #9
  %5 = ptrtoint ptr %q_limit_high to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %q_limit_high, align 4, !annotation !305
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %count)
  %cmp = icmp ugt i32 %count, 99
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.then.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %entry
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %count, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.110, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %6 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %count, i32 -1226833920) #14, !srcloc !308
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !309

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %count) #9
  %7 = call i32 @llvm.read_register.i32(metadata !295) #9
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !310
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !312
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %count) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #9, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !312
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.then11.i.i, !prof !309

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end2:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool3.not = icmp eq i32 %count, 0
  br i1 %tobool3.not, label %if.end2.if.else_crit_edge, label %land.lhs.true

if.end2.if.else_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end2
  %sub = add nsw i32 %count, -1
  %arrayidx = getelementptr [100 x i8], ptr %buf, i32 0, i32 %sub
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %12)
  %cmp4 = icmp eq i8 %12, 10
  br i1 %cmp4, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end2.if.else_crit_edge
  %arrayidx9 = getelementptr [100 x i8], ptr %buf, i32 0, i32 %count
  br label %if.end10

if.end10:                                         ; preds = %if.else, %land.lhs.true.if.end10_crit_edge
  %arrayidx9.sink = phi ptr [ %arrayidx9, %if.else ], [ %arrayidx, %land.lhs.true.if.end10_crit_edge ]
  %13 = ptrtoint ptr %arrayidx9.sink to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx9.sink, align 1
  %call12 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.122, ptr noundef nonnull %ac, ptr noundef nonnull %q_limit_low, ptr noundef nonnull %q_limit_high)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 3
  br i1 %cmp13.not, label %if.end16, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %14 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp17 = icmp ugt i32 %15, 3
  br i1 %cmp17, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %aql_txq_limit_low = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 4, i32 %15, i32 9
  %16 = ptrtoint ptr %aql_txq_limit_low to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %aql_txq_limit_low, align 8
  %aql_txq_limit_high = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 4, i32 %15, i32 10
  %18 = ptrtoint ptr %aql_txq_limit_high to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %aql_txq_limit_high, align 4
  %20 = ptrtoint ptr %q_limit_low to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %q_limit_low, align 4
  store i32 %21, ptr %aql_txq_limit_low, align 8
  %22 = ptrtoint ptr %q_limit_high to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %q_limit_high, align 4
  %24 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ac, align 4
  %aql_txq_limit_high29 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 4, i32 %25, i32 10
  %26 = ptrtoint ptr %aql_txq_limit_high29 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %aql_txq_limit_high29, align 4
  %sta_mtx = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 46
  call void @mutex_lock_nested(ptr noundef %sta_mtx, i32 noundef 0) #9
  %sta_list = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 49
  %27 = ptrtoint ptr %sta_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %sta.083 = load ptr, ptr %sta_list, align 4
  %cmp31.not84 = icmp eq ptr %sta.083, %sta_list
  br i1 %cmp31.not84, label %if.end20.for.end_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  br label %for.body

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end20.for.body_crit_edge
  %sta.085 = phi ptr [ %sta.0, %for.inc.for.body_crit_edge ], [ %sta.083, %if.end20.for.body_crit_edge ]
  %28 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ac, align 4
  %aql_limit_low = getelementptr %struct.sta_info, ptr %sta.085, i32 0, i32 38, i32 %29, i32 6
  %30 = ptrtoint ptr %aql_limit_low to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %aql_limit_low, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %17)
  %cmp35 = icmp eq i32 %31, %17
  br i1 %cmp35, label %land.lhs.true37, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true37:                                  ; preds = %for.body
  %aql_limit_high = getelementptr %struct.sta_info, ptr %sta.085, i32 0, i32 38, i32 %29, i32 7
  %32 = ptrtoint ptr %aql_limit_high to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %aql_limit_high, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %19)
  %cmp40 = icmp eq i32 %33, %19
  br i1 %cmp40, label %if.then42, label %land.lhs.true37.for.inc_crit_edge

land.lhs.true37.for.inc_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then42:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %q_limit_low to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %q_limit_low, align 4
  %36 = ptrtoint ptr %aql_limit_low to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %aql_limit_low, align 4
  %37 = ptrtoint ptr %q_limit_high to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %q_limit_high, align 4
  %39 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ac, align 4
  %aql_limit_high48 = getelementptr %struct.sta_info, ptr %sta.085, i32 0, i32 38, i32 %40, i32 7
  %41 = ptrtoint ptr %aql_limit_high48 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %38, ptr %aql_limit_high48, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then42, %land.lhs.true37.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %42 = ptrtoint ptr %sta.085 to i32
  call void @__asan_load4_noabort(i32 %42)
  %sta.0 = load ptr, ptr %sta.085, align 4
  %cmp31.not = icmp eq ptr %sta.0, %sta_list
  br i1 %cmp31.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end20.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %sta_mtx) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %q_limit_high) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %q_limit_low) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ac) #9
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stats_dot11ACKFailureCount_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %stats.i = alloca %struct.ieee80211_low_level_stats, align 4
  %buf.i = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %stats.i) #9
  %2 = call ptr @memset(ptr %stats.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf.i) #9
  %3 = call ptr @memset(ptr %buf.i, i32 255, i32 20)
  tail call void @rtnl_lock() #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.123, i32 noundef 374) #9
  %ops.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %get_stats.i.i = getelementptr inbounds %struct.ieee80211_ops, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %get_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_stats.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %entry.drv_get_stats.exit.i_crit_edge, label %if.then.i.i

entry.drv_get_stats.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %drv_get_stats.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 %7(ptr noundef %1, ptr noundef nonnull %stats.i) #9
  br label %drv_get_stats.exit.i

drv_get_stats.exit.i:                             ; preds = %if.then.i.i, %entry.drv_get_stats.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ -95, %entry.drv_get_stats.exit.i_crit_edge ]
  call fastcc void @trace_drv_get_stats(ptr noundef %1, ptr noundef nonnull %stats.i, i32 noundef %ret.0.i.i) #9
  call void @rtnl_unlock() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool.not.i = icmp eq i32 %ret.0.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %drv_get_stats.exit.i.format_devstat_counter.exit_crit_edge

drv_get_stats.exit.i.format_devstat_counter.exit_crit_edge: ; preds = %drv_get_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %format_devstat_counter.exit

if.end.i:                                         ; preds = %drv_get_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stats.i, align 4
  %call.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 20, ptr noundef nonnull @.str.127, i32 noundef %9) #9
  %call3.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i) #9
  br label %format_devstat_counter.exit

format_devstat_counter.exit:                      ; preds = %if.end.i, %drv_get_stats.exit.i.format_devstat_counter.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %ret.0.i.i, %drv_get_stats.exit.i.format_devstat_counter.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %stats.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_get_stats(ptr noundef %local, ptr noundef %stats, i32 noundef %ret) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_get_stats, i32 0, i32 1), ptr blockaddress(@trace_drv_get_stats, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !295) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !309

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.126, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !295) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !316
  %call42 = tail call i32 @__traceiter_drv_get_stats(ptr noundef null, ptr noundef %local, ptr noundef %stats, i32 noundef %ret) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !317
  %13 = tail call i32 @llvm.read_register.i32(metadata !295) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !295) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !309

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.126, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !295) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !318
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_get_stats, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_get_stats, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_drv_get_stats.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_drv_get_stats.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.124, i32 noundef 729, ptr noundef nonnull @.str.125) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !319
  %31 = tail call i32 @llvm.read_register.i32(metadata !295) #9
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
declare dso_local i32 @__traceiter_drv_get_stats(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stats_dot11RTSFailureCount_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %stats.i = alloca %struct.ieee80211_low_level_stats, align 4
  %buf.i = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %stats.i) #9
  %2 = call ptr @memset(ptr %stats.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf.i) #9
  %3 = call ptr @memset(ptr %buf.i, i32 255, i32 20)
  tail call void @rtnl_lock() #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.123, i32 noundef 374) #9
  %ops.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %get_stats.i.i = getelementptr inbounds %struct.ieee80211_ops, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %get_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_stats.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %entry.drv_get_stats.exit.i_crit_edge, label %if.then.i.i

entry.drv_get_stats.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %drv_get_stats.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 %7(ptr noundef %1, ptr noundef nonnull %stats.i) #9
  br label %drv_get_stats.exit.i

drv_get_stats.exit.i:                             ; preds = %if.then.i.i, %entry.drv_get_stats.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ -95, %entry.drv_get_stats.exit.i_crit_edge ]
  call fastcc void @trace_drv_get_stats(ptr noundef %1, ptr noundef nonnull %stats.i, i32 noundef %ret.0.i.i) #9
  call void @rtnl_unlock() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool.not.i = icmp eq i32 %ret.0.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %drv_get_stats.exit.i.format_devstat_counter.exit_crit_edge

drv_get_stats.exit.i.format_devstat_counter.exit_crit_edge: ; preds = %drv_get_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %format_devstat_counter.exit

if.end.i:                                         ; preds = %drv_get_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %dot11RTSFailureCount.i = getelementptr inbounds %struct.ieee80211_low_level_stats, ptr %stats.i, i32 0, i32 1
  %8 = ptrtoint ptr %dot11RTSFailureCount.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dot11RTSFailureCount.i, align 4
  %call.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 20, ptr noundef nonnull @.str.127, i32 noundef %9) #9
  %call3.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i) #9
  br label %format_devstat_counter.exit

format_devstat_counter.exit:                      ; preds = %if.end.i, %drv_get_stats.exit.i.format_devstat_counter.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %ret.0.i.i, %drv_get_stats.exit.i.format_devstat_counter.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %stats.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stats_dot11FCSErrorCount_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %stats.i = alloca %struct.ieee80211_low_level_stats, align 4
  %buf.i = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %stats.i) #9
  %2 = call ptr @memset(ptr %stats.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf.i) #9
  %3 = call ptr @memset(ptr %buf.i, i32 255, i32 20)
  tail call void @rtnl_lock() #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.123, i32 noundef 374) #9
  %ops.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %get_stats.i.i = getelementptr inbounds %struct.ieee80211_ops, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %get_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_stats.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %entry.drv_get_stats.exit.i_crit_edge, label %if.then.i.i

entry.drv_get_stats.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %drv_get_stats.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 %7(ptr noundef %1, ptr noundef nonnull %stats.i) #9
  br label %drv_get_stats.exit.i

drv_get_stats.exit.i:                             ; preds = %if.then.i.i, %entry.drv_get_stats.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ -95, %entry.drv_get_stats.exit.i_crit_edge ]
  call fastcc void @trace_drv_get_stats(ptr noundef %1, ptr noundef nonnull %stats.i, i32 noundef %ret.0.i.i) #9
  call void @rtnl_unlock() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool.not.i = icmp eq i32 %ret.0.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %drv_get_stats.exit.i.format_devstat_counter.exit_crit_edge

drv_get_stats.exit.i.format_devstat_counter.exit_crit_edge: ; preds = %drv_get_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %format_devstat_counter.exit

if.end.i:                                         ; preds = %drv_get_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %dot11FCSErrorCount.i = getelementptr inbounds %struct.ieee80211_low_level_stats, ptr %stats.i, i32 0, i32 2
  %8 = ptrtoint ptr %dot11FCSErrorCount.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dot11FCSErrorCount.i, align 4
  %call.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 20, ptr noundef nonnull @.str.127, i32 noundef %9) #9
  %call3.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i) #9
  br label %format_devstat_counter.exit

format_devstat_counter.exit:                      ; preds = %if.end.i, %drv_get_stats.exit.i.format_devstat_counter.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %ret.0.i.i, %drv_get_stats.exit.i.format_devstat_counter.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %stats.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stats_dot11RTSSuccessCount_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %stats.i = alloca %struct.ieee80211_low_level_stats, align 4
  %buf.i = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %stats.i) #9
  %2 = call ptr @memset(ptr %stats.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf.i) #9
  %3 = call ptr @memset(ptr %buf.i, i32 255, i32 20)
  tail call void @rtnl_lock() #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.123, i32 noundef 374) #9
  %ops.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %get_stats.i.i = getelementptr inbounds %struct.ieee80211_ops, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %get_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_stats.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %entry.drv_get_stats.exit.i_crit_edge, label %if.then.i.i

entry.drv_get_stats.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %drv_get_stats.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 %7(ptr noundef %1, ptr noundef nonnull %stats.i) #9
  br label %drv_get_stats.exit.i

drv_get_stats.exit.i:                             ; preds = %if.then.i.i, %entry.drv_get_stats.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ -95, %entry.drv_get_stats.exit.i_crit_edge ]
  call fastcc void @trace_drv_get_stats(ptr noundef %1, ptr noundef nonnull %stats.i, i32 noundef %ret.0.i.i) #9
  call void @rtnl_unlock() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool.not.i = icmp eq i32 %ret.0.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %drv_get_stats.exit.i.format_devstat_counter.exit_crit_edge

drv_get_stats.exit.i.format_devstat_counter.exit_crit_edge: ; preds = %drv_get_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %format_devstat_counter.exit

if.end.i:                                         ; preds = %drv_get_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %dot11RTSSuccessCount.i = getelementptr inbounds %struct.ieee80211_low_level_stats, ptr %stats.i, i32 0, i32 3
  %8 = ptrtoint ptr %dot11RTSSuccessCount.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dot11RTSSuccessCount.i, align 4
  %call.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef 20, ptr noundef nonnull @.str.127, i32 noundef %9) #9
  %call3.i = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf.i, i32 noundef %call.i) #9
  br label %format_devstat_counter.exit

format_devstat_counter.exit:                      ; preds = %if.end.i, %drv_get_stats.exit.i.format_devstat_counter.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %ret.0.i.i, %drv_get_stats.exit.i.format_devstat_counter.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %stats.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 147)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 147)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !97, !98, !100, !101, !102, !104, !106, !108, !110, !112, !114, !116, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !232, !234, !236, !237, !239, !241, !243, !245, !247, !249, !250, !251, !253, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !283, !284, !285, !287, !288, !289, !291, !293}
!llvm.named.register.sp = !{!295}
!llvm.module.flags = !{!296, !297, !298, !299, !300, !301, !302, !303}
!llvm.ident = !{!304}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mac80211/debugfs.c", i32 655, i32 43}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/mac80211/debugfs.c", i32 657, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/mac80211/debugfs.c", i32 658, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/mac80211/debugfs.c", i32 659, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/mac80211/debugfs.c", i32 660, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/mac80211/debugfs.c", i32 661, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/mac80211/debugfs.c", i32 663, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/mac80211/debugfs.c", i32 665, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/mac80211/debugfs.c", i32 666, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/mac80211/debugfs.c", i32 667, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/mac80211/debugfs.c", i32 668, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/mac80211/debugfs.c", i32 669, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/mac80211/debugfs.c", i32 670, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/mac80211/debugfs.c", i32 673, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/mac80211/debugfs.c", i32 677, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/mac80211/debugfs.c", i32 678, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/mac80211/debugfs.c", i32 681, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/mac80211/debugfs.c", i32 682, i32 21}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/mac80211/debugfs.c", i32 685, i32 30}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/mac80211/debugfs.c", i32 692, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/mac80211/debugfs.c", i32 693, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/mac80211/debugfs.c", i32 694, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/mac80211/debugfs.c", i32 695, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/mac80211/debugfs.c", i32 696, i32 2}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/mac80211/debugfs.c", i32 697, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/mac80211/debugfs.c", i32 698, i32 2}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/mac80211/debugfs.c", i32 699, i32 2}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/mac80211/debugfs.c", i32 700, i32 2}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/mac80211/debugfs.c", i32 701, i32 2}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/mac80211/debugfs.c", i32 702, i32 2}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/mac80211/debugfs.c", i32 703, i32 2}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/mac80211/debugfs.c", i32 704, i32 2}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/mac80211/debugfs.c", i32 705, i32 2}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/mac80211/debugfs.c", i32 706, i32 2}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/mac80211/debugfs.c", i32 707, i32 2}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/mac80211/debugfs.c", i32 708, i32 2}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/mac80211/debugfs.c", i32 709, i32 2}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/mac80211/debugfs.c", i32 710, i32 2}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/mac80211/debugfs.c", i32 711, i32 2}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/mac80211/debugfs.c", i32 712, i32 2}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/mac80211/debugfs.c", i32 713, i32 2}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/mac80211/debugfs.c", i32 714, i32 2}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/mac80211/debugfs.c", i32 716, i32 2}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/mac80211/debugfs.c", i32 717, i32 2}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/mac80211/debugfs.c", i32 718, i32 2}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/mac80211/debugfs.c", i32 719, i32 2}
!92 = !{ptr @total_ps_buffered_ops, !93, !"total_ps_buffered_ops", i1 false, i1 false}
!93 = !{!"../net/mac80211/debugfs.c", i32 68, i32 1}
!94 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @wep_iv_ops, !96, !"wep_iv_ops", i1 false, i1 false}
!96 = !{!"../net/mac80211/debugfs.c", i32 70, i32 1}
!97 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @rate_ctrl_alg_ops, !99, !"rate_ctrl_alg_ops", i1 false, i1 false}
!99 = !{!"../net/mac80211/debugfs.c", i32 72, i32 1}
!100 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @queues_ops, !103, !"queues_ops", i1 false, i1 false}
!103 = !{!"../net/mac80211/debugfs.c", i32 590, i32 1}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/mac80211/debugfs.c", i32 581, i32 29}
!106 = !{ptr @misc_ops, !107, !"misc_ops", i1 false, i1 false}
!107 = !{!"../net/mac80211/debugfs.c", i32 591, i32 1}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/mac80211/debugfs.c", i32 558, i32 35}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/mac80211/debugfs.c", i32 562, i32 36}
!112 = !{ptr @reset_ops, !113, !"reset_ops", i1 false, i1 false}
!113 = !{!"../net/mac80211/debugfs.c", i32 446, i32 37}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../net/mac80211/ieee80211_i.h", i32 2153, i32 2}
!116 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @hwflags_ops, !118, !"hwflags_ops", i1 false, i1 false}
!118 = !{!"../net/mac80211/debugfs.c", i32 589, i32 1}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/mac80211/debugfs.c", i32 455, i32 2}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/mac80211/debugfs.c", i32 456, i32 2}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/mac80211/debugfs.c", i32 457, i32 2}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/mac80211/debugfs.c", i32 458, i32 2}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/mac80211/debugfs.c", i32 459, i32 2}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/mac80211/debugfs.c", i32 460, i32 2}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../net/mac80211/debugfs.c", i32 461, i32 2}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../net/mac80211/debugfs.c", i32 462, i32 2}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../net/mac80211/debugfs.c", i32 463, i32 2}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../net/mac80211/debugfs.c", i32 464, i32 2}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../net/mac80211/debugfs.c", i32 465, i32 2}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../net/mac80211/debugfs.c", i32 466, i32 2}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../net/mac80211/debugfs.c", i32 467, i32 2}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../net/mac80211/debugfs.c", i32 468, i32 2}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../net/mac80211/debugfs.c", i32 469, i32 2}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../net/mac80211/debugfs.c", i32 470, i32 2}
!151 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../net/mac80211/debugfs.c", i32 471, i32 2}
!153 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../net/mac80211/debugfs.c", i32 472, i32 2}
!155 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../net/mac80211/debugfs.c", i32 473, i32 2}
!157 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../net/mac80211/debugfs.c", i32 474, i32 2}
!159 = !{ptr @.str.75, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../net/mac80211/debugfs.c", i32 475, i32 2}
!161 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../net/mac80211/debugfs.c", i32 476, i32 2}
!163 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../net/mac80211/debugfs.c", i32 477, i32 2}
!165 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../net/mac80211/debugfs.c", i32 478, i32 2}
!167 = !{ptr @.str.79, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../net/mac80211/debugfs.c", i32 479, i32 2}
!169 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../net/mac80211/debugfs.c", i32 480, i32 2}
!171 = !{ptr @.str.81, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../net/mac80211/debugfs.c", i32 481, i32 2}
!173 = !{ptr @.str.82, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../net/mac80211/debugfs.c", i32 482, i32 2}
!175 = !{ptr @.str.83, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../net/mac80211/debugfs.c", i32 483, i32 2}
!177 = !{ptr @.str.84, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../net/mac80211/debugfs.c", i32 484, i32 2}
!179 = !{ptr @.str.85, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../net/mac80211/debugfs.c", i32 485, i32 2}
!181 = !{ptr @.str.86, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../net/mac80211/debugfs.c", i32 486, i32 2}
!183 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../net/mac80211/debugfs.c", i32 487, i32 2}
!185 = !{ptr @.str.88, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../net/mac80211/debugfs.c", i32 488, i32 2}
!187 = !{ptr @.str.89, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../net/mac80211/debugfs.c", i32 489, i32 2}
!189 = !{ptr @.str.90, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../net/mac80211/debugfs.c", i32 490, i32 2}
!191 = !{ptr @.str.91, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../net/mac80211/debugfs.c", i32 491, i32 2}
!193 = !{ptr @.str.92, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../net/mac80211/debugfs.c", i32 492, i32 2}
!195 = !{ptr @.str.93, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../net/mac80211/debugfs.c", i32 493, i32 2}
!197 = !{ptr @.str.94, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../net/mac80211/debugfs.c", i32 494, i32 2}
!199 = !{ptr @.str.95, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../net/mac80211/debugfs.c", i32 495, i32 2}
!201 = !{ptr @.str.96, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../net/mac80211/debugfs.c", i32 496, i32 2}
!203 = !{ptr @.str.97, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../net/mac80211/debugfs.c", i32 497, i32 2}
!205 = !{ptr @.str.98, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../net/mac80211/debugfs.c", i32 498, i32 2}
!207 = !{ptr @.str.99, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../net/mac80211/debugfs.c", i32 499, i32 2}
!209 = !{ptr @.str.100, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../net/mac80211/debugfs.c", i32 500, i32 2}
!211 = !{ptr @.str.101, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../net/mac80211/debugfs.c", i32 501, i32 2}
!213 = !{ptr @.str.102, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../net/mac80211/debugfs.c", i32 502, i32 2}
!215 = !{ptr @.str.103, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../net/mac80211/debugfs.c", i32 503, i32 2}
!217 = !{ptr @.str.104, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../net/mac80211/debugfs.c", i32 504, i32 2}
!219 = !{ptr @.str.105, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../net/mac80211/debugfs.c", i32 505, i32 2}
!221 = !{ptr @.str.106, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../net/mac80211/debugfs.c", i32 506, i32 2}
!223 = !{ptr @hw_flag_names, !224, !"hw_flag_names", i1 false, i1 false}
!224 = !{!"../net/mac80211/debugfs.c", i32 453, i32 20}
!225 = !{ptr @user_power_ops, !226, !"user_power_ops", i1 false, i1 false}
!226 = !{!"../net/mac80211/debugfs.c", i32 64, i32 1}
!227 = !{ptr @power_ops, !228, !"power_ops", i1 false, i1 false}
!228 = !{!"../net/mac80211/debugfs.c", i32 66, i32 1}
!229 = !{ptr @hw_conf_ops, !230, !"hw_conf_ops", i1 false, i1 false}
!230 = !{!"../net/mac80211/debugfs.c", i32 62, i32 1}
!231 = !{ptr @.str.107, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @force_tx_status_ops, !233, !"force_tx_status_ops", i1 false, i1 false}
!233 = !{!"../net/mac80211/debugfs.c", i32 378, i32 37}
!234 = distinct !{null, !235, !"__already_done", i1 false, i1 false}
!235 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!236 = distinct !{null, !235, !"<string literal>", i1 false, i1 false}
!237 = distinct !{null, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!239 = !{ptr @.str.110, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!241 = !{ptr @aql_enable_ops, !242, !"aql_enable_ops", i1 false, i1 false}
!242 = !{!"../net/mac80211/debugfs.c", i32 327, i32 37}
!243 = !{ptr @aqm_ops, !244, !"aqm_ops", i1 false, i1 false}
!244 = !{!"../net/mac80211/debugfs.c", i32 145, i32 37}
!245 = !{ptr @.str.111, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../net/mac80211/debugfs.c", i32 89, i32 4}
!247 = distinct !{null, !248, !"__warned", i1 false, i1 false}
!248 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!249 = !{ptr @.str.112, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.113, !248, !"<string literal>", i1 false, i1 false}
!251 = distinct !{null, !252, !"__warned", i1 false, i1 false}
!252 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!253 = !{ptr @.str.114, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.115, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../net/mac80211/debugfs.c", i32 135, i32 18}
!256 = !{ptr @.str.116, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../net/mac80211/debugfs.c", i32 137, i32 23}
!258 = !{ptr @.str.117, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../net/mac80211/debugfs.c", i32 139, i32 23}
!260 = !{ptr @airtime_ops, !261, !"airtime_ops", i1 false, i1 false}
!261 = !{!"../net/mac80211/debugfs.c", i32 419, i32 37}
!262 = !{ptr @.str.118, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../net/mac80211/debugfs.c", i32 403, i32 4}
!264 = !{ptr @airtime_flags_ops, !265, !"airtime_flags_ops", i1 false, i1 false}
!265 = !{!"../net/mac80211/debugfs.c", i32 197, i32 37}
!266 = !{ptr @.str.119, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../net/mac80211/debugfs.c", i32 163, i32 36}
!268 = !{ptr @.str.120, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../net/mac80211/debugfs.c", i32 166, i32 36}
!270 = !{ptr @aql_txq_limit_ops, !271, !"aql_txq_limit_ops", i1 false, i1 false}
!271 = !{!"../net/mac80211/debugfs.c", i32 277, i32 37}
!272 = !{ptr @.str.121, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../net/mac80211/debugfs.c", i32 214, i32 4}
!274 = !{ptr @.str.122, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../net/mac80211/debugfs.c", i32 252, i32 18}
!276 = !{ptr @stats_dot11ACKFailureCount_ops, !277, !"stats_dot11ACKFailureCount_ops", i1 false, i1 false}
!277 = !{!"../net/mac80211/debugfs.c", i32 642, i32 1}
!278 = !{ptr @.str.123, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../net/mac80211/driver-ops.h", i32 374, i32 2}
!280 = distinct !{null, !281, !"__already_done", i1 false, i1 false}
!281 = !{!"../net/mac80211/trace.h", i32 700, i32 1}
!282 = !{ptr @.str.124, !281, !"<string literal>", i1 false, i1 false}
!283 = distinct !{null, !281, !"__warned", i1 false, i1 false}
!284 = !{ptr @.str.125, !281, !"<string literal>", i1 false, i1 false}
!285 = distinct !{null, !286, !"__already_done", i1 false, i1 false}
!286 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!287 = !{ptr @.str.126, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @.str.127, !277, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @stats_dot11RTSFailureCount_ops, !290, !"stats_dot11RTSFailureCount_ops", i1 false, i1 false}
!290 = !{!"../net/mac80211/debugfs.c", i32 643, i32 1}
!291 = !{ptr @stats_dot11FCSErrorCount_ops, !292, !"stats_dot11FCSErrorCount_ops", i1 false, i1 false}
!292 = !{!"../net/mac80211/debugfs.c", i32 644, i32 1}
!293 = !{ptr @stats_dot11RTSSuccessCount_ops, !294, !"stats_dot11RTSSuccessCount_ops", i1 false, i1 false}
!294 = !{!"../net/mac80211/debugfs.c", i32 645, i32 1}
!295 = !{!"sp"}
!296 = !{i32 1, !"wchar_size", i32 2}
!297 = !{i32 1, !"min_enum_size", i32 4}
!298 = !{i32 8, !"branch-target-enforcement", i32 0}
!299 = !{i32 8, !"sign-return-address", i32 0}
!300 = !{i32 8, !"sign-return-address-all", i32 0}
!301 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!302 = !{i32 7, !"uwtable", i32 1}
!303 = !{i32 7, !"frame-pointer", i32 2}
!304 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!305 = !{!"auto-init"}
!306 = !{!"branch_weights", i32 1, i32 2000}
!307 = !{i8 0, i8 2}
!308 = !{i64 2152193053, i64 2152193078}
!309 = !{!"branch_weights", i32 2000, i32 1}
!310 = !{i64 4688608}
!311 = !{i64 4688805}
!312 = !{i64 2152174038}
!313 = !{i64 2148505172, i64 2148505177, i64 2148505190, i64 2148505234, i64 2148505268, i64 2148505289}
!314 = !{i64 2149493020}
!315 = !{i64 2149493286}
!316 = !{i64 2159289629}
!317 = !{i64 2159289852}
!318 = !{i64 2149501579}
!319 = !{i64 2149502615}
