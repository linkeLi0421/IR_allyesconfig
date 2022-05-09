; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath10k/swap.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath10k/swap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%struct.atomic_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.ath10k_fw_file = type { ptr, [32 x i8], [1 x i32], i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.ath10k_swap_code_seg_info = type <{ %struct.ath10k_swap_code_seg_hw_info, [1 x ptr], i32, [1 x i32] }>
%struct.ath10k_swap_code_seg_hw_info = type { i32, i32, i32, i32, [16 x i32], [16 x i64] }
%struct.ath10k = type { %struct.ath_common, ptr, ptr, ptr, %struct.msa_region, [6 x i8], i32, i16, i32, i32, i8, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.anon.140, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.ath10k_bmi, %struct.ath10k_wmi, %struct.ath10k_htc, [4 x i8], %struct.ath10k_htt, %struct.ath10k_hw_params, %struct.ath10k_fw_components, ptr, ptr, ptr, %struct.anon.186, i32, i32, i32, %struct.anon.187, %struct.anon.188, ptr, ptr, %struct.cfg80211_chan_def, ptr, i64, ptr, i8, i32, i8, i32, i32, i8, i8, i32, i8, i8, %struct.completion, i32, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, [2048 x ptr], %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.completion, ptr, %struct.work_struct, %struct.sk_buff_head, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, [41 x %struct.survey_info], i8, %struct.completion, ptr, i32, %struct.ath10k_debug, %struct.anon.193, i32, %struct.anon.194, %struct.anon.195, %struct.anon.196, %struct.ath10k_thermal, %struct.ath10k_wow, %struct.ath10k_per_peer_tx_stats, [36 x i8], %struct.net_device, %struct.napi_struct, %struct.work_struct, %struct.anon.197, i32, ptr, ptr, i32, i32, %struct.ath10k_radar_found_info, %struct.work_struct, %struct.ath10k_bus_params, %struct.completion, i8, i32, i32, i32, [0 x i8], [48 x i8] }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.anon.140 = type { i32, ptr }
%struct.ath10k_bmi = type { i8 }
%struct.ath10k_wmi = type { i32, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.wait_queue_head, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.idr, i32, i32, [16 x %struct.ath10k_mem_chunk] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ath10k_mem_chunk = type { ptr, i32, i32, i32 }
%struct.ath10k_htc = type { ptr, [9 x %struct.ath10k_htc_ep], %struct.spinlock, %struct.ath10k_htc_ops, [256 x i8], i32, %struct.completion, i32, i32, i8, i32 }
%struct.ath10k_htc_ep = type { ptr, i32, i32, %struct.ath10k_htc_ep_ops, i32, i32, i8, i8, i8, i32, i32, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.ath10k_htc_ep_ops = type { ptr, ptr, ptr }
%struct.ath10k_htc_ops = type { ptr }
%struct.ath10k_htt = type { ptr, i32, %struct.sk_buff_head, i8, i8, %struct.completion, i8, i8, ptr, i32, %struct.anon.141, i32, %struct.spinlock, i32, i32, i32, %struct.idr, %struct.wait_queue_head, %struct.anon.145, i8, %struct.atomic_t, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ieee80211_rx_status, %struct.anon.147, %struct.anon.150, %struct.anon.160, i8, ptr, ptr, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head, [4 x i8] }
%struct.anon.141 = type { ptr, i8, [16 x %struct.hlist_head], %union.anon.142, i32, i32, i32, i32, i32, %struct.anon.143, %struct.anon.144, %struct.timer_list, %struct.spinlock }
%struct.hlist_head = type { ptr }
%union.anon.142 = type { ptr }
%struct.anon.143 = type { ptr, i32 }
%struct.anon.144 = type { i32 }
%struct.anon.145 = type { %union.anon.146, [0 x %struct.htt_tx_done] }
%union.anon.146 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.htt_tx_done = type { i16, i16, i8 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.anon.147 = type { i32, %union.anon.148, i32 }
%union.anon.148 = type { ptr }
%struct.anon.150 = type { i32, %union.anon.151, i32 }
%union.anon.151 = type { ptr }
%struct.anon.160 = type { i8, ptr, i32, i16, i16, i16, i32, i32 }
%struct.ath10k_hw_params = type { i32, i16, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, %struct.ath10k_hw_params_fw, i8, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ath10k_hw_params_fw = type { ptr, ptr, i32, ptr, i32, i32 }
%struct.ath10k_fw_components = type { ptr, ptr, i32, ptr, ptr, i32, %struct.ath10k_fw_file }
%struct.anon.186 = type { i32, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, [32 x i8] }
%struct.anon.187 = type { %struct.completion, %struct.completion, %struct.completion, %struct.delayed_work, i32, i8, i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.anon.188 = type { [6 x %struct.ieee80211_supported_band] }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.124 = type { ptr }
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
%struct.ath10k_swap_code_seg_tlv = type { i32, i32, [0 x i8] }
%struct.ath10k_swap_code_seg_tail = type { [12 x i8], i32 }

@ath10k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"boot found firmware code swap binary\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"failed to write Code swap segment information (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to allocate fw code swap segment\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to initialize fw code swap segment: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@__tracepoint_ath10k_log_dbg = external dso_local global %struct.tracepoint, align 4
@.str.4 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"refusing code swap bin because it is too big %zu > %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"refusing to parse invalid tlv length %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"refusing an invalid swap file\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to parse invalid swap file\0A\00", [61 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 133, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 141, i32 18 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 178, i32 18 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 186, i32 19 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 98, i32 18 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 39, i32 19 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 47, i32 20 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [42 x i8] c"../drivers/net/wireless/ath/ath10k/swap.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 64, i32 18 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_swap_code_seg_configure(ptr noundef %ar, ptr nocapture noundef readonly %fw_file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware_swap_code_seg_info = getelementptr inbounds %struct.ath10k_fw_file, ptr %fw_file, i32 0, i32 11
  %0 = ptrtoint ptr %firmware_swap_code_seg_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %firmware_swap_code_seg_info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %do.body.if.then2_crit_edge

do.body.if.then2_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_swap_code_seg_configure, %if.then2)) #5
          to label %do.end [label %if.then2], !srcloc !25

if.then2:                                         ; preds = %lor.lhs.false, %do.body.if.then2_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str) #5
  br label %do.end

do.end:                                           ; preds = %if.then2, %lor.lhs.false
  %3 = ptrtoint ptr %firmware_swap_code_seg_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %firmware_swap_code_seg_info, align 4
  %target_addr = getelementptr inbounds %struct.ath10k_swap_code_seg_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %target_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %target_addr, align 4
  %call5 = tail call i32 @ath10k_bmi_write_memory(ptr noundef %ar, i32 noundef %6, ptr noundef %4, i32 noundef 208) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.then7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.1, i32 noundef %call5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then7 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath10k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_bmi_write_memory(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_swap_code_seg_release(ptr nocapture noundef readonly %ar, ptr nocapture noundef %fw_file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware_swap_code_seg_info = getelementptr inbounds %struct.ath10k_fw_file, ptr %fw_file, i32 0, i32 11
  %0 = ptrtoint ptr %firmware_swap_code_seg_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %firmware_swap_code_seg_info, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.ath10k_swap_code_seg_free.exit_crit_edge, label %if.end.i

entry.ath10k_swap_code_seg_free.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath10k_swap_code_seg_free.exit

if.end.i:                                         ; preds = %entry
  %virt_address.i = getelementptr inbounds %struct.ath10k_swap_code_seg_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %virt_address.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt_address.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %if.end.i.ath10k_swap_code_seg_free.exit_crit_edge, label %if.end3.i

if.end.i.ath10k_swap_code_seg_free.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath10k_swap_code_seg_free.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %size.i = getelementptr inbounds %struct.ath10k_swap_code_seg_hw_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  %dev.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 3
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %paddr.i = getelementptr inbounds %struct.ath10k_swap_code_seg_info, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %paddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %8, i32 noundef %6, ptr noundef nonnull %3, i32 noundef %10, i32 noundef 0) #5
  br label %ath10k_swap_code_seg_free.exit

ath10k_swap_code_seg_free.exit:                   ; preds = %if.end3.i, %if.end.i.ath10k_swap_code_seg_free.exit_crit_edge, %entry.ath10k_swap_code_seg_free.exit_crit_edge
  %codeswap_data = getelementptr inbounds %struct.ath10k_fw_file, ptr %fw_file, i32 0, i32 9
  %11 = ptrtoint ptr %codeswap_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %codeswap_data, align 4
  %codeswap_len = getelementptr inbounds %struct.ath10k_fw_file, ptr %fw_file, i32 0, i32 10
  %12 = ptrtoint ptr %codeswap_len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %codeswap_len, align 4
  %13 = ptrtoint ptr %firmware_swap_code_seg_info to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %firmware_swap_code_seg_info, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_swap_code_seg_init(ptr noundef %ar, ptr nocapture noundef %fw_file) local_unnamed_addr #0 align 64 {
entry:
  %swap_magic.i = alloca [12 x i8], align 1
  %paddr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %codeswap_data1 = getelementptr inbounds %struct.ath10k_fw_file, ptr %fw_file, i32 0, i32 9
  %0 = ptrtoint ptr %codeswap_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %codeswap_data1, align 4
  %codeswap_len2 = getelementptr inbounds %struct.ath10k_fw_file, ptr %fw_file, i32 0, i32 10
  %2 = ptrtoint ptr %codeswap_len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %codeswap_len2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %tobool3.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr.i) #5
  %4 = ptrtoint ptr %paddr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %paddr.i, align 4, !annotation !26
  %add.i = add i32 %3, 1
  %div46.i = and i32 %add.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %div46.i)
  %cmp.i = icmp ugt i32 %div46.i, 524288
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.4, i32 noundef %div46.i, i32 noundef 524288) #5
  br label %if.then5

if.end.i:                                         ; preds = %if.end
  %dev.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 220, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i.if.then5_crit_edge, label %if.end2.i

if.end.i.if.then5_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

if.end2.i:                                        ; preds = %if.end.i
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %call.i47.i = call ptr @dma_alloc_attrs(ptr noundef %8, i32 noundef %div46.i, ptr noundef nonnull %paddr.i, i32 noundef 3264, i32 noundef 0) #5
  %tobool5.not.i = icmp eq ptr %call.i47.i, null
  br i1 %tobool5.not.i, label %if.end2.i.if.then5_crit_edge, label %if.end7.i

if.end2.i.if.then5_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

if.end7.i:                                        ; preds = %if.end2.i
  %9 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %paddr.i, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10) #5
  %bus_addr.i = getelementptr inbounds %struct.ath10k_swap_code_seg_hw_info, ptr %call.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %bus_addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %bus_addr.i, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %div46.i) #5
  %size.i = getelementptr inbounds %struct.ath10k_swap_code_seg_hw_info, ptr %call.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %size.i, align 4
  %15 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %call.i.i, align 4
  %num_segs.i = getelementptr inbounds %struct.ath10k_swap_code_seg_hw_info, ptr %call.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %num_segs.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16777216, ptr %num_segs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div46.i)
  %cmp11.i = icmp eq i32 %div46.i, 0
  %17 = call i32 @llvm.ctlz.i32(i32 %div46.i, i1 true) #5, !range !27
  %sub.i.op.i.i = xor i32 %17, 31
  %sub.i.i = select i1 %cmp11.i, i32 -1, i32 %sub.i.op.i.i
  %18 = call i32 @llvm.bswap.i32(i32 %sub.i.i) #5
  %size_log2.i = getelementptr inbounds %struct.ath10k_swap_code_seg_hw_info, ptr %call.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %size_log2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %size_log2.i, align 4
  %virt_address.i = getelementptr inbounds %struct.ath10k_swap_code_seg_info, ptr %call.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %virt_address.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i47.i, ptr %virt_address.i, align 4
  %paddr20.i = getelementptr inbounds %struct.ath10k_swap_code_seg_info, ptr %call.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %paddr20.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %10, ptr %paddr20.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.i) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %swap_magic.i) #5
  %22 = call ptr @memset(ptr %swap_magic.i, i32 0, i32 12)
  %target_addr.i = getelementptr inbounds %struct.ath10k_swap_code_seg_info, ptr %call.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %target_addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %target_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %3)
  %cmp56.i = icmp ugt i32 %3, 15
  br i1 %cmp56.i, label %if.end7.i.while.body.i_crit_edge, label %if.end7.i.while.endthread-pre-split.i_crit_edge

