; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath10k/htt.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath10k/htt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.82 }
%struct.atomic_t = type { i32 }
%union.anon.82 = type { i32 }
%struct.ath10k_htc_svc_conn_req = type { i16, %struct.ath10k_htc_ep_ops, i32 }
%struct.ath10k_htc_ep_ops = type { ptr, ptr, ptr }
%struct.ath10k_htc_svc_conn_resp = type { i8, i8, i32, i32, i8 }
%struct.ath10k = type { %struct.ath_common, ptr, ptr, ptr, %struct.msa_region, [6 x i8], i32, i16, i32, i32, i8, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.anon.162, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.ath10k_bmi, %struct.ath10k_wmi, %struct.ath10k_htc, [4 x i8], %struct.ath10k_htt, %struct.ath10k_hw_params, %struct.ath10k_fw_components, ptr, ptr, ptr, %struct.anon.186, i32, i32, i32, %struct.anon.187, %struct.anon.188, ptr, ptr, %struct.cfg80211_chan_def, ptr, i64, ptr, i8, i32, i8, i32, i32, i8, i8, i32, i8, i8, %struct.completion, i32, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, [2048 x ptr], %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.completion, ptr, %struct.work_struct, %struct.sk_buff_head, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, [41 x %struct.survey_info], i8, %struct.completion, ptr, i32, %struct.ath10k_debug, %struct.anon.193, i32, %struct.anon.194, %struct.anon.195, %struct.anon.196, %struct.ath10k_thermal, %struct.ath10k_wow, %struct.ath10k_per_peer_tx_stats, [36 x i8], %struct.net_device, %struct.napi_struct, %struct.work_struct, %struct.anon.197, i32, ptr, ptr, i32, i32, %struct.ath10k_radar_found_info, %struct.work_struct, %struct.ath10k_bus_params, %struct.completion, i8, i32, i32, i32, [0 x i8], [48 x i8] }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.ath10k_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath10k_htt_tx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@htt_10_4_t2h_msg_types = internal constant { [50 x i32], [56 x i8] } { [50 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 20, i32 15, i32 16, i32 17, i32 24, i32 25, i32 22, i32 26, i32 27, i32 23, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 28, i32 29], [56 x i8] zeroinitializer }, align 32
@htt_10x_t2h_msg_types = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 24, i32 20, i32 0, i32 22, i32 23, i32 14], [48 x i8] zeroinitializer }, align 32
@htt_tlv_t2h_msg_types = internal constant { [24 x i32], [32 x i8] } { [24 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 0, i32 19, i32 20, i32 21, i32 24], [32 x i8] zeroinitializer }, align 32
@htt_main_t2h_msg_types = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 0, i32 13, i32 14, i32 15, i32 16, i32 17, i32 24], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/ath10k/htt.c\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"htt version request timed out\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to verify htt version: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to setup rx ring: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to setup amsdu/ampdu limit: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ath10k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"htt target version %d.%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"unsupported htt major version %d. supported versions are 2 and 3\0A\00", [62 x i8] zeroinitializer }, align 32
@__tracepoint_ath10k_log_dbg = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.8 = private unnamed_addr constant [23 x i8] c"htt_10_4_t2h_msg_types\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 95, i32 36 }
@___asan_gen_.11 = private unnamed_addr constant [22 x i8] c"htt_10x_t2h_msg_types\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 40, i32 36 }
@___asan_gen_.14 = private unnamed_addr constant [22 x i8] c"htt_tlv_t2h_msg_types\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 63, i32 36 }
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"htt_main_t2h_msg_types\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 15, i32 36 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 209, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 251, i32 19 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 257, i32 19 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 268, i32 19 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 277, i32 19 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 87, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 224, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath10k/htt.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 229, i32 18 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @htt_10_4_t2h_msg_types, ptr @htt_10x_t2h_msg_types, ptr @htt_tlv_t2h_msg_types, ptr @htt_main_t2h_msg_types, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @init_completion.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htt_10_4_t2h_msg_types to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htt_10x_t2h_msg_types to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htt_tlv_t2h_msg_types to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htt_main_t2h_msg_types to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_htt_connect(ptr nocapture noundef %htt) local_unnamed_addr #0 align 64 {
entry:
  %conn_req = alloca %struct.ath10k_htc_svc_conn_req, align 4
  %conn_resp = alloca %struct.ath10k_htc_svc_conn_resp, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %conn_req) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %conn_resp) #3
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %2 = call ptr @memset(ptr %conn_req, i32 0, i32 20)
  %3 = call ptr @memset(ptr %conn_resp, i32 0, i32 16)
  %ep_ops = getelementptr inbounds %struct.ath10k_htc_svc_conn_req, ptr %conn_req, i32 0, i32 1
  %4 = ptrtoint ptr %ep_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ath10k_htt_htc_tx_complete, ptr %ep_ops, align 4
  %ep_rx_complete = getelementptr inbounds %struct.ath10k_htc_svc_conn_req, ptr %conn_req, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %ep_rx_complete to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ath10k_htt_htc_t2h_msg_handler, ptr %ep_rx_complete, align 4
  %ep_tx_credits = getelementptr inbounds %struct.ath10k_htc_svc_conn_req, ptr %conn_req, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %ep_tx_credits to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ath10k_htt_op_ep_tx_credits, ptr %ep_tx_credits, align 4
  %7 = ptrtoint ptr %conn_req to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 768, ptr %conn_req, align 4
  %htc = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 42
  %call = call i32 @ath10k_htc_connect_service(ptr noundef %htc, ptr noundef nonnull %conn_req, ptr noundef nonnull %conn_resp) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %eid = getelementptr inbounds %struct.ath10k_htc_svc_conn_resp, ptr %conn_resp, i32 0, i32 2
  %8 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %eid, align 4
  %eid5 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 1
  %10 = ptrtoint ptr %eid5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %eid5, align 4
  %dev_type = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 136, i32 1
  %11 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.then6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.ath10k, ptr %1, i32 0, i32 42, i32 1, i32 %9
  call void @ath10k_htc_setup_tx_req(ptr noundef %arrayidx) #3
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %13 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %htt, align 8
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %14, i32 0, i32 34, i32 1
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %get_htt_tx_complete.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %get_htt_tx_complete.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_htt_tx_complete.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %ath10k_hif_get_htt_tx_complete.exit.thread, label %ath10k_hif_get_htt_tx_complete.exit

