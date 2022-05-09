; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath10k/spectral.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath10k/spectral.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rchan_callbacks = type { ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath10k = type { %struct.ath_common, ptr, ptr, ptr, %struct.msa_region, [6 x i8], i32, i16, i32, i32, i8, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.anon.140, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.ath10k_bmi, %struct.ath10k_wmi, %struct.ath10k_htc, [4 x i8], %struct.ath10k_htt, %struct.ath10k_hw_params, %struct.ath10k_fw_components, ptr, ptr, ptr, %struct.anon.189, i32, i32, i32, %struct.anon.190, %struct.anon.191, ptr, ptr, %struct.cfg80211_chan_def, ptr, i64, ptr, i8, i32, i8, i32, i32, i8, i8, i32, i8, i8, %struct.completion, i32, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, [2048 x ptr], %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.completion, ptr, %struct.work_struct, %struct.sk_buff_head, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, [41 x %struct.survey_info], i8, %struct.completion, ptr, i32, %struct.ath10k_debug, %struct.anon.196, i32, %struct.anon.197, %struct.anon.198, %struct.anon.199, %struct.ath10k_thermal, %struct.ath10k_wow, %struct.ath10k_per_peer_tx_stats, [36 x i8], %struct.net_device, %struct.napi_struct, %struct.work_struct, %struct.anon.200, i32, ptr, ptr, i32, i32, %struct.ath10k_radar_found_info, %struct.work_struct, %struct.ath10k_bus_params, %struct.completion, i8, i32, i32, i32, [0 x i8], [48 x i8] }
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
%struct.ath10k_htt = type { ptr, i32, %struct.sk_buff_head, i8, i8, %struct.completion, i8, i8, ptr, i32, %struct.anon.144, i32, %struct.spinlock, i32, i32, i32, %struct.idr, %struct.wait_queue_head, %struct.anon.148, i8, %struct.atomic_t, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ieee80211_rx_status, %struct.anon.150, %struct.anon.153, %struct.anon.163, i8, ptr, ptr, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head, [4 x i8] }
%struct.anon.144 = type { ptr, i8, [16 x %struct.hlist_head], %union.anon.145, i32, i32, i32, i32, i32, %struct.anon.146, %struct.anon.147, %struct.timer_list, %struct.spinlock }
%struct.hlist_head = type { ptr }
%union.anon.145 = type { ptr }
%struct.anon.146 = type { ptr, i32 }
%struct.anon.147 = type { i32 }
%struct.anon.148 = type { %union.anon.149, [0 x %struct.htt_tx_done] }
%union.anon.149 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.htt_tx_done = type { i16, i16, i8 }
%struct.atomic_t = type { i32 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.anon.150 = type { i32, %union.anon.151, i32 }
%union.anon.151 = type { ptr }
%struct.anon.153 = type { i32, %union.anon.154, i32 }
%union.anon.154 = type { ptr }
%struct.anon.163 = type { i8, ptr, i32, i16, i16, i16, i32, i32 }
%struct.ath10k_hw_params = type { i32, i16, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, %struct.ath10k_hw_params_fw, i8, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ath10k_hw_params_fw = type { ptr, ptr, i32, ptr, i32, i32 }
%struct.ath10k_fw_components = type { ptr, ptr, i32, ptr, ptr, i32, %struct.ath10k_fw_file }
%struct.ath10k_fw_file = type { ptr, [32 x i8], [1 x i32], i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.anon.189 = type { i32, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, [32 x i8] }
%struct.anon.190 = type { %struct.completion, %struct.completion, %struct.completion, %struct.delayed_work, i32, i8, i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.anon.191 = type { [6 x %struct.ieee80211_supported_band] }
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
%struct.anon.196 = type { ptr, i32, %struct.ath10k_spec_scan }
%struct.ath10k_spec_scan = type { i8, i8 }
%struct.anon.197 = type { ptr }
%struct.anon.198 = type { %struct.ath10k_fw_components, i8 }
%struct.anon.199 = type { i32, i32, i32, i32 }
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
%struct.anon.200 = type { i16, i32, i32, i32, i32, i32 }
%struct.ath10k_radar_found_info = type { i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath10k_bus_params = type { i32, i32, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.phyerr_fft_report = type { i32, i32 }
%struct.fft_sample_tlv = type <{ i8, i16 }>
%struct.wmi_phyerr_ev_arg = type { i32, i16, i16, i8, i8, i8, [4 x i16], i32, ptr, i8 }
%struct.fft_sample_ath10k = type <{ %struct.fft_sample_tlv, i8, i16, i16, i16, i16, i16, i16, i64, i8, i8, i8, i8, i8, [0 x i8] }>
%struct.rchan = type { i32, i32, i32, i32, ptr, %struct.kref, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, [255 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rchan_buf = type { ptr, ptr, i32, i32, i32, ptr, %struct.wait_queue_head, %struct.irq_work, ptr, %struct.kref, ptr, i32, i32, ptr, i32, i32, i32, i32, [124 x i8] }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.ath10k_vif = type { %struct.list_head, i32, i16, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i8, i8, i8, i8, i32, [6 x i8], [4 x ptr], i8, i16, %union.anon.192, i8, i8, i32, i32, i8, %struct.wmi_wmm_params_all_arg, %struct.work_struct, %struct.delayed_work, %struct.cfg80211_bitrate_mask, i32, i8, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i8], [8 x i32], [8 x i32], i32 }
%union.anon.192 = type { %struct.anon.194 }
%struct.anon.194 = type { [64 x i8], i8, i32, [32 x i8], i8, i32, ptr }
%struct.wmi_wmm_params_all_arg = type { %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg }
%struct.wmi_wmm_params_arg = type { i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.131] }
%struct.anon.131 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.wmi_vdev_spectral_conf_arg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wmi_cmd_map = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/ath/ath10k/spectral.c\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spectral_scan\00", [18 x i8] zeroinitializer }, align 32
@rfs_spec_scan_cb = internal constant { %struct.rchan_callbacks, [20 x i8] } { %struct.rchan_callbacks { ptr null, ptr @create_buf_file_handler, ptr @remove_buf_file_handler }, [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spectral_scan_ctl\00", [46 x i8] zeroinitializer }, align 32
@fops_spec_scan_ctl = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_spec_scan_ctl, ptr @write_file_spec_scan_ctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spectral_count\00", [17 x i8] zeroinitializer }, align 32
@fops_spectral_count = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_spectral_count, ptr @write_file_spectral_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spectral_bins\00", [18 x i8] zeroinitializer }, align 32
@fops_spectral_bins = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_spectral_bins, ptr @write_file_spectral_bins, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to enable spectral scan: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to configure spectral scan: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@relay_file_operations = external dso_local constant %struct.file_operations, align 4
@.str.7 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"background\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"manual\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"trigger\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to reconfigure spectral scan: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to trigger spectral scan: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@switch.table.read_file_spec_scan_ctl = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 20, i64 40, i64 80]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 509, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 534, i32 47 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"rfs_spec_scan_cb\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 500, i32 37 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 538, i32 22 }
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"fops_spec_scan_ctl\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 356, i32 37 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 542, i32 22 }
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c"fops_spectral_count\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 408, i32 37 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 546, i32 22 }
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c"fops_spectral_bins\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 468, i32 37 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 232, i32 19 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 266, i32 19 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 277, i32 15 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 287, i32 10 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 290, i32 10 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 293, i32 10 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 318, i32 14 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 327, i32 21 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 332, i32 21 }
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 156, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [46 x i8] c"../drivers/net/wireless/ath/ath10k/spectral.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 377, i32 21 }
@___asan_gen_.79 = private unnamed_addr constant [37 x i8] c"switch.table.read_file_spec_scan_ctl\00", align 1
@llvm.compiler.used = appending global [21 x ptr] [ptr @.str, ptr @.str.1, ptr @rfs_spec_scan_cb, ptr @.str.2, ptr @fops_spec_scan_ctl, ptr @.str.3, ptr @fops_spectral_count, ptr @.str.4, ptr @fops_spectral_bins, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @switch.table.read_file_spec_scan_ctl], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfs_spec_scan_cb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_spec_scan_ctl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_spectral_count to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_spectral_bins to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.read_file_spec_scan_ctl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_spectral_process_fft(ptr nocapture noundef readonly %ar, ptr nocapture noundef readonly %phyerr, ptr nocapture noundef readonly %fftr, i32 noundef %bin_len, i64 noundef %tsf) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [285 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 285, ptr nonnull %buf) #8
  %0 = getelementptr inbounds i8, ptr %buf, i32 3
  %1 = call ptr @memset(ptr %0, i32 255, i32 282)
  %2 = tail call i32 @llvm.ctpop.i32(i32 %bin_len) #8, !range !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %entry.ath10k_spectral_fix_bin_size.exit_crit_edge, label %if.then.i

entry.ath10k_spectral_fix_bin_size.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath10k_spectral_fix_bin_size.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %spectral_bin_discard.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 45, i32 22
  %4 = ptrtoint ptr %spectral_bin_discard.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spectral_bin_discard.i, align 8
  %sub.i = sub i32 %bin_len, %5
  br label %ath10k_spectral_fix_bin_size.exit

ath10k_spectral_fix_bin_size.exit:                ; preds = %if.then.i, %entry.ath10k_spectral_fix_bin_size.exit_crit_edge
  %bin_len.addr.0.i = phi i32 [ %sub.i, %if.then.i ], [ %bin_len, %entry.ath10k_spectral_fix_bin_size.exit_crit_edge ]
  %6 = add i32 %bin_len.addr.0.i, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -193, i32 %6)
  %7 = icmp ult i32 %6, -193
  br i1 %7, label %ath10k_spectral_fix_bin_size.exit.cleanup_crit_edge, label %if.end

ath10k_spectral_fix_bin_size.exit.cleanup_crit_edge: ; preds = %ath10k_spectral_fix_bin_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ath10k_spectral_fix_bin_size.exit
  %8 = ptrtoint ptr %fftr to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %fftr, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %reg13 = getelementptr inbounds %struct.phyerr_fft_report, ptr %fftr, i32 0, i32 1
  %11 = ptrtoint ptr %reg13 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %reg13, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = trunc i32 %bin_len.addr.0.i to i16
  %conv = add nuw nsw i16 %14, 26
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %buf, align 1
  %length5 = getelementptr inbounds %struct.fft_sample_tlv, ptr %buf, i32 0, i32 1
  %16 = ptrtoint ptr %length5 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %conv, ptr %length5, align 1
  %chan_width_mhz = getelementptr inbounds %struct.wmi_phyerr_ev_arg, ptr %phyerr, i32 0, i32 4
  %17 = ptrtoint ptr %chan_width_mhz to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %chan_width_mhz, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i8 %18, label %sw.default [
    i8 20, label %if.end.sw.epilog_crit_edge
    i8 40, label %sw.bb8
    i8 80, label %sw.bb10
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %bin_len.addr.0.i)
  %cmp11 = icmp eq i32 %bin_len.addr.0.i, 64
  br i1 %cmp11, label %sw.bb10.cleanup_crit_edge, label %sw.bb10.sw.epilog_crit_edge

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10.sw.epilog_crit_edge, %sw.bb8, %if.end.sw.epilog_crit_edge
  %.sink = phi i8 [ %18, %sw.default ], [ 44, %sw.bb8 ], [ 22, %if.end.sw.epilog_crit_edge ], [ 88, %sw.bb10.sw.epilog_crit_edge ]
  %chan_width_mhz17 = getelementptr inbounds %struct.fft_sample_ath10k, ptr %buf, i32 0, i32 1
  %20 = ptrtoint ptr %chan_width_mhz17 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink, ptr %chan_width_mhz17, align 1
  %shr = lshr i32 %13, 26
  %conv18 = trunc i32 %shr to i8
  %relpwr_db = getelementptr inbounds %struct.fft_sample_ath10k, ptr %buf, i32 0, i32 11
  %21 = ptrtoint ptr %relpwr_db to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv18, ptr %relpwr_db, align 1
  %and19 = lshr i32 %13, 18
  %conv21 = trunc i32 %and19 to i8
  %avgpwr_db = getelementptr inbounds %struct.fft_sample_ath10k, ptr %buf, i32 0, i32 12
  %22 = ptrtoint ptr %avgpwr_db to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv21, ptr %avgpwr_db, align 1
  %and22 = lshr i32 %13, 8
  %23 = trunc i32 %and22 to i16
  %conv24 = and i16 %23, 1023
  %max_magnitude = getelementptr inbounds %struct.fft_sample_ath10k, ptr %buf, i32 0, i32 5
  %24 = ptrtoint ptr %max_magnitude to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %conv24, ptr %max_magnitude, align 1
  %conv27 = trunc i32 %10 to i8
  %max_index = getelementptr inbounds %struct.fft_sample_ath10k, ptr %buf, i32 0, i32 9
  %25 = ptrtoint ptr %max_index to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv27, ptr %max_index, align 1
  %rssi_combined = getelementptr inbounds %struct.wmi_phyerr_ev_arg, ptr %phyerr, i32 0, i32 3
  %26 = ptrtoint ptr %rssi_combined to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rssi_combined, align 4
  %rssi = getelementptr inbounds %struct.fft_sample_ath10k, ptr %buf, i32 0, i32 10
  %28 = ptrtoint ptr %rssi to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %rssi, align 1
  %shr29 = lshr i32 %10, 23
  %conv30 = trunc i32 %shr29 to i16
  %and31 = lshr i32 %10, 14
  %29 = trunc i32 %and31 to i16
  %conv33 = and i16 %29, 511
  %total_gain_db34 = getelementptr inbounds %struct.fft_sample_ath10k, ptr %buf, i32 0, i32 6
  %30 = ptrtoint ptr %total_gain_db34 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 %conv30, ptr %total_gain_db34, align 1
  %base_pwr_db35 = getelementptr inbounds %struct.fft_sample_ath10k, ptr %buf, i32 0, i32 7
  %31 = ptrtoint ptr %base_pwr_db35 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %conv33, ptr %base_pwr_db35, align 1
  %freq136 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, ptr %phyerr, i32 0, i32 1
  %32 = ptrtoint ptr %freq136 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %freq136, align 4
  %freq237 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, ptr %phyerr, i32 0, i32 2
  %34 = ptrtoint ptr %freq237 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %freq237, align 2
  %freq138 = getelementptr inbounds %struct.fft_sample_ath10k, ptr %buf, i32 0, i32 2
  %36 = ptrtoint ptr %freq138 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 %33, ptr %freq138, align 1
  %freq239 = getelementptr inbounds %struct.fft_sample_ath10k, ptr %buf, i32 0, i32 3
  %37 = ptrtoint ptr %freq239 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %35, ptr %freq239, align 1
  %and40 = lshr i32 %10, 12
  %conv42 = and i32 %and40, 3
  %arrayidx = getelementptr %struct.wmi_phyerr_ev_arg, ptr %phyerr, i32 0, i32 6, i32 %conv42
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx, align 2
  %noise = getelementptr inbounds %struct.fft_sample_ath10k, ptr %buf, i32 0, i32 4
  %40 = ptrtoint ptr %noise to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %noise, align 1
  %spectral_bin_offset = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 45, i32 33
  %41 = ptrtoint ptr %spectral_bin_offset to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %spectral_bin_offset, align 16
  %add43 = add i32 %42, 8
  %add.ptr = getelementptr i8, ptr %fftr, i32 %add43
  %tsf44 = getelementptr inbounds %struct.fft_sample_ath10k, ptr %buf, i32 0, i32 8
  %43 = ptrtoint ptr %tsf44 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 %tsf, ptr %tsf44, align 1
  %div40.i = lshr i32 %bin_len.addr.0.i, 1
  %sext = shl i32 %10, 24
  %conv.i = ashr exact i32 %sext, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %div40.i, i32 %conv.i)
  %cmp.i = icmp sge i32 %div40.i, %conv.i
  %sub.i123 = sub nsw i32 0, %div40.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %sub.i123)
  %cmp3.not.i = icmp sgt i32 %conv.i, %sub.i123
  %or.cond.i = select i1 %cmp.i, i1 %cmp3.not.i, i1 false
  br i1 %or.cond.i, label %for.cond.preheader.i, label %sw.epilog.get_max_exp.exit_crit_edge

sw.epilog.get_max_exp.exit_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_max_exp.exit

for.cond.preheader.i:                             ; preds = %sw.epilog
  %add.i = add nsw i32 %conv.i, %div40.i
  %arrayidx.i = getelementptr i8, ptr %add.ptr, i32 %add.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i, align 1
  %conv9.i = zext i8 %45 to i32
  %conv10.i = zext i16 %conv24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i, i32 %conv9.i)
  %cmp12.i = icmp eq i32 %conv10.i, %conv9.i
  br i1 %cmp12.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.inc.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i:                                        ; preds = %for.cond.preheader.i
  %shr.1.i = lshr i32 %conv10.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i, i32 %conv9.i)
  %cmp12.1.i = icmp eq i32 %shr.1.i, %conv9.i
  br i1 %cmp12.1.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.1.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %shr.2.i = lshr i32 %conv10.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i, i32 %conv9.i)
  %cmp12.2.i = icmp eq i32 %shr.2.i, %conv9.i
  br i1 %cmp12.2.i, label %for.inc.1.i.for.end.i_crit_edge, label %for.inc.2.i

for.inc.1.i.for.end.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %shr.3.i = lshr i32 %conv10.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.i, i32 %conv9.i)
  %cmp12.3.i = icmp eq i32 %shr.3.i, %conv9.i
  br i1 %cmp12.3.i, label %for.inc.2.i.for.end.i_crit_edge, label %for.inc.3.i

for.inc.2.i.for.end.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %shr.4.i = lshr i32 %conv10.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.4.i, i32 %conv9.i)
  %cmp12.4.i = icmp eq i32 %shr.4.i, %conv9.i
  br i1 %cmp12.4.i, label %for.inc.3.i.for.end.i_crit_edge, label %for.inc.4.i