if.end7.i.while.endthread-pre-split.i_crit_edge:  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.endthread-pre-split.i

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  br label %while.body.i

if.then5:                                         ; preds = %if.end2.i.if.then5_crit_edge, %if.end.i.if.then5_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.i) #5
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.2) #5
  br label %cleanup

while.body.i:                                     ; preds = %if.end11.i.while.body.i_crit_edge, %if.end7.i.while.body.i_crit_edge
  %size_left.060.i = phi i32 [ %sub.i, %if.end11.i.while.body.i_crit_edge ], [ %3, %if.end7.i.while.body.i_crit_edge ]
  %total_payload_len.059.i = phi i32 [ %add15.i, %if.end11.i.while.body.i_crit_edge ], [ 0, %if.end7.i.while.body.i_crit_edge ]
  %fw_data.058.i = phi ptr [ %add.ptr14.i, %if.end11.i.while.body.i_crit_edge ], [ %1, %if.end7.i.while.body.i_crit_edge ]
  %virt_addr.057.i = phi ptr [ %add.ptr.i, %if.end11.i.while.body.i_crit_edge ], [ %call.i47.i, %if.end7.i.while.body.i_crit_edge ]
  %length1.i = getelementptr inbounds %struct.ath10k_swap_code_seg_tlv, ptr %fw_data.058.i, i32 0, i32 1
  %24 = ptrtoint ptr %length1.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %length1.i, align 1
  %26 = call i32 @llvm.bswap.i32(i32 %25) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %size_left.060.i)
  %cmp2.i = icmp ugt i32 %26, %size_left.060.i
  br i1 %cmp2.i, label %while.body.i.if.then.i30_crit_edge, label %lor.lhs.false.i

