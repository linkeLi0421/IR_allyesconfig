; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath10k/txrx.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath10k/txrx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.82 }
%struct.atomic_t = type { i32 }
%union.anon.82 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ath10k = type { %struct.ath_common, ptr, ptr, ptr, %struct.msa_region, [6 x i8], i32, i16, i32, i32, i8, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.anon.162, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.ath10k_bmi, %struct.ath10k_wmi, %struct.ath10k_htc, [4 x i8], %struct.ath10k_htt, %struct.ath10k_hw_params, %struct.ath10k_fw_components, ptr, ptr, ptr, %struct.anon.186, i32, i32, i32, %struct.anon.187, %struct.anon.188, ptr, ptr, %struct.cfg80211_chan_def, ptr, i64, ptr, i8, i32, i8, i32, i32, i8, i8, i32, i8, i8, %struct.completion, i32, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, [2048 x ptr], %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.completion, ptr, %struct.work_struct, %struct.sk_buff_head, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, [41 x %struct.survey_info], i8, %struct.completion, ptr, i32, %struct.ath10k_debug, %struct.anon.193, i32, %struct.anon.194, %struct.anon.195, %struct.anon.196, %struct.ath10k_thermal, %struct.ath10k_wow, %struct.ath10k_per_peer_tx_stats, [36 x i8], %struct.net_device, %struct.napi_struct, %struct.work_struct, %struct.anon.197, i32, ptr, ptr, i32, i32, %struct.ath10k_radar_found_info, %struct.work_struct, %struct.ath10k_bus_params, %struct.completion, i8, i32, i32, i32, [0 x i8], [48 x i8] }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.msa_region = type { i32, i32, ptr }
%struct.anon.162 = type { i32, ptr }
%struct.ath10k_bmi = type { i8 }
%struct.ath10k_wmi = type { i32, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.wait_queue_head, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.idr, i32, i32, [16 x %struct.ath10k_mem_chunk] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ath10k_mem_chunk = type { ptr, i32, i32, i32 }
%struct.ath10k_htc = type { ptr, [9 x %struct.ath10k_htc_ep], %struct.spinlock, %struct.ath10k_htc_ops, [256 x i8], i32, %struct.completion, i32, i32, i8, i32 }
%struct.ath10k_htc_ep = type { ptr, i32, i32, %struct.ath10k_htc_ep_ops, i32, i32, i8, i8, i8, i32, i32, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.ath10k_htc_ep_ops = type { ptr, ptr, ptr }
%struct.ath10k_htc_ops = type { ptr }
%struct.ath10k_htt = type { ptr, i32, %struct.sk_buff_head, i8, i8, %struct.completion, i8, i8, ptr, i32, %struct.anon.121, i32, %struct.spinlock, i32, i32, i32, %struct.idr, %struct.wait_queue_head, %struct.anon.125, i8, %struct.atomic_t, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ieee80211_rx_status, %struct.anon.127, %struct.anon.130, %struct.anon.140, i8, ptr, ptr, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head, [4 x i8] }
%struct.anon.121 = type { ptr, i8, [16 x %struct.hlist_head], %union.anon.122, i32, i32, i32, i32, i32, %struct.anon.123, %struct.anon.124, %struct.timer_list, %struct.spinlock }
%struct.hlist_head = type { ptr }
%union.anon.122 = type { ptr }
%struct.anon.123 = type { ptr, i32 }
%struct.anon.124 = type { i32 }
%struct.anon.125 = type { %union.anon.126, [0 x %struct.htt_tx_done] }
%union.anon.126 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.htt_tx_done = type { i16, i16, i8 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.anon.127 = type { i32, %union.anon.128, i32 }
%union.anon.128 = type { ptr }
%struct.anon.130 = type { i32, %union.anon.131, i32 }
%union.anon.131 = type { ptr }
%struct.anon.140 = type { i8, ptr, i32, i16, i16, i16, i32, i32 }
%struct.ath10k_hw_params = type { i32, i16, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, %struct.ath10k_hw_params_fw, i8, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ath10k_hw_params_fw = type { ptr, ptr, i32, ptr, i32, i32 }
%struct.ath10k_fw_components = type { ptr, ptr, i32, ptr, ptr, i32, %struct.ath10k_fw_file }
%struct.ath10k_fw_file = type { ptr, [32 x i8], [1 x i32], i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.anon.186 = type { i32, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, [32 x i8] }
%struct.anon.187 = type { %struct.completion, %struct.completion, %struct.completion, %struct.delayed_work, i32, i8, i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.anon.188 = type { [6 x %struct.ieee80211_supported_band] }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sk_buff_head = type { %union.anon, i32, %struct.spinlock }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.ath10k_debug = type { ptr, %struct.ath10k_fw_stats, %struct.completion, i8, i32, i32, %struct.delayed_work, %struct.ath10k_dfs_stats, %struct.ath_dfs_pool_stats, ptr, ptr, %struct.completion, i64, i32, i32, i32, ptr, i32, i8 }
%struct.ath10k_fw_stats = type { i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.ath10k_dfs_stats = type { i32, i32, i32, i32, i32 }
%struct.ath_dfs_pool_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.193 = type { ptr, i32, %struct.ath10k_spec_scan }
%struct.ath10k_spec_scan = type { i8, i8 }
%struct.anon.194 = type { ptr }
%struct.anon.195 = type { %struct.ath10k_fw_components, i8 }
%struct.anon.196 = type { i32, i32, i32, i32 }
%struct.ath10k_thermal = type { ptr, %struct.completion, i32, i32, i32 }
%struct.ath10k_wow = type { i32, %struct.completion, %struct.wiphy_wowlan_support }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.ath10k_per_peer_tx_stats = type { i32, i32, i32, i8, i8, i16, i16, i16, i16, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.103, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.103 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.anon.197 = type { i16, i32, i32, i32, i32, i32 }
%struct.ath10k_radar_found_info = type { i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath10k_bus_params = type { i32, i32, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.sk_buff = type { %union.anon.0, %union.anon.104, %union.anon.105, [48 x i8], %union.anon.106, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.108, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.104 = type { ptr }
%union.anon.105 = type { i64 }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { i32, ptr }
%union.anon.108 = type { %struct.anon.109 }
%struct.anon.109 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.110, i32, i32, i32, i16, i16, %union.anon.112, i32, %union.anon.113, %union.anon.114, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.110 = type { i32 }
%union.anon.112 = type { i32 }
%union.anon.113 = type { i32 }
%union.anon.114 = type { i16 }
%struct.ieee80211_txq = type { ptr, ptr, i8, i8, [2 x i8], [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ath10k_peer = type { %struct.list_head, ptr, ptr, i8, i32, [6 x i8], [64 x i32], [4 x ptr], [19 x %union.htt_rx_pn_t], [19 x i8], [19 x %union.htt_rx_pn_t], [19 x i32], [2 x %struct.anon.192] }
%union.htt_rx_pn_t = type { [2 x i64] }
%struct.anon.192 = type { i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.htt_peer_map_event = type { i8, i16, [6 x i8] }

@ath10k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"htt tx completion msdu_id %u status %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"warning: msdu_id %d too big, ignoring\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"received tx completion for invalid msdu_id: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/ath/ath10k/txrx.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"received htt peer map event with idx out of bounds: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"htt peer map vdev %d peer %pM id %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"received htt peer unmap event with idx out of bounds: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"peer-unmap-event: unknown peer id %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"htt peer unmap vdev %d peer %pM id %d\0A\00", [57 x i8] zeroinitializer }, align 32
@__tracepoint_ath10k_log_dbg = external dso_local global %struct.tracepoint, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"completed old offchannel frame\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"completed offchannel skb %pK\0A\00", [34 x i8] zeroinitializer }, align 32
@__tracepoint_ath10k_txrx_tx_unref = external dso_local global %struct.tracepoint, align 4
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/ath/ath10k/trace.h\00", [56 x i8] zeroinitializer }, align 32
@trace_ath10k_txrx_tx_unref.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 55, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 60, i32 19 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 68, i32 19 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 142, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 212, i32 8 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 230, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 248, i32 8 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 256, i32 19 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 261, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 695, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 723, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 31, i32 19 }
@___asan_gen_.57 = private constant [42 x i8] c"../drivers/net/wireless/ath/ath10k/txrx.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 38, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [43 x i8] c"../drivers/net/wireless/ath/ath10k/trace.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 329, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 108, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_txrx_tx_unref(ptr noundef %htt, ptr nocapture noundef readonly %tx_done) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %dev2 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %4 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_txrx_tx_unref, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !47

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %tx_done to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tx_done, align 2
  %conv = zext i16 %6 to i32
  %status = getelementptr inbounds %struct.htt_tx_done, ptr %tx_done, i32 0, i32 1
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %status, align 2
  %conv3 = zext i16 %8 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %conv3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %9 = ptrtoint ptr %tx_done to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tx_done, align 2
  %conv5 = zext i16 %10 to i32
  %max_num_pending_tx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 13
  %11 = ptrtoint ptr %max_num_pending_tx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_num_pending_tx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv5)
  %cmp.not = icmp sgt i32 %12, %conv5
  br i1 %cmp.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %conv5) #6
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %tx_lock = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #6
  %pending_tx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 16
  %13 = ptrtoint ptr %tx_done to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tx_done, align 2
  %conv12 = zext i16 %14 to i32
  %call13 = tail call ptr @idr_find(ptr noundef %pending_tx, i32 noundef %conv12) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %tx_done to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tx_done, align 2
  %conv17 = zext i16 %16 to i32
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %conv17) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #6
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %17 = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 3, i32 8
  %txq21 = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 3, i32 22
  %18 = ptrtoint ptr %txq21 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load ptr, ptr %txq21, align 1
  %tobool22.not = icmp eq ptr %19, null
  br i1 %tobool22.not, label %if.end19.if.end24_crit_edge, label %if.then23

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %num_fw_queued = getelementptr inbounds %struct.ieee80211_txq, ptr %19, i32 1, i32 2
  %20 = ptrtoint ptr %num_fw_queued to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_fw_queued, align 4
  %dec = add i32 %21, -1
  store i32 %dec, ptr %num_fw_queued, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19.if.end24_crit_edge
  %flags25 = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 3, i32 12
  %22 = ptrtoint ptr %flags25 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flags25, align 1
  %24 = ptrtoint ptr %tx_done to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tx_done, align 2
  tail call void @ath10k_htt_tx_free_msdu_id(ptr noundef %htt, i16 noundef zeroext %25) #6
  tail call void @ath10k_htt_tx_dec_pending(ptr noundef %htt) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #6
  %26 = tail call i32 @llvm.read_register.i32(metadata !37) #6
  %and.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !48
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %if.end24.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end24.rcu_read_lock.exit_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end24
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end24.rcu_read_lock.exit_crit_edge
  br i1 %tobool22.not, label %rcu_read_lock.exit.if.end37_crit_edge, label %land.lhs.true

rcu_read_lock.exit.if.end37_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %sta = getelementptr inbounds %struct.ieee80211_txq, ptr %19, i32 0, i32 1
  %30 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sta, align 4
  %tobool29.not = icmp eq ptr %31, null
  br i1 %tobool29.not, label %land.lhs.true.if.end37_crit_edge, label %land.lhs.true30

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.lhs.true30:                                  ; preds = %land.lhs.true
  %airtime_est = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 3, i32 16
  %32 = ptrtoint ptr %airtime_est to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %airtime_est, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool32.not = icmp eq i16 %33, 0
  br i1 %tobool32.not, label %land.lhs.true30.if.end37_crit_edge, label %if.then33

land.lhs.true30.if.end37_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then33:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  %conv31 = zext i16 %33 to i32
  %tid = getelementptr inbounds %struct.ieee80211_txq, ptr %19, i32 0, i32 2
  %34 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tid, align 4
  tail call void @ieee80211_sta_register_airtime(ptr noundef nonnull %31, i8 noundef zeroext %35, i32 noundef %conv31, i32 noundef 0) #6
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %land.lhs.true30.if.end37_crit_edge, %land.lhs.true.if.end37_crit_edge, %rcu_read_lock.exit.if.end37_crit_edge
  %call.i175 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i175, label %if.end37.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i178

if.end37.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i178:                               ; preds = %if.end37
  %call1.i176 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i176)
  %tobool.not.i177 = icmp eq i32 %call1.i176, 0
  br i1 %tobool.not.i177, label %land.lhs.true.i178.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i180

land.lhs.true.i178.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i178
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i180:                              ; preds = %land.lhs.true.i178
  %.b4.i179 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i179, label %land.lhs.true2.i180.rcu_read_unlock.exit_crit_edge, label %if.then.i181

land.lhs.true2.i180.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i180
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i181:                                     ; preds = %land.lhs.true2.i180
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i181, %land.lhs.true2.i180.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i178.rcu_read_unlock.exit_crit_edge, %if.end37.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !49
  %36 = tail call i32 @llvm.read_register.i32(metadata !37) #6
  %and.i.i.i.i.i182 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i182 to ptr
  %preempt_count.i.i.i.i183 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i183 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i183, align 4
  %sub.i.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i183, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  %dev_type = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 136, i32 1
  %40 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp38.not = icmp eq i32 %41, 1
  br i1 %cmp38.not, label %rcu_read_unlock.exit.if.end41_crit_edge, label %if.then40

rcu_read_unlock.exit.if.end41_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then40:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %17, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 6
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %43, i32 noundef %45, i32 noundef 1, i32 noundef 0) #6
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %rcu_read_unlock.exit.if.end41_crit_edge
  %46 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %htt, align 8
  tail call fastcc void @ath10k_report_offchan_tx(ptr noundef %47, ptr noundef nonnull %call13)
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 3
  %48 = call ptr @memset(ptr %17, i32 0, i32 40)
  %49 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %17, align 8
  %50 = ptrtoint ptr %tx_done to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %tx_done, align 2
  tail call fastcc void @trace_ath10k_txrx_tx_unref(ptr noundef %1, i16 noundef zeroext %51)
  %52 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cb.i, align 8
  %and46 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %54 = and i8 %23, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool51.not = icmp eq i8 %54, 0
  %or.cond = select i1 %tobool47.not, i1 %tobool51.not, i1 false
  br i1 %or.cond, label %if.then52, label %if.end41.if.end54_crit_edge

if.end41.if.end54_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then52:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %53, 512
  %55 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or, ptr %cb.i, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end41.if.end54_crit_edge
  %status55 = getelementptr inbounds %struct.htt_tx_done, ptr %tx_done, i32 0, i32 1
  %56 = ptrtoint ptr %status55 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %status55, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %57)
  %cmp57 = icmp eq i16 %57, 2
  br i1 %cmp57, label %if.then59, label %if.end54.if.end62_crit_edge

if.end54.if.end62_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cb.i, align 8
  %and61 = and i32 %59, -513
  store i32 %and61, ptr %cb.i, align 8
  %60 = ptrtoint ptr %status55 to i32
  call void @__asan_load2_noabort(i32 %60)
  %.pr = load i16, ptr %status55, align 2
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.end54.if.end62_crit_edge
  %61 = phi i16 [ %.pr, %if.then59 ], [ %57, %if.end54.if.end62_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %61)
  %cmp65 = icmp eq i16 %61, 1
  br i1 %cmp65, label %land.lhs.true67, label %if.end62.if.end78_crit_edge

if.end62.if.end78_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

land.lhs.true67:                                  ; preds = %if.end62
  %62 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cb.i, align 8
  %and69 = and i32 %63, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  %or.cond173 = select i1 %tobool70.not, i1 %tobool51.not, i1 false
  br i1 %or.cond173, label %land.lhs.true67.if.end78_crit_edge, label %if.then75

land.lhs.true67.if.end78_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then75:                                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #8
  %or77 = or i32 %63, -2147483648
  %64 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or77, ptr %cb.i, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %land.lhs.true67.if.end78_crit_edge, %if.end62.if.end78_crit_edge
  %65 = ptrtoint ptr %status55 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %status55, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %66)
  %cmp81 = icmp eq i16 %66, 3
  br i1 %cmp81, label %if.then83, label %if.end78.if.end97_crit_edge

if.end78.if.end97_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then83:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cb.i, align 8
  %and85 = and i32 %68, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  %or.cond174 = select i1 %tobool86.not, i1 %tobool51.not, i1 false
  %storemerge.v = select i1 %or.cond174, i32 -513, i32 2147483647
  %storemerge = and i32 %68, %storemerge.v
  %69 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %storemerge, ptr %cb.i, align 8
  %70 = ptrtoint ptr %status55 to i32
  call void @__asan_load2_noabort(i32 %70)
  %.pr185 = load i16, ptr %status55, align 2
  br label %if.end97

if.end97:                                         ; preds = %if.then83, %if.end78.if.end97_crit_edge
  %71 = phi i16 [ %.pr185, %if.then83 ], [ %66, %if.end78.if.end97_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %71)
  %cmp100 = icmp eq i16 %71, 1
  br i1 %cmp100, label %land.lhs.true102, label %if.end97.if.end109_crit_edge

if.end97.if.end109_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

land.lhs.true102:                                 ; preds = %if.end97
  %ack_rssi = getelementptr inbounds %struct.htt_tx_done, ptr %tx_done, i32 0, i32 2
  %72 = ptrtoint ptr %ack_rssi to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %ack_rssi, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %73)
  %cmp104.not = icmp eq i8 %73, -128
  br i1 %cmp104.not, label %land.lhs.true102.if.end109_crit_edge, label %if.then106

land.lhs.true102.if.end109_crit_edge:             ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

if.then106:                                       ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #8
  %conv103 = zext i8 %73 to i32
  %add = add nsw i32 %conv103, -95
  %ack_signal = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 3, i32 20
  %74 = ptrtoint ptr %ack_signal to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add, ptr %ack_signal, align 4
  %is_valid_ack_signal = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 3, i32 30
  %75 = ptrtoint ptr %is_valid_ack_signal to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %is_valid_ack_signal, align 2
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %land.lhs.true102.if.end109_crit_edge, %if.end97.if.end109_crit_edge
  %76 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %htt, align 8
  %hw = getelementptr inbounds %struct.ath10k, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_tx_status(ptr noundef %79, ptr noundef nonnull %call13) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %if.then15, %if.then7
  %retval.0 = phi i32 [ -22, %if.then7 ], [ 0, %if.end109 ], [ -2, %if.then15 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath10k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_htt_tx_free_msdu_id(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_htt_tx_dec_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_register_airtime(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_report_offchan_tx(ptr noundef %ar, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i, align 8
  %and = and i32 %1, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !50

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call zeroext i1 @ath10k_mac_tx_frm_has_freq(ptr noundef %ar) #6
  br i1 %call4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #6
  %offchan_tx_skb = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 100
  %2 = ptrtoint ptr %offchan_tx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %offchan_tx_skb, align 8
  %cmp.not = icmp eq ptr %3, %skb
  br i1 %cmp.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.12) #6
  br label %out

if.end8:                                          ; preds = %if.end6
  %offchan_tx_completed = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 99
  tail call void @complete(ptr noundef %offchan_tx_completed) #6
  %4 = ptrtoint ptr %offchan_tx_skb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %offchan_tx_skb, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %5 = load i32, ptr @ath10k_debug_mask, align 4
  %and10 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %if.end8.if.then13_crit_edge

if.end8.if.then13_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_report_offchan_tx, %if.then13)) #6
          to label %out [label %if.then13], !srcloc !47

if.then13:                                        ; preds = %lor.lhs.false, %if.end8.if.then13_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.13, ptr noundef %skb) #6
  br label %out

out:                                              ; preds = %if.then13, %lor.lhs.false, %if.then7
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath10k_txrx_tx_unref(ptr noundef %ar, i16 noundef zeroext %msdu_id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_txrx_tx_unref, i32 0, i32 1), ptr blockaddress(@trace_ath10k_txrx_tx_unref, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !47

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !37) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !50

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !37) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !51
  %call42 = tail call i32 @__traceiter_ath10k_txrx_tx_unref(ptr noundef null, ptr noundef %ar, i16 noundef zeroext %msdu_id) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !52
  %13 = tail call i32 @llvm.read_register.i32(metadata !37) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !37) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !50

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !37) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_txrx_tx_unref, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_txrx_tx_unref, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ath10k_txrx_tx_unref.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_ath10k_txrx_tx_unref.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 352, ptr noundef nonnull @.str.15) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !54
  %31 = tail call i32 @llvm.read_register.i32(metadata !37) #6
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
declare dso_local void @ieee80211_tx_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath10k_peer_find(ptr noundef %ar, i32 noundef %vdev_id, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !55

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 142, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %peers = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 84
  %1 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %1)
  %peer.049 = load ptr, ptr %peers, align 8
  %cmp26.not50 = icmp eq ptr %peer.049, %peers
  br i1 %cmp26.not50, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %add.ptr1.i = getelementptr i8, ptr %addr, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %peer.051 = phi ptr [ %peer.049, %for.body.lr.ph ], [ %peer.0, %for.inc.for.body_crit_edge ]
  %vdev_id29 = getelementptr inbounds %struct.ath10k_peer, ptr %peer.051, i32 0, i32 4
  %2 = ptrtoint ptr %vdev_id29 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vdev_id29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %vdev_id)
  %cmp30.not = icmp eq i32 %3, %vdev_id
  br i1 %cmp30.not, label %if.end32, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end32:                                         ; preds = %for.body
  %addr33 = getelementptr inbounds %struct.ath10k_peer, ptr %peer.051, i32 0, i32 5
  %4 = ptrtoint ptr %addr33 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr33, align 4
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %7, %5
  %add.ptr.i = getelementptr %struct.ath10k_peer, ptr %peer.051, i32 0, i32 5, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %11, %9
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end32.cleanup_crit_edge, label %if.end32.for.inc_crit_edge

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %if.end32.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %12 = ptrtoint ptr %peer.051 to i32
  call void @__asan_load4_noabort(i32 %12)
  %peer.0 = load ptr, ptr %peer.051, align 8
  %cmp26.not = icmp eq ptr %peer.0, %peers
  br i1 %cmp26.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %peer.051, %if.end32.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath10k_peer_find_by_id(ptr noundef %ar, i32 noundef %peer_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %peer_id)
  %cmp = icmp ugt i32 %peer_id, 2047
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body.if.end18_crit_edge, label %land.rhs

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.rhs:                                         ; preds = %do.body
  %dep_map = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.not = icmp eq i32 %call.i, 0
  br i1 %cmp1.not, label %do.end, label %land.rhs.if.end18_crit_edge, !prof !55