for.inc.3.i.for.end.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %shr.5.i = lshr i32 %conv10.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.5.i, i32 %conv9.i)
  %cmp12.5.i = icmp eq i32 %shr.5.i, %conv9.i
  br i1 %cmp12.5.i, label %for.inc.4.i.for.end.i_crit_edge, label %for.inc.5.i

for.inc.4.i.for.end.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %shr.6.i = lshr i32 %conv10.i, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.6.i, i32 %conv9.i)
  %cmp12.6.i = icmp eq i32 %shr.6.i, %conv9.i
  br i1 %cmp12.6.i, label %for.inc.5.i.for.end.i_crit_edge, label %for.inc.6.i

for.inc.5.i.for.end.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.7.i = lshr i32 %conv10.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.7.i, i32 %conv9.i)
  %cmp12.7.i = icmp eq i32 %shr.7.i, %conv9.i
  %spec.select.i = select i1 %cmp12.7.i, i8 7, i8 8
  %spec.select43.i = select i1 %cmp12.7.i, i32 7, i32 8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.6.i, %for.inc.5.i.for.end.i_crit_edge, %for.inc.4.i.for.end.i_crit_edge, %for.inc.3.i.for.end.i_crit_edge, %for.inc.2.i.for.end.i_crit_edge, %for.inc.1.i.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %max_exp.0.lcssa.i = phi i8 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ 1, %for.inc.i.for.end.i_crit_edge ], [ 2, %for.inc.1.i.for.end.i_crit_edge ], [ 3, %for.inc.2.i.for.end.i_crit_edge ], [ 4, %for.inc.3.i.for.end.i_crit_edge ], [ 5, %for.inc.4.i.for.end.i_crit_edge ], [ 6, %for.inc.5.i.for.end.i_crit_edge ], [ %spec.select.i, %for.inc.6.i ]
  %conv5.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ 1, %for.inc.i.for.end.i_crit_edge ], [ 2, %for.inc.1.i.for.end.i_crit_edge ], [ 3, %for.inc.2.i.for.end.i_crit_edge ], [ 4, %for.inc.3.i.for.end.i_crit_edge ], [ 5, %for.inc.4.i.for.end.i_crit_edge ], [ 6, %for.inc.5.i.for.end.i_crit_edge ], [ %spec.select43.i, %for.inc.6.i ]
  %shr22.i = lshr i32 %conv10.i, %conv5.lcssa.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr22.i, i32 %conv9.i)
  %cmp23.not.i = icmp eq i32 %shr22.i, %conv9.i
  %max_exp.0..i = select i1 %cmp23.not.i, i8 %max_exp.0.lcssa.i, i8 0
  br label %get_max_exp.exit