while.body.i.if.then.i30_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i30

lor.lhs.false.i:                                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp3.i = icmp eq i32 %25, 0
  %cmp3.not.i = xor i1 %cmp3.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %size_left.060.i)
  %cmp4.not.i = icmp eq i32 %size_left.060.i, 16
  %or.cond.i = select i1 %cmp3.not.i, i1 true, i1 %cmp4.not.i
  br i1 %or.cond.i, label %if.end.i31, label %lor.lhs.false.i.if.then.i30_crit_edge

lor.lhs.false.i.if.then.i30_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i30

if.then.i30:                                      ; preds = %lor.lhs.false.i.if.then.i30_crit_edge, %while.body.i.if.then.i30_crit_edge
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.5, i32 noundef %26) #5
  br label %if.end.i38

if.end.i31:                                       ; preds = %lor.lhs.false.i
  br i1 %cmp3.i, label %if.then6.i, label %if.end11.i

if.then6.i:                                       ; preds = %if.end.i31
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(12) %fw_data.058.i, ptr noundef nonnull dereferenceable(12) %swap_magic.i, i32 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i32 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i32, label %if.end9.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.6) #5
  br label %if.end.i38

if.end9.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  %bmi_write_addr.i = getelementptr inbounds %struct.ath10k_swap_code_seg_tail, ptr %fw_data.058.i, i32 0, i32 1
  %27 = ptrtoint ptr %bmi_write_addr.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %bmi_write_addr.i, align 1
  %29 = call i32 @llvm.bswap.i32(i32 %28) #5
  %30 = ptrtoint ptr %target_addr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %target_addr.i, align 4
  br label %while.end.i