land.rhs.if.end18_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 163, i32 noundef 9, ptr noundef null) #6
  br label %if.end18

if.end18:                                         ; preds = %do.end, %land.rhs.if.end18_crit_edge, %do.body.if.end18_crit_edge
  %peers = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 84
  %div3.i = lshr i32 %peer_id, 5
  %and.i = and i32 %peer_id, 31
  %1 = shl nuw i32 1, %and.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end18
  %peer.0.in = phi ptr [ %peers, %if.end18 ], [ %peer.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %peer.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %peer.0 = load ptr, ptr %peer.0.in, align 8
  %cmp29.not = icmp eq ptr %peer.0, %peers
  br i1 %cmp29.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %peer_ids = getelementptr inbounds %struct.ath10k_peer, ptr %peer.0, i32 0, i32 6
  %arrayidx.i = getelementptr i32, ptr %peer_ids, i32 %div3.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i, align 4
  %5 = and i32 %4, %1
  %tobool33.not = icmp eq i32 %5, 0
  br i1 %tobool33.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ], [ %peer.0, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_wait_for_peer_created(ptr noundef %ar, i32 noundef %vdev_id, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ath10k_wait_for_peer_common(ptr noundef %ar, i32 noundef %vdev_id, ptr noundef %addr, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_wait_for_peer_common(ptr noundef %ar, i32 noundef %vdev_id, ptr nocapture noundef readonly %addr, i1 noundef zeroext %expect_mapped) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 186) #6
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !55

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 142, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %peers.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 84
  %1 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %peer.049.i = load ptr, ptr %peers.i, align 8
  %cmp26.not50.i = icmp eq ptr %peer.049.i, %peers.i
  br i1 %cmp26.not50.i, label %if.end.i.ath10k_peer_find.exit.thr_comm_crit_edge, label %for.body.lr.ph.i

if.end.i.ath10k_peer_find.exit.thr_comm_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_peer_find.exit.thr_comm

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %add.ptr1.i.i = getelementptr i8, ptr %addr, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %peer.051.i = phi ptr [ %peer.049.i, %for.body.lr.ph.i ], [ %peer.0.i, %for.inc.i.for.body.i_crit_edge ]
  %vdev_id29.i = getelementptr inbounds %struct.ath10k_peer, ptr %peer.051.i, i32 0, i32 4
  %2 = ptrtoint ptr %vdev_id29.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vdev_id29.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %vdev_id)
  %cmp30.not.i = icmp eq i32 %3, %vdev_id
  br i1 %cmp30.not.i, label %if.end32.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end32.i:                                       ; preds = %for.body.i
  %addr33.i = getelementptr inbounds %struct.ath10k_peer, ptr %peer.051.i, i32 0, i32 5
  %4 = ptrtoint ptr %addr33.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr33.i, align 4
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  %xor.i.i = xor i32 %7, %5
  %add.ptr.i.i = getelementptr %struct.ath10k_peer, ptr %peer.051.i, i32 0, i32 5, i32 4
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
  br i1 %cmp.i.i, label %ath10k_peer_find.exit, label %if.end32.i.for.inc.i_crit_edge

if.end32.i.for.inc.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end32.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %12 = ptrtoint ptr %peer.051.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %peer.0.i = load ptr, ptr %peer.051.i, align 8
  %cmp26.not.i = icmp eq ptr %peer.0.i, %peers.i
  br i1 %cmp26.not.i, label %for.inc.i.ath10k_peer_find.exit.thr_comm_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.ath10k_peer_find.exit.thr_comm_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_peer_find.exit.thr_comm

ath10k_peer_find.exit.thr_comm:                   ; preds = %for.inc.i.ath10k_peer_find.exit.thr_comm_crit_edge, %if.end.i.ath10k_peer_find.exit.thr_comm_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #6
  br i1 %expect_mapped, label %ath10k_peer_find.exit.thr_comm.lor.rhs_crit_edge, label %ath10k_peer_find.exit.thr_comm.if.end74.thread_crit_edge

ath10k_peer_find.exit.thr_comm.if.end74.thread_crit_edge: ; preds = %ath10k_peer_find.exit.thr_comm
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74.thread

ath10k_peer_find.exit.thr_comm.lor.rhs_crit_edge: ; preds = %ath10k_peer_find.exit.thr_comm
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

ath10k_peer_find.exit:                            ; preds = %if.end32.i
  %tobool = icmp eq ptr %peer.051.i, null
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #6
  %cmp = xor i1 %tobool, %expect_mapped
  br i1 %cmp, label %ath10k_peer_find.exit.if.end74.thread_crit_edge, label %ath10k_peer_find.exit.lor.rhs_crit_edge

ath10k_peer_find.exit.lor.rhs_crit_edge:          ; preds = %ath10k_peer_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

ath10k_peer_find.exit.if.end74.thread_crit_edge:  ; preds = %ath10k_peer_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74.thread

lor.rhs:                                          ; preds = %ath10k_peer_find.exit.lor.rhs_crit_edge, %ath10k_peer_find.exit.thr_comm.lor.rhs_crit_edge
  %dev_flags = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 66
  %13 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %dev_flags, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.not = icmp eq i32 %15, 0
  br i1 %tobool12.not, label %if.then27, label %lor.rhs.if.end74.thread_crit_edge

lor.rhs.if.end74.thread_crit_edge:                ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74.thread

if.then27:                                        ; preds = %lor.rhs
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %16 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %peer_mapping_wq = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 86
  %dep_map.i104 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82, i32 0, i32 0, i32 4
  %add.ptr1.i.i113 = getelementptr i8, ptr %addr, i32 4
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then27
  %__ret28.0 = phi i32 [ 300, %if.then27 ], [ %call71, %cleanup ]
  %call29 = call i32 @prepare_to_wait_event(ptr noundef %peer_mapping_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  call void @_raw_spin_lock_bh(ptr noundef %data_lock) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %17 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i103 = icmp eq i32 %17, 0
  br i1 %tobool.not.i103, label %for.cond.if.end.i112_crit_edge, label %land.rhs.i107

for.cond.if.end.i112_crit_edge:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i112

land.rhs.i107:                                    ; preds = %for.cond
  %call.i.i105 = call i32 @lock_is_held_type(ptr noundef %dep_map.i104, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i105)
  %cmp.not.i106 = icmp eq i32 %call.i.i105, 0
  br i1 %cmp.not.i106, label %do.end.i108, label %land.rhs.i107.if.end.i112_crit_edge, !prof !55

land.rhs.i107.if.end.i112_crit_edge:              ; preds = %land.rhs.i107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i112

do.end.i108:                                      ; preds = %land.rhs.i107
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 142, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i112

if.end.i112:                                      ; preds = %do.end.i108, %land.rhs.i107.if.end.i112_crit_edge, %for.cond.if.end.i112_crit_edge
  %18 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %peer.049.i110 = load ptr, ptr %peers.i, align 8
  %cmp26.not50.i111 = icmp eq ptr %peer.049.i110, %peers.i
  br i1 %cmp26.not50.i111, label %if.end.i112.ath10k_peer_find.exit131.thr_comm_crit_edge, label %if.end.i112.for.body.i118_crit_edge

if.end.i112.for.body.i118_crit_edge:              ; preds = %if.end.i112
  br label %for.body.i118

if.end.i112.ath10k_peer_find.exit131.thr_comm_crit_edge: ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_peer_find.exit131.thr_comm

for.body.i118:                                    ; preds = %for.inc.i129.for.body.i118_crit_edge, %if.end.i112.for.body.i118_crit_edge
  %peer.051.i115 = phi ptr [ %peer.0.i127, %for.inc.i129.for.body.i118_crit_edge ], [ %peer.049.i110, %if.end.i112.for.body.i118_crit_edge ]
  %vdev_id29.i116 = getelementptr inbounds %struct.ath10k_peer, ptr %peer.051.i115, i32 0, i32 4
  %19 = ptrtoint ptr %vdev_id29.i116 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vdev_id29.i116, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %vdev_id)
  %cmp30.not.i117 = icmp eq i32 %20, %vdev_id
  br i1 %cmp30.not.i117, label %if.end32.i126, label %for.body.i118.for.inc.i129_crit_edge

for.body.i118.for.inc.i129_crit_edge:             ; preds = %for.body.i118
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i129

if.end32.i126:                                    ; preds = %for.body.i118
  %addr33.i119 = getelementptr inbounds %struct.ath10k_peer, ptr %peer.051.i115, i32 0, i32 5
  %21 = ptrtoint ptr %addr33.i119 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr33.i119, align 4
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr, align 4
  %xor.i.i120 = xor i32 %24, %22
  %add.ptr.i.i121 = getelementptr %struct.ath10k_peer, ptr %peer.051.i115, i32 0, i32 5, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i121 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i.i121, align 2
  %27 = ptrtoint ptr %add.ptr1.i.i113 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr1.i.i113, align 2
  %xor37.i.i122 = xor i16 %28, %26
  %xor3.i.i123 = zext i16 %xor37.i.i122 to i32
  %or.i.i124 = or i32 %xor.i.i120, %xor3.i.i123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i124)
  %cmp.i.i125 = icmp eq i32 %or.i.i124, 0
  br i1 %cmp.i.i125, label %ath10k_peer_find.exit131, label %if.end32.i126.for.inc.i129_crit_edge