get_max_exp.exit:                                 ; preds = %for.end.i, %sw.epilog.get_max_exp.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %sw.epilog.get_max_exp.exit_crit_edge ], [ %max_exp.0..i, %for.end.i ]
  %max_exp = getelementptr inbounds %struct.fft_sample_ath10k, ptr %buf, i32 0, i32 13
  %46 = ptrtoint ptr %max_exp to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %retval.0.i, ptr %max_exp, align 1
  %data = getelementptr inbounds %struct.fft_sample_ath10k, ptr %buf, i32 0, i32 14
  %47 = call ptr @memcpy(ptr %data, ptr %add.ptr, i32 %bin_len.addr.0.i)
  %add48 = add nuw nsw i32 %div40.i, 1
  %arrayidx49 = getelementptr %struct.fft_sample_ath10k, ptr %buf, i32 0, i32 14, i32 %add48
  %48 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %49 to i16
  %sub = add nsw i32 %div40.i, -1
  %arrayidx52 = getelementptr %struct.fft_sample_ath10k, ptr %buf, i32 0, i32 14, i32 %sub
  %50 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %51 to i16
  %add54 = add nuw nsw i16 %conv53, %conv50
  %div55122 = lshr i16 %add54, 1
  %conv56 = trunc i16 %div55122 to i8
  %arrayidx58 = getelementptr %struct.fft_sample_ath10k, ptr %buf, i32 0, i32 14, i32 %div40.i
  %52 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv56, ptr %arrayidx58, align 1
  %spectral.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 116
  %53 = ptrtoint ptr %spectral.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %spectral.i, align 16
  %tobool.not.i = icmp eq ptr %54, null
  br i1 %tobool.not.i, label %get_max_exp.exit.cleanup_crit_edge, label %if.end.i