if.end11.i:                                       ; preds = %if.end.i31
  %data12.i = getelementptr inbounds %struct.ath10k_swap_code_seg_tlv, ptr %fw_data.058.i, i32 0, i32 2
  %31 = call ptr @memcpy(ptr %virt_addr.057.i, ptr %data12.i, i32 %26)
  %add.ptr.i = getelementptr i8, ptr %virt_addr.057.i, i32 %26
  %add.i33 = add i32 %26, 8
  %sub.i = sub i32 %size_left.060.i, %add.i33
  %add.ptr14.i = getelementptr i8, ptr %fw_data.058.i, i32 %add.i33
  %add15.i = add i32 %26, %total_payload_len.059.i
  %cmp.i34 = icmp ugt i32 %sub.i, 15
  br i1 %cmp.i34, label %if.end11.i.while.body.i_crit_edge, label %if.end11.i.while.endthread-pre-split.i_crit_edge

if.end11.i.while.endthread-pre-split.i_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.endthread-pre-split.i

if.end11.i.while.body.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.endthread-pre-split.i:                      ; preds = %if.end11.i.while.endthread-pre-split.i_crit_edge, %if.end7.i.while.endthread-pre-split.i_crit_edge
  %total_payload_len.0.lcssa.i = phi i32 [ 0, %if.end7.i.while.endthread-pre-split.i_crit_edge ], [ %add15.i, %if.end11.i.while.endthread-pre-split.i_crit_edge ]
  %32 = ptrtoint ptr %target_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr.i = load i32, ptr %target_addr.i, align 4
  br label %while.end.i