ath10k_hif_get_htt_tx_complete.exit.thread:       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  %disable_tx_comp36 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 31
  %19 = ptrtoint ptr %disable_tx_comp36 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %disable_tx_comp36, align 8
  br label %cleanup

ath10k_hif_get_htt_tx_complete.exit:              ; preds = %if.end9
  %call.i = call i32 %18(ptr noundef %14) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12 = icmp ne i32 %call.i, 0
  %disable_tx_comp = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 31
  %frombool = zext i1 %tobool12 to i8
  %20 = ptrtoint ptr %disable_tx_comp to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool, ptr %disable_tx_comp, align 8
  br i1 %tobool12, label %if.then15, label %ath10k_hif_get_htt_tx_complete.exit.cleanup_crit_edge

ath10k_hif_get_htt_tx_complete.exit.cleanup_crit_edge: ; preds = %ath10k_hif_get_htt_tx_complete.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then15:                                        ; preds = %ath10k_hif_get_htt_tx_complete.exit
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %htt, align 8
  %htc17 = getelementptr inbounds %struct.ath10k, ptr %22, i32 0, i32 42
  %23 = ptrtoint ptr %eid5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %eid5, align 4
  call void @ath10k_htc_change_tx_credit_flow(ptr noundef %htc17, i32 noundef %24, i1 noundef zeroext true) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %ath10k_hif_get_htt_tx_complete.exit.cleanup_crit_edge, %ath10k_hif_get_htt_tx_complete.exit.thread, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %conn_resp) #3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %conn_req) #3
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_htt_htc_tx_complete(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_htt_htc_t2h_msg_handler(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_htt_op_ep_tx_credits(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_htc_connect_service(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_htc_setup_tx_req(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_htc_change_tx_credit_flow(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_htt_init(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %htt1 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44
  %0 = ptrtoint ptr %htt1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ar, ptr %htt1, align 8
  %prefetch_len = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 11
  %1 = ptrtoint ptr %prefetch_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 50, ptr %prefetch_len, align 8
  %running_fw = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 47
  %2 = ptrtoint ptr %running_fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %running_fw, align 64
  %htt_op_version = getelementptr inbounds %struct.ath10k_fw_components, ptr %3, i32 0, i32 6, i32 4
  %4 = ptrtoint ptr %htt_op_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %htt_op_version, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 4, label %entry.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb5
    i32 3, label %sw.bb10
    i32 1, label %sw.bb15
    i32 5, label %entry.do.end_crit_edge
    i32 0, label %entry.do.end_crit_edge49
  ]

entry.do.end_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

do.end:                                           ; preds = %entry.do.end_crit_edge, %entry.do.end_crit_edge49
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 209, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %sw.bb15, %sw.bb10, %sw.bb5, %entry.sw.epilog.sink.split_crit_edge
  %htt_main_t2h_msg_types.sink = phi ptr [ @htt_main_t2h_msg_types, %sw.bb15 ], [ @htt_tlv_t2h_msg_types, %sw.bb10 ], [ @htt_10x_t2h_msg_types, %sw.bb5 ], [ @htt_10_4_t2h_msg_types, %entry.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i32 [ 19, %sw.bb15 ], [ 24, %sw.bb10 ], [ 20, %sw.bb5 ], [ 50, %entry.sw.epilog.sink.split_crit_edge ]
  %t2h_msg_types17 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 8
  %7 = ptrtoint ptr %t2h_msg_types17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %htt_main_t2h_msg_types.sink, ptr %t2h_msg_types17, align 8
  %t2h_msg_types_max19 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 9
  %8 = ptrtoint ptr %t2h_msg_types_max19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %t2h_msg_types_max19, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  tail call void @ath10k_htt_set_tx_ops(ptr noundef %htt1) #3
  tail call void @ath10k_htt_set_rx_ops(ptr noundef %htt1) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_htt_set_tx_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_htt_set_rx_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_htt_setup(ptr noundef %htt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %target_version_received = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 5
  %2 = ptrtoint ptr %target_version_received to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %target_version_received, align 4
  %wait.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_completion.__key) #3
  %call = tail call i32 @ath10k_htt_h2t_ver_req_msg(ptr noundef %htt) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @wait_for_completion_timeout(ptr noundef %target_version_received, i32 noundef 300) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.1) #3
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %htt, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %5 = load i32, ptr @ath10k_debug_mask, align 4
  %and.i = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end5.if.then.i_crit_edge

if.end5.if.then.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_setup, %if.then.i)) #3
          to label %do.end.i [label %if.then.i], !srcloc !34

if.then.i:                                        ; preds = %lor.lhs.false.i, %if.end5.if.then.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #5
  %target_version_major.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 3
  %6 = ptrtoint ptr %target_version_major.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %target_version_major.i, align 8
  %conv.i = zext i8 %7 to i32
  %target_version_minor.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 4
  %8 = ptrtoint ptr %target_version_minor.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %target_version_minor.i, align 1
  %conv2.i = zext i8 %9 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %4, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %conv.i, i32 noundef %conv2.i) #3
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i
  %target_version_major3.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 3
  %10 = ptrtoint ptr %target_version_major3.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %target_version_major3.i, align 8
  %12 = and i8 %11, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %switch.i = icmp eq i8 %12, 2
  br i1 %switch.i, label %if.end9, label %if.then8

if.then8:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv4.i = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %conv4.i) #3
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef -524) #3
  br label %cleanup

if.end9:                                          ; preds = %do.end.i
  %tx_ops.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 29
  %13 = ptrtoint ptr %tx_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_ops.i, align 8
  %htt_send_frag_desc_bank_cfg.i = getelementptr inbounds %struct.ath10k_htt_tx_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %htt_send_frag_desc_bank_cfg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %htt_send_frag_desc_bank_cfg.i, align 4
  %tobool.not.i48 = icmp eq ptr %16, null
  br i1 %tobool.not.i48, label %if.end9.cleanup_crit_edge, label %ath10k_htt_send_frag_desc_bank_cfg.exit

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

ath10k_htt_send_frag_desc_bank_cfg.exit:          ; preds = %if.end9
  %call.i = tail call i32 %16(ptr noundef %htt) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end13, label %ath10k_htt_send_frag_desc_bank_cfg.exit.cleanup_crit_edge

ath10k_htt_send_frag_desc_bank_cfg.exit.cleanup_crit_edge: ; preds = %ath10k_htt_send_frag_desc_bank_cfg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end13:                                         ; preds = %ath10k_htt_send_frag_desc_bank_cfg.exit
  %17 = ptrtoint ptr %tx_ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_ops.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool.not.i51 = icmp eq ptr %20, null
  br i1 %tobool.not.i51, label %if.end13.if.then16_crit_edge, label %ath10k_htt_send_rx_ring_cfg.exit

if.end13.if.then16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then16

ath10k_htt_send_rx_ring_cfg.exit:                 ; preds = %if.end13
  %call.i52 = tail call i32 %20(ptr noundef %htt) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool15.not = icmp eq i32 %call.i52, 0
  br i1 %tobool15.not, label %if.end17, label %ath10k_htt_send_rx_ring_cfg.exit.if.then16_crit_edge

ath10k_htt_send_rx_ring_cfg.exit.if.then16_crit_edge: ; preds = %ath10k_htt_send_rx_ring_cfg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then16

if.then16:                                        ; preds = %ath10k_htt_send_rx_ring_cfg.exit.if.then16_crit_edge, %if.end13.if.then16_crit_edge
  %retval.0.i5466 = phi i32 [ %call.i52, %ath10k_htt_send_rx_ring_cfg.exit.if.then16_crit_edge ], [ -95, %if.end13.if.then16_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i5466) #3
  br label %cleanup

if.end17:                                         ; preds = %ath10k_htt_send_rx_ring_cfg.exit
  %21 = ptrtoint ptr %tx_ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_ops.i, align 8
  %htt_h2t_aggr_cfg_msg.i = getelementptr inbounds %struct.ath10k_htt_tx_ops, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %htt_h2t_aggr_cfg_msg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %htt_h2t_aggr_cfg_msg.i, align 4
  %tobool.not.i56 = icmp eq ptr %24, null
  br i1 %tobool.not.i56, label %if.end17.if.then20_crit_edge, label %ath10k_htt_h2t_aggr_cfg_msg.exit

if.end17.if.then20_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then20

ath10k_htt_h2t_aggr_cfg_msg.exit:                 ; preds = %if.end17
  %max_num_amsdu = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 6
  %25 = ptrtoint ptr %max_num_amsdu to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %max_num_amsdu, align 4
  %max_num_ampdu = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 7
  %27 = ptrtoint ptr %max_num_ampdu to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %max_num_ampdu, align 1
  %call.i57 = tail call i32 %24(ptr noundef %htt, i8 noundef zeroext %28, i8 noundef zeroext %26) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool19.not = icmp eq i32 %call.i57, 0
  br i1 %tobool19.not, label %ath10k_htt_h2t_aggr_cfg_msg.exit.cleanup_crit_edge, label %ath10k_htt_h2t_aggr_cfg_msg.exit.if.then20_crit_edge

ath10k_htt_h2t_aggr_cfg_msg.exit.if.then20_crit_edge: ; preds = %ath10k_htt_h2t_aggr_cfg_msg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then20

ath10k_htt_h2t_aggr_cfg_msg.exit.cleanup_crit_edge: ; preds = %ath10k_htt_h2t_aggr_cfg_msg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then20:                                        ; preds = %ath10k_htt_h2t_aggr_cfg_msg.exit.if.then20_crit_edge, %if.end17.if.then20_crit_edge
  %retval.0.i5969 = phi i32 [ %call.i57, %ath10k_htt_h2t_aggr_cfg_msg.exit.if.then20_crit_edge ], [ -95, %if.end17.if.then20_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %retval.0.i5969) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %ath10k_htt_h2t_aggr_cfg_msg.exit.cleanup_crit_edge, %if.then16, %ath10k_htt_send_frag_desc_bank_cfg.exit.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then8, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then4 ], [ -524, %if.then8 ], [ %retval.0.i5466, %if.then16 ], [ %retval.0.i5969, %if.then20 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %ath10k_htt_send_frag_desc_bank_cfg.exit.cleanup_crit_edge ], [ 0, %ath10k_htt_h2t_aggr_cfg_msg.exit.cleanup_crit_edge ], [ -95, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_htt_h2t_ver_req_msg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath10k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath10k/htt.c", i32 209, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath10k/htt.c", i32 251, i32 19}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath10k/htt.c", i32 257, i32 19}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath10k/htt.c", i32 268, i32 19}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath10k/htt.c", i32 277, i32 19}
!10 = !{ptr @htt_10_4_t2h_msg_types, !11, !"htt_10_4_t2h_msg_types", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath10k/htt.c", i32 95, i32 36}
!12 = !{ptr @htt_10x_t2h_msg_types, !13, !"htt_10x_t2h_msg_types", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath10k/htt.c", i32 40, i32 36}
!14 = !{ptr @htt_tlv_t2h_msg_types, !15, !"htt_tlv_t2h_msg_types", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath10k/htt.c", i32 63, i32 36}
!16 = !{ptr @htt_main_t2h_msg_types, !17, !"htt_main_t2h_msg_types", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath10k/htt.c", i32 15, i32 36}
!18 = !{ptr @init_completion.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../include/linux/completion.h", i32 87, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath10k/htt.c", i32 224, i32 2}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath10k/htt.c", i32 229, i32 18}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i64 2148209638, i64 2148209643, i64 2148209656, i64 2148209700, i64 2148209734, i64 2148209755}