get_max_exp.exit.cleanup_crit_edge:               ; preds = %get_max_exp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %get_max_exp.exit
  %add.i125 = add nuw nsw i32 %bin_len.addr.0.i, 29
  %55 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !56
  %and.i.i.i = and i32 %55, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.do.body12.i.i_crit_edge

if.end.i.do.body12.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  br label %do.body12.i.i

do.body12.i.i:                                    ; preds = %if.then.i.i, %if.end.i.do.body12.i.i_crit_edge
  %buf16.i.i = getelementptr inbounds %struct.rchan, ptr %54, i32 0, i32 8
  %56 = ptrtoint ptr %buf16.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buf16.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  %59 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i77.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i77.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %64, %58
  %65 = inttoptr i32 %add.i.i to ptr
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %offset.i.i = getelementptr inbounds %struct.rchan_buf, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %offset.i.i, align 8
  %add19.i.i = add i32 %69, %add.i125
  %subbuf_size.i.i = getelementptr inbounds %struct.rchan, ptr %54, i32 0, i32 1
  %70 = ptrtoint ptr %subbuf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %subbuf_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add19.i.i, i32 %71)
  %cmp20.i.i = icmp ugt i32 %add19.i.i, %71
  br i1 %cmp20.i.i, label %if.then24.i.i, label %do.body12.i.i.if.end26.i.i_crit_edge, !prof !57

do.body12.i.i.if.end26.i.i_crit_edge:             ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i.i

if.then24.i.i:                                    ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call25.i.i = tail call i32 @relay_switch_subbuf(ptr noundef %67, i32 noundef %add.i125) #8
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then24.i.i, %do.body12.i.i.if.end26.i.i_crit_edge
  %length.addr.0.i.i = phi i32 [ %call25.i.i, %if.then24.i.i ], [ %add.i125, %do.body12.i.i.if.end26.i.i_crit_edge ]
  %data27.i.i = getelementptr inbounds %struct.rchan_buf, ptr %67, i32 0, i32 1
  %72 = ptrtoint ptr %data27.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data27.i.i, align 4
  %74 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %offset.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %73, i32 %75
  %76 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %buf, i32 %length.addr.0.i.i)
  %77 = load i32, ptr %offset.i.i, align 8
  %add30.i.i = add i32 %77, %length.addr.0.i.i
  store i32 %add30.i.i, ptr %offset.i.i, align 8
  br i1 %tobool.not.i.i, label %if.then40.i.i, label %if.end26.i.i.do.body42.i.i_crit_edge

if.end26.i.i.do.body42.i.i_crit_edge:             ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42.i.i

if.then40.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_on() #8
  br label %do.body42.i.i

do.body42.i.i:                                    ; preds = %if.then40.i.i, %if.end26.i.i.do.body42.i.i_crit_edge
  %78 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !58
  %and.i.i.i.i = and i32 %78, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool50.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool50.not.i.i, label %if.then59.i.i, label %do.body42.i.i.relay_write.exit.i_crit_edge, !prof !57

do.body42.i.i.relay_write.exit.i_crit_edge:       ; preds = %do.body42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %relay_write.exit.i

if.then59.i.i:                                    ; preds = %do.body42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %relay_write.exit.i

relay_write.exit.i:                               ; preds = %if.then59.i.i, %do.body42.i.i.relay_write.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %55) #8, !srcloc !59
  br label %cleanup