if.end32.i126.for.inc.i129_crit_edge:             ; preds = %if.end32.i126
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i129

for.inc.i129:                                     ; preds = %if.end32.i126.for.inc.i129_crit_edge, %for.body.i118.for.inc.i129_crit_edge
  %29 = ptrtoint ptr %peer.051.i115 to i32
  call void @__asan_load4_noabort(i32 %29)
  %peer.0.i127 = load ptr, ptr %peer.051.i115, align 8
  %cmp26.not.i128 = icmp eq ptr %peer.0.i127, %peers.i
  br i1 %cmp26.not.i128, label %for.inc.i129.ath10k_peer_find.exit131.thr_comm_crit_edge, label %for.inc.i129.for.body.i118_crit_edge

for.inc.i129.for.body.i118_crit_edge:             ; preds = %for.inc.i129
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i118

for.inc.i129.ath10k_peer_find.exit131.thr_comm_crit_edge: ; preds = %for.inc.i129
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_peer_find.exit131.thr_comm

ath10k_peer_find.exit131.thr_comm:                ; preds = %for.inc.i129.ath10k_peer_find.exit131.thr_comm_crit_edge, %if.end.i112.ath10k_peer_find.exit131.thr_comm_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #6
  br i1 %expect_mapped, label %ath10k_peer_find.exit131.thr_comm.lor.end50_crit_edge, label %ath10k_peer_find.exit131.thr_comm.if.end74.thread144_crit_edge