while.end.i:                                      ; preds = %while.endthread-pre-split.i, %if.end9.i
  %total_payload_len.052.i = phi i32 [ %total_payload_len.0.lcssa.i, %while.endthread-pre-split.i ], [ %total_payload_len.059.i, %if.end9.i ]
  %33 = phi i32 [ %.pr.i, %while.endthread-pre-split.i ], [ %29, %if.end9.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp17.i = icmp eq i32 %33, -1
  br i1 %cmp17.i, label %if.then18.i, label %if.end10

if.then18.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.7) #5
  br label %if.end.i38

if.end.i38:                                       ; preds = %if.then18.i, %if.then8.i, %if.then.i30
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %swap_magic.i) #5
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.3, i32 noundef -22) #5
  %34 = ptrtoint ptr %virt_address.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %virt_address.i, align 4
  %tobool1.not.i = icmp eq ptr %35, null
  br i1 %tobool1.not.i, label %if.end.i38.cleanup_crit_edge, label %if.end3.i

if.end.i38.cleanup_crit_edge:                     ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size.i, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37) #5
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  %41 = ptrtoint ptr %paddr20.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %paddr20.i, align 4
  call void @dma_free_attrs(ptr noundef %40, i32 noundef %38, ptr noundef nonnull %35, i32 noundef %42, i32 noundef 0) #5
  br label %cleanup

if.end10:                                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %43 = call i32 @llvm.bswap.i32(i32 %total_payload_len.052.i) #5
  %44 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %call.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %swap_magic.i) #5
  %firmware_swap_code_seg_info = getelementptr inbounds %struct.ath10k_fw_file, ptr %fw_file, i32 0, i32 11
  %45 = ptrtoint ptr %firmware_swap_code_seg_info to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i.i, ptr %firmware_swap_code_seg_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end3.i, %if.end.i38.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -12, %if.then5 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.i38.cleanup_crit_edge ], [ -22, %if.end3.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath10k/swap.c", i32 133, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath10k/swap.c", i32 141, i32 18}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath10k/swap.c", i32 178, i32 18}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath10k/swap.c", i32 186, i32 19}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath10k/swap.c", i32 98, i32 18}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath10k/swap.c", i32 39, i32 19}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath10k/swap.c", i32 47, i32 20}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath10k/swap.c", i32 64, i32 18}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 2148351845, i64 2148351850, i64 2148351863, i64 2148351907, i64 2148351941, i64 2148351962}
!26 = !{!"auto-init"}
!27 = !{i32 0, i32 33}