cleanup:                                          ; preds = %relay_write.exit.i, %get_max_exp.exit.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %ath10k_spectral_fix_bin_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %ath10k_spectral_fix_bin_size.exit.cleanup_crit_edge ], [ -22, %sw.bb10.cleanup_crit_edge ], [ 0, %get_max_exp.exit.cleanup_crit_edge ], [ 0, %relay_write.exit.i ]
  call void @llvm.lifetime.end.p0(i64 285, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_spectral_start(ptr noundef %ar) local_unnamed_addr #0 align 64 {
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
  %dep_map = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 80, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !57

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 509, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %arvifs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 83
  %1 = ptrtoint ptr %arvifs to i32
  call void @__asan_load4_noabort(i32 %1)
  %arvif.045 = load ptr, ptr %arvifs, align 4
  %cmp26.not46 = icmp eq ptr %arvif.045, %arvifs
  br i1 %cmp26.not46, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %arvif.047 = phi ptr [ %arvif.0, %for.body.for.body_crit_edge ], [ %arvif.045, %if.end.for.body_crit_edge ]
  %spectral_enabled = getelementptr inbounds %struct.ath10k_vif, ptr %arvif.047, i32 0, i32 16
  %2 = ptrtoint ptr %spectral_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %spectral_enabled, align 2
  %3 = ptrtoint ptr %arvif.047 to i32
  call void @__asan_load4_noabort(i32 %3)
  %arvif.0 = load ptr, ptr %arvif.047, align 4
  %cmp26.not = icmp eq ptr %arvif.0, %arvifs
  br i1 %cmp26.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %mode = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 116, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mode, align 4
  %config = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 116, i32 2
  %5 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %config, align 8
  %fft_size = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 116, i32 2, i32 1
  %6 = ptrtoint ptr %fft_size to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 7, ptr %fft_size, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_spectral_vif_stop(ptr nocapture noundef readonly %arvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spectral_enabled = getelementptr inbounds %struct.ath10k_vif, ptr %arvif, i32 0, i32 16
  %0 = ptrtoint ptr %spectral_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %spectral_enabled, align 2, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ar = getelementptr inbounds %struct.ath10k_vif, ptr %arvif, i32 0, i32 12
  %2 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar, align 4
  %call = tail call fastcc i32 @ath10k_spectral_scan_config(ptr noundef %3, i32 noundef 0)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_spectral_scan_config(ptr noundef %ar, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.wmi_vdev_spectral_conf_arg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %arg) #8
  %0 = call ptr @memset(ptr %arg, i32 255, i32 76)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end.i_crit_edge, label %land.rhs

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 80, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !57

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !57

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %arvifs.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 83
  %2 = ptrtoint ptr %arvifs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arvifs.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %arvifs.i
  br i1 %cmp.i.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.cond.i_crit_edge

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  br label %for.cond.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i.for.cond.i_crit_edge
  %arvif.0.in.i = phi ptr [ %arvif.0.i, %for.body.i.for.cond.i_crit_edge ], [ %arvifs.i, %if.end.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %arvif.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %arvif.0.i = load ptr, ptr %arvif.0.in.i, align 4
  %cmp31.not.i = icmp eq ptr %arvif.0.i, %arvifs.i
  br i1 %cmp31.not.i, label %for.cond.i.ath10k_get_spectral_vdev.exit_crit_edge, label %for.body.i

for.cond.i.ath10k_get_spectral_vdev.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath10k_get_spectral_vdev.exit

for.body.i:                                       ; preds = %for.cond.i
  %spectral_enabled.i = getelementptr inbounds %struct.ath10k_vif, ptr %arvif.0.i, i32 0, i32 16
  %5 = ptrtoint ptr %spectral_enabled.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %spectral_enabled.i, align 2, !range !60
  %tobool34.not.i = icmp eq i8 %6, 0
  br i1 %tobool34.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.ath10k_get_spectral_vdev.exit_crit_edge

for.body.i.ath10k_get_spectral_vdev.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath10k_get_spectral_vdev.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

ath10k_get_spectral_vdev.exit:                    ; preds = %for.body.i.ath10k_get_spectral_vdev.exit_crit_edge, %for.cond.i.ath10k_get_spectral_vdev.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %for.cond.i.ath10k_get_spectral_vdev.exit_crit_edge ], [ %arvif.0.i, %for.body.i.ath10k_get_spectral_vdev.exit_crit_edge ]
  %tobool25.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool25.not, label %ath10k_get_spectral_vdev.exit.cleanup_crit_edge, label %if.end27

ath10k_get_spectral_vdev.exit.cleanup_crit_edge:  ; preds = %ath10k_get_spectral_vdev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %ath10k_get_spectral_vdev.exit
  %vdev_id28 = getelementptr inbounds %struct.ath10k_vif, ptr %retval.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %vdev_id28 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vdev_id28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp29 = icmp ne i32 %mode, 0
  %spectral_enabled = getelementptr inbounds %struct.ath10k_vif, ptr %retval.0.i, i32 0, i32 16
  %frombool = zext i1 %cmp29 to i8
  %9 = ptrtoint ptr %spectral_enabled to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %spectral_enabled, align 2
  %mode30 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 116, i32 1
  %10 = ptrtoint ptr %mode30 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mode, ptr %mode30, align 4
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 41, i32 11
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %gen_vdev_spectral_enable.i = getelementptr inbounds %struct.wmi_ops, ptr %12, i32 0, i32 39
  %13 = ptrtoint ptr %gen_vdev_spectral_enable.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gen_vdev_spectral_enable.i, align 4
  %tobool.not.i84 = icmp eq ptr %14, null
  br i1 %tobool.not.i84, label %if.end27.if.then33_crit_edge, label %if.end.i86

if.end27.if.then33_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

if.end.i86:                                       ; preds = %if.end27
  %call.i85 = tail call ptr %14(ptr noundef %ar, i32 noundef %8, i32 noundef 2, i32 noundef 2) #8
  %cmp.i.i = icmp ugt ptr %call.i85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call.i85 to i32
  br label %ath10k_wmi_vdev_spectral_enable.exit

if.end7.i:                                        ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #10
  %cmd.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 41, i32 7
  %16 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmd.i, align 4
  %vdev_spectral_scan_enable_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %17, i32 0, i32 88
  %18 = ptrtoint ptr %vdev_spectral_scan_enable_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vdev_spectral_scan_enable_cmdid.i, align 4
  %call9.i = tail call i32 @ath10k_wmi_cmd_send(ptr noundef %ar, ptr noundef %call.i85, i32 noundef %19) #8
  br label %ath10k_wmi_vdev_spectral_enable.exit

ath10k_wmi_vdev_spectral_enable.exit:             ; preds = %if.end7.i, %if.then5.i
  %retval.0.i87 = phi i32 [ %15, %if.then5.i ], [ %call9.i, %if.end7.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i87)
  %cmp32 = icmp slt i32 %retval.0.i87, 0
  br i1 %cmp32, label %ath10k_wmi_vdev_spectral_enable.exit.if.then33_crit_edge, label %if.end34

ath10k_wmi_vdev_spectral_enable.exit.if.then33_crit_edge: ; preds = %ath10k_wmi_vdev_spectral_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

if.then33:                                        ; preds = %ath10k_wmi_vdev_spectral_enable.exit.if.then33_crit_edge, %if.end27.if.then33_crit_edge
  %retval.0.i87103 = phi i32 [ %retval.0.i87, %ath10k_wmi_vdev_spectral_enable.exit.if.then33_crit_edge ], [ -95, %if.end27.if.then33_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.5, i32 noundef %retval.0.i87103) #8
  br label %cleanup

if.end34:                                         ; preds = %ath10k_wmi_vdev_spectral_enable.exit
  %20 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %mode, label %if.else [
    i32 0, label %if.end34.cleanup_crit_edge
    i32 1, label %if.end34.if.end48_crit_edge
  ]

if.end34.if.end48_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %config = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 116, i32 2
  %21 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %config, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp44 = icmp eq i8 %22, 0
  %narrow = select i1 %cmp44, i8 1, i8 %22
  %cond = zext i8 %narrow to i32
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.end34.if.end48_crit_edge
  %count.0 = phi i32 [ %cond, %if.else ], [ 0, %if.end34.if.end48_crit_edge ]
  %23 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %8, ptr %arg, align 4
  %scan_count = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, ptr %arg, i32 0, i32 1
  %24 = ptrtoint ptr %scan_count to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %count.0, ptr %scan_count, align 4
  %scan_period = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, ptr %arg, i32 0, i32 2
  %25 = ptrtoint ptr %scan_period to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 35, ptr %scan_period, align 4
  %scan_priority = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, ptr %arg, i32 0, i32 3
  %26 = ptrtoint ptr %scan_priority to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %scan_priority, align 4
  %fft_size = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 116, i32 2, i32 1
  %27 = ptrtoint ptr %fft_size to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fft_size, align 1
  %conv52 = zext i8 %28 to i32
  %scan_fft_size = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, ptr %arg, i32 0, i32 4
  %29 = ptrtoint ptr %scan_fft_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv52, ptr %scan_fft_size, align 4
  %scan_gc_ena = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, ptr %arg, i32 0, i32 5
  %30 = ptrtoint ptr %scan_gc_ena to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %scan_gc_ena, align 4
  %scan_restart_ena = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, ptr %arg, i32 0, i32 6
  %31 = ptrtoint ptr %scan_restart_ena to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %scan_restart_ena, align 4
  %scan_noise_floor_ref = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, ptr %arg, i32 0, i32 7
  %32 = ptrtoint ptr %scan_noise_floor_ref to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -96, ptr %scan_noise_floor_ref, align 4
  %scan_init_delay = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, ptr %arg, i32 0, i32 8
  %33 = ptrtoint ptr %scan_init_delay to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 80, ptr %scan_init_delay, align 4
  %scan_nb_tone_thr = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, ptr %arg, i32 0, i32 9
  %34 = ptrtoint ptr %scan_nb_tone_thr to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 12, ptr %scan_nb_tone_thr, align 4
  %scan_str_bin_thr = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, ptr %arg, i32 0, i32 10
  %35 = ptrtoint ptr %scan_str_bin_thr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 8, ptr %scan_str_bin_thr, align 4
  %scan_wb_rpt_mode = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, ptr %arg, i32 0, i32 11
  %36 = ptrtoint ptr %scan_wb_rpt_mode to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %scan_wb_rpt_mode, align 4
  %scan_rssi_rpt_mode = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, ptr %arg, i32 0, i32 12
  %37 = ptrtoint ptr %scan_rssi_rpt_mode to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %scan_rssi_rpt_mode, align 4
  %scan_rssi_thr = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, ptr %arg, i32 0, i32 13
  %38 = ptrtoint ptr %scan_rssi_thr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 240, ptr %scan_rssi_thr, align 4
  %scan_pwr_format = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, ptr %arg, i32 0, i32 14
  %39 = ptrtoint ptr %scan_pwr_format to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %scan_pwr_format, align 4
  %scan_rpt_mode = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, ptr %arg, i32 0, i32 15
  %40 = ptrtoint ptr %scan_rpt_mode to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %scan_rpt_mode, align 4
  %scan_bin_scale = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, ptr %arg, i32 0, i32 16
  %41 = ptrtoint ptr %scan_bin_scale to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %scan_bin_scale, align 4
  %scan_dbm_adj = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, ptr %arg, i32 0, i32 17
  %42 = ptrtoint ptr %scan_dbm_adj to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %scan_dbm_adj, align 4
  %scan_chn_mask = getelementptr inbounds %struct.wmi_vdev_spectral_conf_arg, ptr %arg, i32 0, i32 18
  %43 = ptrtoint ptr %scan_chn_mask to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %scan_chn_mask, align 4
  %44 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i, align 4
  %gen_vdev_spectral_conf.i = getelementptr inbounds %struct.wmi_ops, ptr %45, i32 0, i32 38
  %46 = ptrtoint ptr %gen_vdev_spectral_conf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gen_vdev_spectral_conf.i, align 4
  %tobool.not.i89 = icmp eq ptr %47, null
  br i1 %tobool.not.i89, label %if.end48.if.then56_crit_edge, label %if.end.i92

if.end48.if.then56_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then56

if.end.i92:                                       ; preds = %if.end48
  %call.i90 = call ptr %47(ptr noundef %ar, ptr noundef nonnull %arg) #8
  %cmp.i.i91 = icmp ugt ptr %call.i90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i91, label %if.then5.i93, label %if.end7.i96

if.then5.i93:                                     ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %call.i90 to i32
  br label %ath10k_wmi_vdev_spectral_conf.exit

if.end7.i96:                                      ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #10
  %cmd.i94 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 41, i32 7
  %49 = ptrtoint ptr %cmd.i94 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cmd.i94, align 4
  %vdev_spectral_scan_configure_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %50, i32 0, i32 87
  %51 = ptrtoint ptr %vdev_spectral_scan_configure_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vdev_spectral_scan_configure_cmdid.i, align 4
  %call9.i95 = call i32 @ath10k_wmi_cmd_send(ptr noundef %ar, ptr noundef %call.i90, i32 noundef %52) #8
  br label %ath10k_wmi_vdev_spectral_conf.exit

ath10k_wmi_vdev_spectral_conf.exit:               ; preds = %if.end7.i96, %if.then5.i93
  %retval.0.i97 = phi i32 [ %48, %if.then5.i93 ], [ %call9.i95, %if.end7.i96 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i97)
  %cmp54 = icmp slt i32 %retval.0.i97, 0
  br i1 %cmp54, label %ath10k_wmi_vdev_spectral_conf.exit.if.then56_crit_edge, label %ath10k_wmi_vdev_spectral_conf.exit.cleanup_crit_edge

ath10k_wmi_vdev_spectral_conf.exit.cleanup_crit_edge: ; preds = %ath10k_wmi_vdev_spectral_conf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ath10k_wmi_vdev_spectral_conf.exit.if.then56_crit_edge: ; preds = %ath10k_wmi_vdev_spectral_conf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then56

if.then56:                                        ; preds = %ath10k_wmi_vdev_spectral_conf.exit.if.then56_crit_edge, %if.end48.if.then56_crit_edge
  %retval.0.i97106 = phi i32 [ %retval.0.i97, %ath10k_wmi_vdev_spectral_conf.exit.if.then56_crit_edge ], [ -95, %if.end48.if.then56_crit_edge ]
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.6, i32 noundef %retval.0.i97106) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %ath10k_wmi_vdev_spectral_conf.exit.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.then33, %ath10k_get_spectral_vdev.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i87103, %if.then33 ], [ %retval.0.i97106, %if.then56 ], [ -19, %ath10k_get_spectral_vdev.exit.cleanup_crit_edge ], [ %mode, %if.end34.cleanup_crit_edge ], [ 0, %ath10k_wmi_vdev_spectral_conf.exit.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %arg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_spectral_create(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debug, align 16
  %call = tail call ptr @relay_open(ptr noundef nonnull @.str.1, ptr noundef %1, i32 noundef 1140, i32 noundef 2500, ptr noundef nonnull @rfs_spec_scan_cb, ptr noundef null) #8
  %spectral = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 116
  %2 = ptrtoint ptr %spectral to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %spectral, align 16
  %3 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %debug, align 16
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 384, ptr noundef %4, ptr noundef %ar, ptr noundef nonnull @fops_spec_scan_ctl) #8
  %5 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %debug, align 16
  %call6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 384, ptr noundef %6, ptr noundef %ar, ptr noundef nonnull @fops_spectral_count) #8
  %7 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %debug, align 16
  %call9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 384, ptr noundef %8, ptr noundef %ar, ptr noundef nonnull @fops_spectral_bins) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @relay_open(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_spectral_destroy(ptr nocapture noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spectral = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 116
  %0 = ptrtoint ptr %spectral to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spectral, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @relay_close(ptr noundef nonnull %1) #8
  %2 = ptrtoint ptr %spectral to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %spectral, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @relay_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @relay_switch_subbuf(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_wmi_cmd_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @create_buf_file_handler(ptr noundef %filename, ptr noundef %parent, i16 noundef zeroext %mode, ptr noundef %buf, ptr nocapture noundef writeonly %is_global) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_file(ptr noundef %filename, i16 noundef zeroext %mode, ptr noundef %parent, ptr noundef %buf, ptr noundef nonnull @relay_file_operations) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %is_global to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %is_global, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @remove_buf_file_handler(ptr noundef %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debugfs_remove(ptr noundef %dentry) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_spec_scan_ctl(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %mode1 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 116, i32 1
  %2 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode1, align 4
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.read_file_spec_scan_ctl, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %mode.0 = phi ptr [ @.str.7, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %call = tail call i32 @strlen(ptr noundef nonnull %mode.0) #11
  %call5 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %mode.0, i32 noundef %call) #8
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_spec_scan_ctl(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  %3 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %2, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %2, i32 -1226833920) #12, !srcloc !61
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !62

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %2) #8
  %5 = call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !63
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %2) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #8, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %2, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %2, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !62

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %2, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx, align 1
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) @.str.11, ptr noundef nonnull dereferenceable(7) %buf, i32 7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp3 = icmp eq i32 %bcmp, 0
  br i1 %cmp3, label %if.then4, label %if.else21

if.then4:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 116, i32 1
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  %.off = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then9, label %if.then4.if.end43.thread_crit_edge

if.then4.if.end43.thread_crit_edge:               ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.thread

if.then9:                                         ; preds = %if.then4
  %call12 = call fastcc i32 @ath10k_spectral_scan_config(ptr noundef %1, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.then9.if.end15_crit_edge

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %call12) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then9.if.end15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %12 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end15.if.end.i.i76_crit_edge, label %land.rhs.i

if.end15.if.end.i.i76_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i76

land.rhs.i:                                       ; preds = %if.end15
  %dep_map.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80, i32 5
  %call.i.i74 = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i74)
  %cmp.not.i = icmp eq i32 %call.i.i74, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !57

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 185, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr.i = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i76_crit_edge, label %land.rhs.i.i

if.end.i.if.end.i.i76_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i76

land.rhs.i.i:                                     ; preds = %if.end.i
  %call.i.i.i75 = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i75)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i75, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i76_crit_edge, !prof !57