ath10k_peer_find.exit131.thr_comm.if.end74.thread144_crit_edge: ; preds = %ath10k_peer_find.exit131.thr_comm
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74.thread144

ath10k_peer_find.exit131.thr_comm.lor.end50_crit_edge: ; preds = %ath10k_peer_find.exit131.thr_comm
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end50

ath10k_peer_find.exit131:                         ; preds = %if.end32.i126
  %tobool34 = icmp eq ptr %peer.051.i115, null
  call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #6
  %cmp44 = xor i1 %tobool34, %expect_mapped
  br i1 %cmp44, label %ath10k_peer_find.exit131.if.end74.thread144_crit_edge, label %ath10k_peer_find.exit131.lor.end50_crit_edge

ath10k_peer_find.exit131.lor.end50_crit_edge:     ; preds = %ath10k_peer_find.exit131
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end50

ath10k_peer_find.exit131.if.end74.thread144_crit_edge: ; preds = %ath10k_peer_find.exit131
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74.thread144

lor.end50:                                        ; preds = %ath10k_peer_find.exit131.lor.end50_crit_edge, %ath10k_peer_find.exit131.thr_comm.lor.end50_crit_edge
  %30 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %dev_flags, align 4
  %32 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool49.not = icmp eq i32 %32, 0
  br i1 %tobool49.not, label %33, label %lor.end50.if.end74.thread144_crit_edge

