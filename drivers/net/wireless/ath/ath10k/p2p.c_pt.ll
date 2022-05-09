; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath10k/p2p.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath10k/p2p.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ath10k_vif = type { %struct.list_head, i32, i16, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i8, i8, i8, i8, i32, [6 x i8], [4 x ptr], i8, i16, %union.anon.191, i8, i8, i32, i32, i8, %struct.wmi_wmm_params_all_arg, %struct.work_struct, %struct.delayed_work, %struct.cfg80211_bitrate_mask, i32, i8, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i8], [8 x i32], [8 x i32], i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.191 = type { %struct.anon.193 }
%struct.anon.193 = type { [64 x i8], i8, i32, [32 x i8], i8, i32, ptr }
%struct.wmi_wmm_params_all_arg = type { %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg }
%struct.wmi_wmm_params_arg = type { i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.127] }
%struct.anon.127 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ath10k = type { %struct.ath_common, ptr, ptr, ptr, %struct.msa_region, [6 x i8], i32, i16, i32, i32, i8, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.anon.136, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.ath10k_bmi, %struct.ath10k_wmi, %struct.ath10k_htc, [4 x i8], %struct.ath10k_htt, %struct.ath10k_hw_params, %struct.ath10k_fw_components, ptr, ptr, ptr, %struct.anon.182, i32, i32, i32, %struct.anon.183, %struct.anon.184, ptr, ptr, %struct.cfg80211_chan_def, ptr, i64, ptr, i8, i32, i8, i32, i32, i8, i8, i32, i8, i8, %struct.completion, i32, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, [2048 x ptr], %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.completion, ptr, %struct.work_struct, %struct.sk_buff_head, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, [41 x %struct.survey_info], i8, %struct.completion, ptr, i32, %struct.ath10k_debug, %struct.anon.186, i32, %struct.anon.187, %struct.anon.188, %struct.anon.189, %struct.ath10k_thermal, %struct.ath10k_wow, %struct.ath10k_per_peer_tx_stats, [36 x i8], %struct.net_device, %struct.napi_struct, %struct.work_struct, %struct.anon.190, i32, ptr, ptr, i32, i32, %struct.ath10k_radar_found_info, %struct.work_struct, %struct.ath10k_bus_params, %struct.completion, i8, i32, i32, i32, [0 x i8], [48 x i8] }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
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
%struct.anon.136 = type { i32, ptr }
%struct.ath10k_bmi = type { i8 }
%struct.ath10k_wmi = type { i32, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.wait_queue_head, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.idr, i32, i32, [16 x %struct.ath10k_mem_chunk] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ath10k_mem_chunk = type { ptr, i32, i32, i32 }
%struct.ath10k_htc = type { ptr, [9 x %struct.ath10k_htc_ep], %struct.spinlock, %struct.ath10k_htc_ops, [256 x i8], i32, %struct.completion, i32, i32, i8, i32 }
%struct.ath10k_htc_ep = type { ptr, i32, i32, %struct.ath10k_htc_ep_ops, i32, i32, i8, i8, i8, i32, i32, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.ath10k_htc_ep_ops = type { ptr, ptr, ptr }
%struct.ath10k_htc_ops = type { ptr }
%struct.ath10k_htt = type { ptr, i32, %struct.sk_buff_head, i8, i8, %struct.completion, i8, i8, ptr, i32, %struct.anon.137, i32, %struct.spinlock, i32, i32, i32, %struct.idr, %struct.wait_queue_head, %struct.anon.141, i8, %struct.atomic_t, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ieee80211_rx_status, %struct.anon.143, %struct.anon.146, %struct.anon.156, i8, ptr, ptr, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head, [4 x i8] }
%struct.anon.137 = type { ptr, i8, [16 x %struct.hlist_head], %union.anon.138, i32, i32, i32, i32, i32, %struct.anon.139, %struct.anon.140, %struct.timer_list, %struct.spinlock }
%struct.hlist_head = type { ptr }
%union.anon.138 = type { ptr }
%struct.anon.139 = type { ptr, i32 }
%struct.anon.140 = type { i32 }
%struct.anon.141 = type { %union.anon.142, [0 x %struct.htt_tx_done] }
%union.anon.142 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.htt_tx_done = type { i16, i16, i8 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.anon.143 = type { i32, %union.anon.144, i32 }
%union.anon.144 = type { ptr }
%struct.anon.146 = type { i32, %union.anon.147, i32 }
%union.anon.147 = type { ptr }
%struct.anon.156 = type { i8, ptr, i32, i16, i16, i16, i32, i32 }
%struct.ath10k_hw_params = type { i32, i16, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, %struct.ath10k_hw_params_fw, i8, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ath10k_hw_params_fw = type { ptr, ptr, i32, ptr, i32, i32 }
%struct.ath10k_fw_components = type { ptr, ptr, i32, ptr, ptr, i32, %struct.ath10k_fw_file }
%struct.ath10k_fw_file = type { ptr, [32 x i8], [1 x i32], i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.anon.182 = type { i32, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, [32 x i8] }
%struct.anon.183 = type { %struct.completion, %struct.completion, %struct.completion, %struct.delayed_work, i32, i8, i32, i32, i8 }
%struct.anon.184 = type { [6 x %struct.ieee80211_supported_band] }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.ath10k_debug = type { ptr, %struct.ath10k_fw_stats, %struct.completion, i8, i32, i32, %struct.delayed_work, %struct.ath10k_dfs_stats, %struct.ath_dfs_pool_stats, ptr, ptr, %struct.completion, i64, i32, i32, i32, ptr, i32, i8 }
%struct.ath10k_fw_stats = type { i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.ath10k_dfs_stats = type { i32, i32, i32, i32, i32 }
%struct.ath_dfs_pool_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.186 = type { ptr, i32, %struct.ath10k_spec_scan }
%struct.ath10k_spec_scan = type { i8, i8 }
%struct.anon.187 = type { ptr }
%struct.anon.188 = type { %struct.ath10k_fw_components, i8 }
%struct.anon.189 = type { i32, i32, i32, i32 }
%struct.ath10k_thermal = type { ptr, %struct.completion, i32, i32, i32 }
%struct.ath10k_wow = type { i32, %struct.completion, %struct.wiphy_wowlan_support }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.ath10k_per_peer_tx_stats = type { i32, i32, i32, i8, i8, i16, i16, i16, i16, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.106, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.106 = type { ptr }
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
%struct.anon.190 = type { i16, i32, i32, i32, i32, i32 }
%struct.ath10k_radar_found_info = type { i32, i32, i32, i32, i32, i32 }
%struct.ath10k_bus_params = type { i32, i32, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wmi_p2p_noa_info = type { i8, i8, i8, i8, [4 x %struct.wmi_p2p_noa_descriptor] }
%struct.wmi_p2p_noa_descriptor = type { i32, i32, i32, i32 }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.ath10k_p2p_noa_arg = type { i32, ptr }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.126, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.anon.126 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/ath10k/p2p.c\00", [58 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath10k/p2p.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 90, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_p2p_noa_update(ptr nocapture noundef %arvif, ptr nocapture noundef readonly %noa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ar1 = getelementptr inbounds %struct.ath10k_vif, ptr %arvif, i32 0, i32 12
  %0 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar1, align 4
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.ath10k_p2p_noa_ie_assign.exit.i_crit_edge, label %land.rhs.i

entry.ath10k_p2p_noa_ie_assign.exit.i_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath10k_p2p_noa_ie_assign.exit.i

land.rhs.i:                                       ; preds = %entry
  %3 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ar1, align 4
  %dep_map.i = getelementptr inbounds %struct.ath10k, ptr %4, i32 0, i32 82, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !11

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 90, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr.i = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.ath10k_p2p_noa_ie_assign.exit.i_crit_edge, label %land.rhs.i.i

if.end.i.ath10k_p2p_noa_ie_assign.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath10k_p2p_noa_ie_assign.exit.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %5 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ar1, align 4
  %dep_map.i.i = getelementptr inbounds %struct.ath10k, ptr %6, i32 0, i32 82, i32 0, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.ath10k_p2p_noa_ie_assign.exit.i_crit_edge, !prof !11

land.rhs.i.i.ath10k_p2p_noa_ie_assign.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath10k_p2p_noa_ie_assign.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef null) #5
  br label %ath10k_p2p_noa_ie_assign.exit.i

ath10k_p2p_noa_ie_assign.exit.i:                  ; preds = %do.end.i.i, %land.rhs.i.i.ath10k_p2p_noa_ie_assign.exit.i_crit_edge, %if.end.i.ath10k_p2p_noa_ie_assign.exit.i_crit_edge, %entry.ath10k_p2p_noa_ie_assign.exit.i_crit_edge
  %noa_data.i.i = getelementptr inbounds %struct.ath10k_vif, ptr %arvif, i32 0, i32 23, i32 0, i32 6
  %7 = ptrtoint ptr %noa_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %noa_data.i.i, align 4
  tail call void @kfree(ptr noundef %8) #5
  %9 = ptrtoint ptr %noa_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %noa_data.i.i, align 4
  %noa_len.i.i = getelementptr inbounds %struct.ath10k_vif, ptr %arvif, i32 0, i32 23, i32 0, i32 5
  %10 = ptrtoint ptr %noa_len.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %noa_len.i.i, align 4
  %num_descriptors.i.i = getelementptr inbounds %struct.wmi_p2p_noa_info, ptr %noa, i32 0, i32 3
  %11 = ptrtoint ptr %num_descriptors.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_descriptors.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i45.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i45.i, label %land.lhs.true.i.i, label %ath10k_p2p_noa_ie_len_compute.exit.i

land.lhs.true.i.i:                                ; preds = %ath10k_p2p_noa_ie_assign.exit.i
  %ctwindow_oppps.i.i = getelementptr inbounds %struct.wmi_p2p_noa_info, ptr %noa, i32 0, i32 2
  %13 = ptrtoint ptr %ctwindow_oppps.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctwindow_oppps.i.i, align 1
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool1.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.__ath10k_p2p_noa_update.exit_crit_edge, label %land.lhs.true.i.i.if.end8.i.i_crit_edge

land.lhs.true.i.i.if.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i.i

land.lhs.true.i.i.__ath10k_p2p_noa_update.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__ath10k_p2p_noa_update.exit

ath10k_p2p_noa_ie_len_compute.exit.i:             ; preds = %ath10k_p2p_noa_ie_assign.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv5.i.i = zext i8 %12 to i32
  %mul.i.i = mul nuw nsw i32 %conv5.i.i, 13
  %add6.i.i = add nuw nsw i32 %mul.i.i, 11
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %ath10k_p2p_noa_ie_len_compute.exit.i, %land.lhs.true.i.i.if.end8.i.i_crit_edge
  %add6.i70.i = phi i32 [ %add6.i.i, %ath10k_p2p_noa_ie_len_compute.exit.i ], [ 11, %land.lhs.true.i.i.if.end8.i.i_crit_edge ]
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add6.i70.i, i32 noundef 2592) #8
  %tobool30.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool30.not.i, label %if.end8.i.i.__ath10k_p2p_noa_update.exit_crit_edge, label %if.end32.i

if.end8.i.i.__ath10k_p2p_noa_update.exit_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__ath10k_p2p_noa_update.exit

if.end32.i:                                       ; preds = %if.end8.i.i
  %ctwindow_oppps1.i.i = getelementptr inbounds %struct.wmi_p2p_noa_info, ptr %noa, i32 0, i32 2
  %16 = ptrtoint ptr %ctwindow_oppps1.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ctwindow_oppps1.i.i, align 1
  %18 = ptrtoint ptr %num_descriptors.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_descriptors.i.i, align 1
  %20 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -35, ptr %call9.i.i, align 128
  %21 = trunc i32 %add6.i70.i to i8
  %conv5.i48.i = add i8 %21, -2
  %arrayidx6.i49.i = getelementptr i8, ptr %call9.i.i, i32 1
  %22 = ptrtoint ptr %arrayidx6.i49.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv5.i48.i, ptr %arrayidx6.i49.i, align 1
  %arrayidx7.i.i = getelementptr i8, ptr %call9.i.i, i32 2
  %23 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 80, ptr %arrayidx7.i.i, align 2
  %arrayidx8.i.i = getelementptr i8, ptr %call9.i.i, i32 3
  %24 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 111, ptr %arrayidx8.i.i, align 1
  %arrayidx9.i.i = getelementptr i8, ptr %call9.i.i, i32 4
  %25 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -102, ptr %arrayidx9.i.i, align 4
  %arrayidx10.i.i = getelementptr i8, ptr %call9.i.i, i32 5
  %26 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 9, ptr %arrayidx10.i.i, align 1
  %arrayidx11.i.i = getelementptr i8, ptr %call9.i.i, i32 6
  %27 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 12, ptr %arrayidx11.i.i, align 2
  %arrayidx13.i.i = getelementptr i8, ptr %call9.i.i, i32 9
  %index.i.i = getelementptr inbounds %struct.wmi_p2p_noa_info, ptr %noa, i32 0, i32 1
  %28 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %index.i.i, align 1
  %30 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx13.i.i, align 1
  %oppps_ctwindow.i.i = getelementptr i8, ptr %call9.i.i, i32 10
  %31 = tail call i8 @llvm.fshl.i8(i8 %17, i8 %17, i8 7) #5
  %32 = ptrtoint ptr %oppps_ctwindow.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %oppps_ctwindow.i.i, align 2
  %conv19.i.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp74.not.i.i = icmp eq i8 %19, 0
  br i1 %cmp74.not.i.i, label %if.end32.i.ath10k_p2p_noa_ie_fill.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end32.i.ath10k_p2p_noa_ie_fill.exit.i_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath10k_p2p_noa_ie_fill.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end32.i
  %desc.i.i = getelementptr i8, ptr %call9.i.i, i32 11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.075.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx21.i.i = getelementptr %struct.wmi_p2p_noa_info, ptr %noa, i32 0, i32 4, i32 %i.075.i.i
  %33 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %arrayidx21.i.i, align 1
  %35 = lshr i32 %34, 24
  %conv22.i.i = trunc i32 %35 to i8
  %arrayidx23.i.i = getelementptr [4 x %struct.ieee80211_p2p_noa_desc], ptr %desc.i.i, i32 0, i32 %i.075.i.i
  %36 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv22.i.i, ptr %arrayidx23.i.i, align 1
  %duration.i.i = getelementptr %struct.wmi_p2p_noa_info, ptr %noa, i32 0, i32 4, i32 %i.075.i.i, i32 1
  %37 = ptrtoint ptr %duration.i.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %duration.i.i, align 1
  %duration28.i.i = getelementptr inbounds %struct.ieee80211_p2p_noa_desc, ptr %arrayidx23.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %duration28.i.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %38, ptr %duration28.i.i, align 1
  %interval.i.i = getelementptr %struct.wmi_p2p_noa_info, ptr %noa, i32 0, i32 4, i32 %i.075.i.i, i32 2
  %40 = ptrtoint ptr %interval.i.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %interval.i.i, align 1
  %interval33.i.i = getelementptr inbounds %struct.ieee80211_p2p_noa_desc, ptr %arrayidx23.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %interval33.i.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %interval33.i.i, align 1
  %start_time.i.i = getelementptr %struct.wmi_p2p_noa_info, ptr %noa, i32 0, i32 4, i32 %i.075.i.i, i32 3
  %43 = ptrtoint ptr %start_time.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %start_time.i.i, align 1
  %start_time38.i.i = getelementptr inbounds %struct.ieee80211_p2p_noa_desc, ptr %arrayidx23.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %start_time38.i.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %start_time38.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.075.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv19.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.ath10k_p2p_noa_ie_fill.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.body.i.i.ath10k_p2p_noa_ie_fill.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath10k_p2p_noa_ie_fill.exit.i

ath10k_p2p_noa_ie_fill.exit.i:                    ; preds = %for.body.i.i.ath10k_p2p_noa_ie_fill.exit.i_crit_edge, %if.end32.i.ath10k_p2p_noa_ie_fill.exit.i_crit_edge
  %arrayidx12.i.i = getelementptr i8, ptr %call9.i.i, i32 7
  %46 = zext i8 %19 to i16
  %47 = mul nuw nsw i16 %46, 13
  %conv41.i.i = add nuw nsw i16 %47, 2
  %48 = tail call i16 @llvm.bswap.i16(i16 %conv41.i.i) #5
  %49 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %arrayidx12.i.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %50 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i50.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i50.i, label %ath10k_p2p_noa_ie_fill.exit.i.ath10k_p2p_noa_ie_assign.exit60.i_crit_edge, label %land.rhs.i55.i

ath10k_p2p_noa_ie_fill.exit.i.ath10k_p2p_noa_ie_assign.exit60.i_crit_edge: ; preds = %ath10k_p2p_noa_ie_fill.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath10k_p2p_noa_ie_assign.exit60.i

land.rhs.i55.i:                                   ; preds = %ath10k_p2p_noa_ie_fill.exit.i
  %51 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ar1, align 4
  %dep_map.i52.i = getelementptr inbounds %struct.ath10k, ptr %52, i32 0, i32 82, i32 0, i32 0, i32 4
  %call.i.i53.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i52.i, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i53.i)
  %cmp.not.i54.i = icmp eq i32 %call.i.i53.i, 0
  br i1 %cmp.not.i54.i, label %do.end.i56.i, label %land.rhs.i55.i.ath10k_p2p_noa_ie_assign.exit60.i_crit_edge, !prof !11

land.rhs.i55.i.ath10k_p2p_noa_ie_assign.exit60.i_crit_edge: ; preds = %land.rhs.i55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath10k_p2p_noa_ie_assign.exit60.i

do.end.i56.i:                                     ; preds = %land.rhs.i55.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef null) #5
  br label %ath10k_p2p_noa_ie_assign.exit60.i

ath10k_p2p_noa_ie_assign.exit60.i:                ; preds = %do.end.i56.i, %land.rhs.i55.i.ath10k_p2p_noa_ie_assign.exit60.i_crit_edge, %ath10k_p2p_noa_ie_fill.exit.i.ath10k_p2p_noa_ie_assign.exit60.i_crit_edge
  %53 = ptrtoint ptr %noa_data.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %noa_data.i.i, align 4
  tail call void @kfree(ptr noundef %54) #5
  %55 = ptrtoint ptr %noa_data.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call9.i.i, ptr %noa_data.i.i, align 4
  %56 = ptrtoint ptr %noa_len.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add6.i70.i, ptr %noa_len.i.i, align 4
  br label %__ath10k_p2p_noa_update.exit

__ath10k_p2p_noa_update.exit:                     ; preds = %ath10k_p2p_noa_ie_assign.exit60.i, %if.end8.i.i.__ath10k_p2p_noa_update.exit_crit_edge, %land.lhs.true.i.i.__ath10k_p2p_noa_update.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_p2p_noa_update_by_vdev_id(ptr nocapture noundef readonly %ar, i32 noundef %vdev_id, ptr noundef %noa) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.ath10k_p2p_noa_arg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg) #5
  %0 = getelementptr inbounds %struct.ath10k_p2p_noa_arg, ptr %arg, i32 0, i32 1
  %1 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %vdev_id, ptr %arg, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %noa, ptr %0, align 4
  %hw = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 1
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @ath10k_p2p_noa_update_vdev_iter, ptr noundef nonnull %arg) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_p2p_noa_update_vdev_iter(ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %mac, ptr nocapture noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev_id = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %0 = ptrtoint ptr %vdev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vdev_id, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %noa = getelementptr inbounds %struct.ath10k_p2p_noa_arg, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %noa to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %noa, align 4
  tail call void @ath10k_p2p_noa_update(ptr noundef %drv_priv, ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath10k/p2p.c", i32 90, i32 2}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 1, i32 2000}