land.rhs.i.i.if.end.i.i76_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i76

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i76

if.end.i.i76:                                     ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i76_crit_edge, %if.end.i.if.end.i.i76_crit_edge, %if.end15.if.end.i.i76_crit_edge
  %arvifs.i.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 83
  %13 = ptrtoint ptr %arvifs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %arvifs.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %14, %arvifs.i.i
  br i1 %cmp.i.not.i.i, label %if.end.i.i76.if.then18_crit_edge, label %if.end.i.i76.for.cond.i.i_crit_edge

if.end.i.i76.for.cond.i.i_crit_edge:              ; preds = %if.end.i.i76
  br label %for.cond.i.i

if.end.i.i76.if.then18_crit_edge:                 ; preds = %if.end.i.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i.i76.for.cond.i.i_crit_edge
  %arvif.0.in.i.i = phi ptr [ %arvif.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %arvifs.i.i, %if.end.i.i76.for.cond.i.i_crit_edge ]
  %15 = ptrtoint ptr %arvif.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %arvif.0.i.i = load ptr, ptr %arvif.0.in.i.i, align 4
  %cmp31.not.i.i = icmp eq ptr %arvif.0.i.i, %arvifs.i.i
  br i1 %cmp31.not.i.i, label %for.cond.i.i.ath10k_get_spectral_vdev.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.ath10k_get_spectral_vdev.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath10k_get_spectral_vdev.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %spectral_enabled.i.i = getelementptr inbounds %struct.ath10k_vif, ptr %arvif.0.i.i, i32 0, i32 16
  %16 = ptrtoint ptr %spectral_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %spectral_enabled.i.i, align 2, !range !60
  %tobool34.not.i.i = icmp eq i8 %17, 0
  br i1 %tobool34.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %for.body.i.i.ath10k_get_spectral_vdev.exit.i_crit_edge