lor.end50.if.end74.thread144_crit_edge:           ; preds = %lor.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74.thread144

if.end74.thread144:                               ; preds = %lor.end50.if.end74.thread144_crit_edge, %ath10k_peer_find.exit131.if.end74.thread144_crit_edge, %ath10k_peer_find.exit131.thr_comm.if.end74.thread144_crit_edge
  call void @finish_wait(ptr noundef %peer_mapping_wq, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end74.thread

33:                                               ; preds = %lor.end50
  %tobool64.not = icmp eq i32 %__ret28.0, 0
  br i1 %tobool64.not, label %if.end74, label %cleanup

cleanup:                                          ; preds = %33
  call void @__sanitizer_cov_trace_pc() #8
  %call71 = call i32 @schedule_timeout(i32 noundef %__ret28.0) #6
  br label %for.cond

if.end74:                                         ; preds = %33
  call void @__sanitizer_cov_trace_pc() #8
  call void @finish_wait(ptr noundef %peer_mapping_wq, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end74.thread

if.end74.thread:                                  ; preds = %if.end74, %if.end74.thread144, %lor.rhs.if.end74.thread_crit_edge, %ath10k_peer_find.exit.if.end74.thread_crit_edge, %ath10k_peer_find.exit.thr_comm.if.end74.thread_crit_edge
  %34 = phi i32 [ 0, %if.end74.thread144 ], [ 0, %lor.rhs.if.end74.thread_crit_edge ], [ 0, %ath10k_peer_find.exit.if.end74.thread_crit_edge ], [ 0, %ath10k_peer_find.exit.thr_comm.if.end74.thread_crit_edge ], [ -110, %if.end74 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_wait_for_peer_deleted(ptr noundef %ar, i32 noundef %vdev_id, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ath10k_wait_for_peer_common(ptr noundef %ar, i32 noundef %vdev_id, ptr noundef %addr, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_peer_map_event(ptr nocapture noundef readonly %htt, ptr noundef %ev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %peer_id = getelementptr inbounds %struct.htt_peer_map_event, ptr %ev, i32 0, i32 1
  %2 = ptrtoint ptr %peer_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %peer_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %3)
  %cmp = icmp ugt i16 %3, 2047
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %conv) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #6
  %4 = ptrtoint ptr %ev to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ev, align 2
  %conv5 = zext i8 %5 to i32
  %addr = getelementptr inbounds %struct.htt_peer_map_event, ptr %ev, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 82, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !55

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 142, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %peers.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 84
  %7 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %peer.049.i = load ptr, ptr %peers.i, align 8
  %cmp26.not50.i = icmp eq ptr %peer.049.i, %peers.i
  br i1 %cmp26.not50.i, label %if.end.i.if.then6_crit_edge, label %for.body.lr.ph.i

if.end.i.if.then6_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %add.ptr1.i.i = getelementptr %struct.htt_peer_map_event, ptr %ev, i32 0, i32 2, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %peer.051.i = phi ptr [ %peer.049.i, %for.body.lr.ph.i ], [ %peer.0.i, %for.inc.i.for.body.i_crit_edge ]
  %vdev_id29.i = getelementptr inbounds %struct.ath10k_peer, ptr %peer.051.i, i32 0, i32 4
  %8 = ptrtoint ptr %vdev_id29.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vdev_id29.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv5)
  %cmp30.not.i = icmp eq i32 %9, %conv5
  br i1 %cmp30.not.i, label %if.end32.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end32.i:                                       ; preds = %for.body.i
  %addr33.i = getelementptr inbounds %struct.ath10k_peer, ptr %peer.051.i, i32 0, i32 5
  %10 = ptrtoint ptr %addr33.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr33.i, align 4
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr, align 4
  %xor.i.i = xor i32 %13, %11
  %add.ptr.i.i = getelementptr %struct.ath10k_peer, ptr %peer.051.i, i32 0, i32 5, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i, align 2
  %16 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %17, %15
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %ath10k_peer_find.exit, label %if.end32.i.for.inc.i_crit_edge

if.end32.i.for.inc.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end32.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %18 = ptrtoint ptr %peer.051.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %peer.0.i = load ptr, ptr %peer.051.i, align 8
  %cmp26.not.i = icmp eq ptr %peer.0.i, %peers.i
  br i1 %cmp26.not.i, label %for.inc.i.if.then6_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.then6_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

ath10k_peer_find.exit:                            ; preds = %if.end32.i
  %tobool.not = icmp eq ptr %peer.051.i, null
  br i1 %tobool.not, label %ath10k_peer_find.exit.if.then6_crit_edge, label %ath10k_peer_find.exit.do.body_crit_edge

ath10k_peer_find.exit.do.body_crit_edge:          ; preds = %ath10k_peer_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

ath10k_peer_find.exit.if.then6_crit_edge:         ; preds = %ath10k_peer_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.then6:                                         ; preds = %ath10k_peer_find.exit.if.then6_crit_edge, %for.inc.i.if.then6_crit_edge, %if.end.i.if.then6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 2848, i32 noundef 1032) #9
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.then6.exit_crit_edge, label %if.end10

if.then6.exit_crit_edge:                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end10:                                         ; preds = %if.then6
  %20 = ptrtoint ptr %ev to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ev, align 2
  %conv12 = zext i8 %21 to i32
  %vdev_id13 = getelementptr inbounds %struct.ath10k_peer, ptr %call7.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %vdev_id13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv12, ptr %vdev_id13, align 4
  %addr14 = getelementptr inbounds %struct.ath10k_peer, ptr %call7.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr, align 4
  %25 = ptrtoint ptr %addr14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %addr14, align 8
  %add.ptr.i = getelementptr %struct.htt_peer_map_event, ptr %ev, i32 0, i32 2, i32 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ath10k_peer, ptr %call7.i.i, i32 0, i32 5, i32 4
  %28 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %add.ptr1.i, align 4
  %29 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %peers.i, align 4
  %call.i.i100 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %peers.i, ptr noundef %30) #6
  br i1 %call.i.i100, label %if.end.i.i, label %if.end10.list_add.exit_crit_edge

if.end10.list_add.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %peers.i, ptr %prev3.i.i, align 4
  %34 = ptrtoint ptr %peers.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call7.i.i, ptr %peers.i, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end10.list_add.exit_crit_edge
  %peer_mapping_wq = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 86
  tail call void @__wake_up(ptr noundef %peer_mapping_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %do.body

do.body:                                          ; preds = %list_add.exit, %ath10k_peer_find.exit.do.body_crit_edge
  %peer.0 = phi ptr [ %peer.051.i, %ath10k_peer_find.exit.do.body_crit_edge ], [ %call7.i.i, %list_add.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %35 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %lor.lhs.false, label %do.body.if.then22_crit_edge

do.body.if.then22_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_peer_map_event, %if.then22)) #6
          to label %do.end [label %if.then22], !srcloc !47

if.then22:                                        ; preds = %lor.lhs.false, %do.body.if.then22_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %ev to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ev, align 2
  %conv24 = zext i8 %37 to i32
  %38 = ptrtoint ptr %peer_id to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %peer_id, align 2
  %conv28 = zext i16 %39 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.5, i32 noundef %conv24, ptr noundef %addr, i32 noundef %conv28) #6
  br label %do.end