for.body.i.i.ath10k_get_spectral_vdev.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath10k_get_spectral_vdev.exit.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

ath10k_get_spectral_vdev.exit.i:                  ; preds = %for.body.i.i.ath10k_get_spectral_vdev.exit.i_crit_edge, %for.cond.i.i.ath10k_get_spectral_vdev.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %14, %for.cond.i.i.ath10k_get_spectral_vdev.exit.i_crit_edge ], [ %arvif.0.i.i, %for.body.i.i.ath10k_get_spectral_vdev.exit.i_crit_edge ]
  %tobool25.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool25.not.i, label %ath10k_get_spectral_vdev.exit.i.if.then18_crit_edge, label %if.end27.i

ath10k_get_spectral_vdev.exit.i.if.then18_crit_edge: ; preds = %ath10k_get_spectral_vdev.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

if.end27.i:                                       ; preds = %ath10k_get_spectral_vdev.exit.i
  %vdev_id28.i = getelementptr inbounds %struct.ath10k_vif, ptr %retval.0.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %vdev_id28.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vdev_id28.i, align 4
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp29.i = icmp eq i32 %21, 0
  br i1 %cmp29.i, label %if.end27.i.if.end43.thread86_crit_edge, label %if.end31.i

if.end27.i.if.end43.thread86_crit_edge:           ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.thread86

if.end31.i:                                       ; preds = %if.end27.i
  %ops.i.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 11
  %22 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i.i, align 4
  %gen_vdev_spectral_enable.i.i = getelementptr inbounds %struct.wmi_ops, ptr %23, i32 0, i32 39
  %24 = ptrtoint ptr %gen_vdev_spectral_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gen_vdev_spectral_enable.i.i, align 4
  %tobool.not.i52.i = icmp eq ptr %25, null
  br i1 %tobool.not.i52.i, label %if.end31.i.if.then18_crit_edge, label %if.end.i54.i

if.end31.i.if.then18_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

if.end.i54.i:                                     ; preds = %if.end31.i
  %call.i53.i = call ptr %25(ptr noundef %1, i32 noundef %19, i32 noundef 2, i32 noundef 1) #8
  %cmp.i.i.i = icmp ugt ptr %call.i53.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then5.i.i, label %if.end7.i.i

if.then5.i.i:                                     ; preds = %if.end.i54.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %call.i53.i to i32
  br label %ath10k_wmi_vdev_spectral_enable.exit.i

if.end7.i.i:                                      ; preds = %if.end.i54.i
  call void @__sanitizer_cov_trace_pc() #10
  %cmd.i.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 7
  %27 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmd.i.i, align 4
  %vdev_spectral_scan_enable_cmdid.i.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %28, i32 0, i32 88
  %29 = ptrtoint ptr %vdev_spectral_scan_enable_cmdid.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vdev_spectral_scan_enable_cmdid.i.i, align 4
  %call9.i.i = call i32 @ath10k_wmi_cmd_send(ptr noundef %1, ptr noundef %call.i53.i, i32 noundef %30) #8
  br label %ath10k_wmi_vdev_spectral_enable.exit.i

ath10k_wmi_vdev_spectral_enable.exit.i:           ; preds = %if.end7.i.i, %if.then5.i.i
  %retval.0.i55.i = phi i32 [ %26, %if.then5.i.i ], [ %call9.i.i, %if.end7.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i55.i)
  %cmp33.i = icmp slt i32 %retval.0.i55.i, 0
  br i1 %cmp33.i, label %ath10k_wmi_vdev_spectral_enable.exit.i.if.then18_crit_edge, label %if.end35.i

ath10k_wmi_vdev_spectral_enable.exit.i.if.then18_crit_edge: ; preds = %ath10k_wmi_vdev_spectral_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

if.end35.i:                                       ; preds = %ath10k_wmi_vdev_spectral_enable.exit.i
  %31 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i.i, align 4
  %gen_vdev_spectral_enable.i57.i = getelementptr inbounds %struct.wmi_ops, ptr %32, i32 0, i32 39
  %33 = ptrtoint ptr %gen_vdev_spectral_enable.i57.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %gen_vdev_spectral_enable.i57.i, align 4
  %tobool.not.i58.i = icmp eq ptr %34, null
  br i1 %tobool.not.i58.i, label %if.end35.i.if.then18_crit_edge, label %if.end.i61.i

if.end35.i.if.then18_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

if.end.i61.i:                                     ; preds = %if.end35.i
  %call.i59.i = call ptr %34(ptr noundef %1, i32 noundef %19, i32 noundef 1, i32 noundef 1) #8
  %cmp.i.i60.i = icmp ugt ptr %call.i59.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i60.i, label %if.then5.i62.i, label %if.end7.i66.i

if.then5.i62.i:                                   ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %call.i59.i to i32
  br label %ath10k_wmi_vdev_spectral_enable.exit68.i

if.end7.i66.i:                                    ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #10
  %cmd.i63.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 7
  %36 = ptrtoint ptr %cmd.i63.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cmd.i63.i, align 4
  %vdev_spectral_scan_enable_cmdid.i64.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %37, i32 0, i32 88
  %38 = ptrtoint ptr %vdev_spectral_scan_enable_cmdid.i64.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vdev_spectral_scan_enable_cmdid.i64.i, align 4
  %call9.i65.i = call i32 @ath10k_wmi_cmd_send(ptr noundef %1, ptr noundef %call.i59.i, i32 noundef %39) #8
  br label %ath10k_wmi_vdev_spectral_enable.exit68.i

ath10k_wmi_vdev_spectral_enable.exit68.i:         ; preds = %if.end7.i66.i, %if.then5.i62.i
  %retval.0.i67.i = phi i32 [ %35, %if.then5.i62.i ], [ %call9.i65.i, %if.end7.i66.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i67.i)
  %cmp37.i = icmp slt i32 %retval.0.i67.i, 0
  br i1 %cmp37.i, label %ath10k_wmi_vdev_spectral_enable.exit68.i.if.then18_crit_edge, label %ath10k_wmi_vdev_spectral_enable.exit68.i.if.end43.thread86_crit_edge

ath10k_wmi_vdev_spectral_enable.exit68.i.if.end43.thread86_crit_edge: ; preds = %ath10k_wmi_vdev_spectral_enable.exit68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.thread86

ath10k_wmi_vdev_spectral_enable.exit68.i.if.then18_crit_edge: ; preds = %ath10k_wmi_vdev_spectral_enable.exit68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