do.end:                                           ; preds = %if.then22, %lor.lhs.false
  %40 = ptrtoint ptr %peer_id to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %peer_id, align 2
  %idxprom = zext i16 %41 to i32
  %arrayidx = getelementptr %struct.ath10k, ptr %1, i32 0, i32 85, i32 %idxprom
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 4
  %tobool31.not = icmp ne ptr %43, null
  %cmp36 = icmp ne ptr %43, %peer.0
  %spec.select = select i1 %tobool31.not, i1 %cmp36, i1 false
  br i1 %spec.select, label %do.end49, label %do.end.if.end55_crit_edge, !prof !55

do.end.if.end55_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

do.end49:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 233, i32 noundef 9, ptr noundef null) #6
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %do.end.if.end55_crit_edge
  %44 = ptrtoint ptr %peer_id to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %peer_id, align 2
  %idxprom64 = zext i16 %45 to i32
  %arrayidx65 = getelementptr %struct.ath10k, ptr %1, i32 0, i32 85, i32 %idxprom64
  %46 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %peer.0, ptr %arrayidx65, align 4
  %47 = load i16, ptr %peer_id, align 2
  %conv67 = zext i16 %47 to i32
  %peer_ids = getelementptr inbounds %struct.ath10k_peer, ptr %peer.0, i32 0, i32 6
  tail call void @_set_bit(i32 noundef %conv67, ptr noundef %peer_ids) #6
  br label %exit

exit:                                             ; preds = %if.end55, %if.then6.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_peer_unmap_event(ptr nocapture noundef readonly %htt, ptr nocapture noundef readonly %ev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %2 = ptrtoint ptr %ev to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %3)
  %cmp = icmp ugt i16 %3, 2047
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %conv) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #6
  %4 = ptrtoint ptr %ev to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ev, align 2
  %conv6 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %5)
  %cmp.i = icmp ugt i16 %5, 2047
  br i1 %cmp.i, label %if.end.if.then7_crit_edge, label %do.body.i

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

do.body.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %do.body.i.if.end18.i_crit_edge, label %land.rhs.i

do.body.i.if.end18.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

land.rhs.i:                                       ; preds = %do.body.i
  %dep_map.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 82, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp1.not.i, label %do.end.i, label %land.rhs.i.if.end18.i_crit_edge, !prof !55

land.rhs.i.if.end18.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 163, i32 noundef 9, ptr noundef null) #6
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end.i, %land.rhs.i.if.end18.i_crit_edge, %do.body.i.if.end18.i_crit_edge
  %peers.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 84
  %div3.i.i = lshr i32 %conv6, 5
  %and.i.i = and i32 %conv6, 31
  %7 = shl nuw i32 1, %and.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end18.i
  %peer.0.in.i = phi ptr [ %peers.i, %if.end18.i ], [ %peer.0.i, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %peer.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %peer.0.i = load ptr, ptr %peer.0.in.i, align 8
  %cmp29.not.i = icmp eq ptr %peer.0.i, %peers.i
  br i1 %cmp29.not.i, label %for.cond.i.if.then7_crit_edge, label %for.body.i

for.cond.i.if.then7_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

for.body.i:                                       ; preds = %for.cond.i
  %peer_ids.i = getelementptr inbounds %struct.ath10k_peer, ptr %peer.0.i, i32 0, i32 6
  %arrayidx.i.i = getelementptr i32, ptr %peer_ids.i, i32 %div3.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i.i, align 4
  %11 = and i32 %10, %7
  %tobool33.not.i = icmp eq i32 %11, 0
  br i1 %tobool33.not.i, label %for.body.i.for.cond.i_crit_edge, label %ath10k_peer_find_by_id.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

ath10k_peer_find_by_id.exit:                      ; preds = %for.body.i
  %tobool.not = icmp eq ptr %peer.0.i, null
  br i1 %tobool.not, label %ath10k_peer_find_by_id.exit.if.then7_crit_edge, label %do.body

ath10k_peer_find_by_id.exit.if.then7_crit_edge:   ; preds = %ath10k_peer_find_by_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.then7:                                         ; preds = %ath10k_peer_find_by_id.exit.if.then7_crit_edge, %for.cond.i.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %12 = ptrtoint ptr %ev to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ev, align 2
  %conv9 = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %conv9) #6
  br label %exit