if.then18:                                        ; preds = %ath10k_wmi_vdev_spectral_enable.exit68.i.if.then18_crit_edge, %if.end35.i.if.then18_crit_edge, %ath10k_wmi_vdev_spectral_enable.exit.i.if.then18_crit_edge, %if.end31.i.if.then18_crit_edge, %ath10k_get_spectral_vdev.exit.i.if.then18_crit_edge, %if.end.i.i76.if.then18_crit_edge
  %retval.0.i.ph = phi i32 [ -95, %if.end31.i.if.then18_crit_edge ], [ -19, %if.end.i.i76.if.then18_crit_edge ], [ %retval.0.i55.i, %ath10k_wmi_vdev_spectral_enable.exit.i.if.then18_crit_edge ], [ -19, %ath10k_get_spectral_vdev.exit.i.if.then18_crit_edge ], [ %retval.0.i67.i, %ath10k_wmi_vdev_spectral_enable.exit68.i.if.then18_crit_edge ], [ -95, %if.end35.i.if.then18_crit_edge ]
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i.ph) #8
  br label %if.end43.thread

if.else21:                                        ; preds = %if.end
  %bcmp71 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) @.str.9, ptr noundef nonnull dereferenceable(10) %buf, i32 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp71)
  %cmp24 = icmp eq i32 %bcmp71, 0
  br i1 %cmp24, label %if.else21.if.end43_crit_edge, label %if.else27

if.else21.if.end43_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.else27:                                        ; preds = %if.else21
  %bcmp72 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @.str.10, ptr noundef nonnull dereferenceable(6) %buf, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp72)
  %cmp30 = icmp eq i32 %bcmp72, 0
  br i1 %cmp30, label %if.else27.if.end43_crit_edge, label %if.else33

if.else27.if.end43_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.else33:                                        ; preds = %if.else27
  %bcmp73 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) @.str.8, ptr noundef nonnull dereferenceable(7) %buf, i32 7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp73)
  %cmp36 = icmp eq i32 %bcmp73, 0
  br i1 %cmp36, label %if.else33.if.end43_crit_edge, label %if.else33.if.end43.thread_crit_edge

if.else33.if.end43.thread_crit_edge:              ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.thread

if.else33.if.end43_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.end43.thread:                                  ; preds = %if.else33.if.end43.thread_crit_edge, %if.then18, %if.then4.if.end43.thread_crit_edge
  %res.0.ph = phi i32 [ -22, %if.else33.if.end43.thread_crit_edge ], [ -22, %if.then4.if.end43.thread_crit_edge ], [ %retval.0.i.ph, %if.then18 ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #8
  br label %40

if.end43.thread86:                                ; preds = %ath10k_wmi_vdev_spectral_enable.exit68.i.if.end43.thread86_crit_edge, %if.end27.i.if.end43.thread86_crit_edge
  call void @mutex_unlock(ptr noundef %conf_mutex) #8
  br label %cleanup

if.end43:                                         ; preds = %if.else33.if.end43_crit_edge, %if.else27.if.end43_crit_edge, %if.else21.if.end43_crit_edge
  %.sink = phi i32 [ 1, %if.else21.if.end43_crit_edge ], [ 2, %if.else27.if.end43_crit_edge ], [ 0, %if.else33.if.end43_crit_edge ]
  %call26 = call fastcc i32 @ath10k_spectral_scan_config(ptr noundef %1, i32 noundef %.sink)
  call void @mutex_unlock(ptr noundef %conf_mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp45 = icmp slt i32 %call26, 0
  br i1 %cmp45, label %if.end43._crit_edge, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43._crit_edge:                              ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %40

40:                                               ; preds = %if.end43._crit_edge, %if.end43.thread
  %res.084 = phi i32 [ %res.0.ph, %if.end43.thread ], [ %call26, %if.end43._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %40, %if.end43.cleanup_crit_edge, %if.end43.thread86, %if.then11.i.i
  %retval.0 = phi i32 [ %res.084, %40 ], [ %count, %if.end43.cleanup_crit_edge ], [ %count, %if.end43.thread86 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_spectral_count(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %config = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 116, i32 2
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %config, align 8
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #8
  %conv = zext i8 %4 to i32
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.17, i32 noundef %conv)
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_spectral_count(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %val = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !66
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  %4 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #12, !srcloc !61
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !62

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #8
  %6 = call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !63
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #8, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !62

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %12)
  %cmp6 = icmp ugt i32 %12, 255
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %conv = trunc i32 %14 to i8
  %config = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 116, i32 2
  %15 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %config, align 8
  call void @mutex_unlock(ptr noundef %conf_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.end8 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_file_spectral_bins(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %fft_size1 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 116, i32 2, i32 1
  %3 = ptrtoint ptr %fft_size1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fft_size1, align 1
  %conv = zext i8 %4 to i32
  %sub = add nsw i32 %conv, -1
  %shl = shl nuw i32 1, %sub
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #8
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.17, i32 noundef %shl)
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_file_spectral_bins(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %val = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !66
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  %4 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %3, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #12, !srcloc !61
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !62

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %3) #8
  %6 = call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !63
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %3) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #8, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !62

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %13 = add i32 %12, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 193, i32 %13)
  %14 = icmp ult i32 %13, 193
  %15 = call i32 @llvm.ctpop.i32(i32 %12) #8, !range !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp1.i = icmp ult i32 %15, 2
  %or.cond43 = and i1 %14, %cmp1.i
  br i1 %or.cond43, label %if.end12, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  %18 = call i32 @llvm.ctlz.i32(i32 %17, i1 true) #8, !range !55
  %fft_size = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 116, i32 2, i32 1
  %19 = trunc i32 %18 to i8
  %.op = sub nuw nsw i8 32, %19
  %conv28 = select i1 %tobool.not.i.i, i8 0, i8 %.op
  %20 = ptrtoint ptr %fft_size to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv28, ptr %fft_size, align 1
  call void @mutex_unlock(ptr noundef %conf_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.end12 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

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
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !41, !43}
!llvm.named.register.sp = !{!45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath10k/spectral.c", i32 509, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath10k/spectral.c", i32 534, i32 47}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath10k/spectral.c", i32 538, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath10k/spectral.c", i32 542, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath10k/spectral.c", i32 546, i32 22}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath10k/spectral.c", i32 232, i32 19}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath10k/spectral.c", i32 266, i32 19}
!14 = !{ptr @rfs_spec_scan_cb, !15, !"rfs_spec_scan_cb", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath10k/spectral.c", i32 500, i32 37}
!16 = !{ptr @fops_spec_scan_ctl, !17, !"fops_spec_scan_ctl", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath10k/spectral.c", i32 356, i32 37}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath10k/spectral.c", i32 277, i32 15}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath10k/spectral.c", i32 287, i32 10}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath10k/spectral.c", i32 290, i32 10}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath10k/spectral.c", i32 293, i32 10}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath10k/spectral.c", i32 318, i32 14}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath10k/spectral.c", i32 327, i32 21}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath10k/spectral.c", i32 332, i32 21}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!34 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!39 = !{ptr @fops_spectral_count, !40, !"fops_spectral_count", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath10k/spectral.c", i32 408, i32 37}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath10k/spectral.c", i32 377, i32 21}
!43 = !{ptr @fops_spectral_bins, !44, !"fops_spectral_bins", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/ath10k/spectral.c", i32 468, i32 37}
!45 = !{!"sp"}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i32 0, i32 33}
!56 = !{i64 834831, i64 834892}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{i64 837563}
!59 = !{i64 837848}
!60 = !{i8 0, i8 2}
!61 = !{i64 2150577296, i64 2150577321}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{i64 3072851}
!64 = !{i64 3073048}
!65 = !{i64 2150558281}
!66 = !{!"auto-init"}