do.body:                                          ; preds = %ath10k_peer_find_by_id.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %14 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %do.body.if.then14_crit_edge

do.body.if.then14_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_peer_unmap_event, %if.then14)) #6
          to label %do.end [label %if.then14], !srcloc !47

if.then14:                                        ; preds = %lor.lhs.false, %do.body.if.then14_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  %vdev_id = getelementptr inbounds %struct.ath10k_peer, ptr %peer.0.i, i32 0, i32 4
  %15 = ptrtoint ptr %vdev_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vdev_id, align 4
  %addr = getelementptr inbounds %struct.ath10k_peer, ptr %peer.0.i, i32 0, i32 5
  %17 = ptrtoint ptr %ev to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ev, align 2
  %conv16 = zext i16 %18 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.8, i32 noundef %16, ptr noundef %addr, i32 noundef %conv16) #6
  br label %do.end

do.end:                                           ; preds = %if.then14, %lor.lhs.false
  %19 = ptrtoint ptr %ev to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ev, align 2
  %idxprom = zext i16 %20 to i32
  %arrayidx = getelementptr %struct.ath10k, ptr %1, i32 0, i32 85, i32 %idxprom
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx, align 4
  %22 = load i16, ptr %ev, align 2
  %conv20 = zext i16 %22 to i32
  tail call void @_clear_bit(i32 noundef %conv20, ptr noundef %peer_ids.i) #6
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %peer_ids.i, i32 noundef 2048) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 2048
  br i1 %cmp4.i, label %if.then25, label %do.end.exit_crit_edge

do.end.exit_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.then25:                                        ; preds = %do.end
  %call.i.i48 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %peer.0.i) #6
  br i1 %call.i.i48, label %if.end.i.i, label %if.then25.list_del.exit_crit_edge

if.then25.list_del.exit_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %peer.0.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %peer.0.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %peer.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then25.list_del.exit_crit_edge
  %29 = ptrtoint ptr %peer.0.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %peer.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %peer.0.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %peer.0.i) #6
  %peer_mapping_wq = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 86
  tail call void @__wake_up(ptr noundef %peer_mapping_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %exit

exit:                                             ; preds = %list_del.exit, %do.end.exit_crit_edge, %if.then7
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath10k_mac_tx_frm_has_freq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ath10k_txrx_tx_unref(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !24, !25, !27, !29, !31, !32, !33, !34, !36}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath10k/txrx.c", i32 55, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath10k/txrx.c", i32 60, i32 19}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath10k/txrx.c", i32 68, i32 19}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath10k/txrx.c", i32 142, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath10k/txrx.c", i32 212, i32 8}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath10k/txrx.c", i32 230, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath10k/txrx.c", i32 248, i32 8}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath10k/txrx.c", i32 256, i32 19}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath10k/txrx.c", i32 261, i32 2}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath10k/txrx.c", i32 31, i32 19}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath10k/txrx.c", i32 38, i32 2}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath10k/trace.h", i32 329, i32 1}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!33 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{!"sp"}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 2148353488, i64 2148353493, i64 2148353506, i64 2148353550, i64 2148353584, i64 2148353605}
!48 = !{i64 2149699461}
!49 = !{i64 2149699727}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 2158877041}
!52 = !{i64 2158877266}
!53 = !{i64 2149708020}
!54 = !{i64 2149709056}
!55 = !{!"branch_weights", i32 1, i32 2000}
